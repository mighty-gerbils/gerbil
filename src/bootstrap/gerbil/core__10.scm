(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g35415_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35416_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35417_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35420_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35421_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35422_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35423_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35424_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35425_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35426_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35427_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35428_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35429_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35430_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35431_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35432_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35441_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35446_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35447_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35448_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35465_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35466_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35467_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35468_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35471_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args29016_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29016_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29013_)
        (if (gx#identifier? _stx29013_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx29013_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2732928999_
             (lambda (_stx27331_ _match-stx27333_)
               (letrec ((_parse127335_
                         (lambda (_hd27682_)
                           (let* ((_g2770827850_
                                   (lambda (_g2770927846_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2770927846_)))
                                  (_g2770727861_
                                   (lambda (_g2770927854_)
                                     ((lambda ()
                                        (_parse-error27342_ _hd27682_)))))
                                  (_g2770627879_
                                   (lambda (_g2770927865_)
                                     ((lambda (_L27868_)
                                        (if (gx#stx-datum? _L27868_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27868_)
                                                        '()))
                                            (_g2770727861_ _g2770927865_)))
                                      _g2770927865_)))
                                  (_g2770527895_
                                   (lambda (_g2770927883_)
                                     ((lambda (_L27886_)
                                        (if (if (gx#identifier? _L27886_)
                                                (not (gx#ellipsis? _L27886_))
                                                '#f)
                                            (cons 'var: (cons _L27886_ '()))
                                            (_g2770627879_ _g2770927883_)))
                                      _g2770927883_)))
                                  (_g2770427911_
                                   (lambda (_g2770927899_)
                                     ((lambda (_L27902_)
                                        (if (gx#underscore? _L27902_)
                                            (cons 'any: '())
                                            (_g2770527895_ _g2770927899_)))
                                      _g2770927899_)))
                                  (_g2770327943_
                                   (lambda (_g2770927915_)
                                     (if (gx#stx-pair? _g2770927915_)
                                         (let ((_e2783927918_
                                                (gx#syntax-e _g2770927915_)))
                                           (let ((_hd2784027922_
                                                  (##car _e2783927918_))
                                                 (_tl2784127925_
                                                  (##cdr _e2783927918_)))
                                             ((lambda (_L27928_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27928_)
                                                    (_parse127335_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27928_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27682_)
                                                       (let ((_$e27939_
                                                              (gx#stx-source
                                                               _hd27682_)))
                                                         (if _$e27939_
                                                             _$e27939_
                                                             (gx#stx-source
                                                              _stx27331_))))))
                                                    (_g2770427911_
                                                     _g2770927915_)))
                                              _hd2784027922_)))
                                         (_g2770427911_ _g2770927915_))))
                                  (_g2770227997_
                                   (lambda (_g2770927947_)
                                     (if (gx#stx-pair? _g2770927947_)
                                         (let ((_e2782927950_
                                                (gx#syntax-e _g2770927947_)))
                                           (let ((_hd2783027954_
                                                  (##car _e2782927950_))
                                                 (_tl2783127957_
                                                  (##cdr _e2782927950_)))
                                             (if (gx#identifier?
                                                  _hd2783027954_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35415_|
                                                      _hd2783027954_)
                                                     (if (gx#stx-pair?
                                                          _tl2783127957_)
                                                         (let ((_e2783227960_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2783127957_)))
                   (let ((_hd2783327964_ (##car _e2783227960_))
                         (_tl2783427967_ (##cdr _e2783227960_)))
                     (if (gx#stx-pair? _tl2783427967_)
                         (let ((_e2783527970_ (gx#syntax-e _tl2783427967_)))
                           (let ((_hd2783627974_ (##car _e2783527970_))
                                 (_tl2783727977_ (##cdr _e2783527970_)))
                             (if (gx#stx-null? _tl2783727977_)
                                 ((lambda (_L27980_ _L27982_)
                                    (cons 'apply:
                                          (cons _L27982_
                                                (cons (_parse127335_ _L27980_)
                                                      '()))))
                                  _hd2783627974_
                                  _hd2783327964_)
                                 (_g2770327943_ _g2770927947_))))
                         (_g2770327943_ _g2770927947_))))
                 (_g2770327943_ _g2770927947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770327943_
                                                      _g2770927947_))
                                                 (_g2770327943_
                                                  _g2770927947_))))
                                         (_g2770327943_ _g2770927947_))))
                                  (_g2770128037_
                                   (lambda (_g2770928001_)
                                     (if (gx#stx-pair? _g2770928001_)
                                         (let ((_e2782128004_
                                                (gx#syntax-e _g2770928001_)))
                                           (let ((_hd2782228008_
                                                  (##car _e2782128004_))
                                                 (_tl2782328011_
                                                  (##cdr _e2782128004_)))
                                             (if (gx#identifier?
                                                  _hd2782228008_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35416_|
                                                      _hd2782228008_)
                                                     (if (gx#stx-pair?
                                                          _tl2782328011_)
                                                         (let ((_e2782428014_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2782328011_)))
                   (let ((_hd2782528018_ (##car _e2782428014_))
                         (_tl2782628021_ (##cdr _e2782428014_)))
                     (if (gx#stx-null? _tl2782628021_)
                         ((lambda (_L28024_) (_parse-qq27341_ _L28024_))
                          _hd2782528018_)
                         (_g2770227997_ _g2770928001_))))
                 (_g2770227997_ _g2770928001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770227997_
                                                      _g2770928001_))
                                                 (_g2770227997_
                                                  _g2770928001_))))
                                         (_g2770227997_ _g2770928001_))))
                                  (_g2770028077_
                                   (lambda (_g2770928041_)
                                     (if (gx#stx-pair? _g2770928041_)
                                         (let ((_e2781428044_
                                                (gx#syntax-e _g2770928041_)))
                                           (let ((_hd2781528048_
                                                  (##car _e2781428044_))
                                                 (_tl2781628051_
                                                  (##cdr _e2781428044_)))
                                             (if (gx#identifier?
                                                  _hd2781528048_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35417_|
                                                      _hd2781528048_)
                                                     (if (gx#stx-pair?
                                                          _tl2781628051_)
                                                         (let ((_e2781728054_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2781628051_)))
                   (let ((_hd2781828058_ (##car _e2781728054_))
                         (_tl2781928061_ (##cdr _e2781728054_)))
                     (if (gx#stx-null? _tl2781928061_)
                         ((lambda (_L28064_)
                            (cons 'datum: (cons (gx#stx-e _L28064_) '())))
                          _hd2781828058_)
                         (_g2770128037_ _g2770928041_))))
                 (_g2770128037_ _g2770928041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770128037_
                                                      _g2770928041_))
                                                 (_g2770128037_
                                                  _g2770928041_))))
                                         (_g2770128037_ _g2770928041_))))
                                  (_g2769928127_
                                   (lambda (_g2770928081_)
                                     (if (gx#stx-pair? _g2770928081_)
                                         (let ((_e2780728084_
                                                (gx#syntax-e _g2770928081_)))
                                           (let ((_hd2780828088_
                                                  (##car _e2780728084_))
                                                 (_tl2780928091_
                                                  (##cdr _e2780728084_)))
                                             (if (gx#stx-pair? _tl2780928091_)
                                                 (let ((_e2781028094_
                                                        (gx#syntax-e
                                                         _tl2780928091_)))
                                                   (let ((_hd2781128098_
                                                          (##car _e2781028094_))
                                                         (_tl2781228101_
                                                          (##cdr _e2781028094_)))
                                                     (if (gx#stx-null?
                                                          _tl2781228101_)
                                                         ((lambda (_L28104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28106_)
                    (if (if (gx#identifier? _L28106_)
                            (let ((_$e28119_
                                   (gx#free-identifier=?
                                    _L28106_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e28119_
                                  _$e28119_
                                  (let ((_$e28123_
                                         (gx#free-identifier=?
                                          _L28106_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e28123_
                                        _$e28123_
                                        (gx#free-identifier=?
                                         _L28106_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L28106_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L28104_ '()))))
                                    '()))
                        (_g2770028077_ _g2770928081_)))
                  _hd2781128098_
                  _hd2780828088_)
                 (_g2770028077_ _g2770928081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2770028077_
                                                  _g2770928081_))))
                                         (_g2770028077_ _g2770928081_))))
                                  (_g2769828157_
                                   (lambda (_g2770928131_)
                                     (if (gx#stx-pair? _g2770928131_)
                                         (let ((_e2780228134_
                                                (gx#syntax-e _g2770928131_)))
                                           (let ((_hd2780328138_
                                                  (##car _e2780228134_))
                                                 (_tl2780428141_
                                                  (##cdr _e2780228134_)))
                                             ((lambda (_L28144_ _L28146_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L28146_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28146_)
                        (cons (_parse-class-body27340_ _L28144_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2769928127_
                                                     _g2770928131_)))
                                              _tl2780428141_
                                              _hd2780328138_)))
                                         (_g2769928127_ _g2770928131_))))
                                  (_g2769728187_
                                   (lambda (_g2770928161_)
                                     (if (gx#stx-pair? _g2770928161_)
                                         (let ((_e2779728164_
                                                (gx#syntax-e _g2770928161_)))
                                           (let ((_hd2779828168_
                                                  (##car _e2779728164_))
                                                 (_tl2779928171_
                                                  (##cdr _e2779728164_)))
                                             ((lambda (_L28174_ _L28176_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L28176_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28176_)
                        (cons (_parse-vector27338_ _L28174_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2769828157_
                                                     _g2770928161_)))
                                              _tl2779928171_
                                              _hd2779828168_)))
                                         (_g2769828157_ _g2770928161_))))
                                  (_g2769628250_
                                   (lambda (_g2770928191_)
                                     (if (gx#stx-vector? _g2770928191_)
                                         (let ((_e2778528194_
                                                (vector->list
                                                 (gx#syntax-e _g2770928191_))))
                                           (if (gx#stx-pair/null?
                                                _e2778528194_)
                                               (if (fx>= (gx#stx-length
                                                          _e2778528194_)
                                                         '0)
                                                   (let ((_g35418_
                                                          (gx#syntax-split-splice
                                                           _e2778528194_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35419_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35418_)
                          (##vector-length _g35418_)
                          1)))
                 (if (not (##fx= _g35419_ 2))
                     (error "Context expects 2 values" _g35419_)))
               (let ((_target2778628198_ (##vector-ref _g35418_ 0))
                     (_tl2778828201_ (##vector-ref _g35418_ 1)))
                 (if (gx#stx-null? _tl2778828201_)
                     (letrec ((_loop2778928204_
                               (lambda (_hd2778728208_ _body2779328211_)
                                 (if (gx#stx-pair? _hd2778728208_)
                                     (let ((_e2779028214_
                                            (gx#syntax-e _hd2778728208_)))
                                       (let ((_lp-hd2779128218_
                                              (##car _e2779028214_))
                                             (_lp-tl2779228221_
                                              (##cdr _e2779028214_)))
                                         (_loop2778928204_
                                          _lp-tl2779228221_
                                          (cons _lp-hd2779128218_
                                                _body2779328211_))))
                                     (let ((_body2779428224_
                                            (reverse _body2779328211_)))
                                       ((lambda (_L28228_)
                                          (cons 'vector:
                                                (cons (_parse-vector27338_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2824128244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2824228247_)
                          (cons _g2824128244_ _g2824228247_))
                        '()
                        _L28228_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2779428224_))))))
                       (_loop2778928204_ _target2778628198_ '()))
                     (_g2769728187_ _g2770928191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2769728187_
                                                    _g2770928191_))
                                               (_g2769728187_ _g2770928191_)))
                                         (_g2769728187_ _g2770928191_))))
                                  (_g2769528278_
                                   (lambda (_g2770928254_)
                                     (if (gx#stx-pair? _g2770928254_)
                                         (let ((_e2778128257_
                                                (gx#syntax-e _g2770928254_)))
                                           (let ((_hd2778228261_
                                                  (##car _e2778128257_))
                                                 (_tl2778328264_
                                                  (##cdr _e2778128257_)))
                                             (if (gx#identifier?
                                                  _hd2778228261_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35420_|
                                                      _hd2778228261_)
                                                     ((lambda (_L28267_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector27338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28267_)
                            '())))
              _tl2778328264_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769628250_
                                                      _g2770928254_))
                                                 (_g2769628250_
                                                  _g2770928254_))))
                                         (_g2769628250_ _g2770928254_))))
                                  (_g2769428306_
                                   (lambda (_g2770928282_)
                                     (if (gx#stx-pair? _g2770928282_)
                                         (let ((_e2777728285_
                                                (gx#syntax-e _g2770928282_)))
                                           (let ((_hd2777828289_
                                                  (##car _e2777728285_))
                                                 (_tl2777928292_
                                                  (##cdr _e2777728285_)))
                                             (if (gx#identifier?
                                                  _hd2777828289_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35421_|
                                                      _hd2777828289_)
                                                     ((lambda (_L28295_)
                                                        (cons 'values:
                                                              (cons (_parse-vector27338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28295_)
                            '())))
              _tl2777928292_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769528278_
                                                      _g2770928282_))
                                                 (_g2769528278_
                                                  _g2770928282_))))
                                         (_g2769528278_ _g2770928282_))))
                                  (_g2769328346_
                                   (lambda (_g2770928310_)
                                     (if (gx#stx-pair? _g2770928310_)
                                         (let ((_e2777028313_
                                                (gx#syntax-e _g2770928310_)))
                                           (let ((_hd2777128317_
                                                  (##car _e2777028313_))
                                                 (_tl2777228320_
                                                  (##cdr _e2777028313_)))
                                             (if (gx#identifier?
                                                  _hd2777128317_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35422_|
                                                      _hd2777128317_)
                                                     (if (gx#stx-pair?
                                                          _tl2777228320_)
                                                         (let ((_e2777328323_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2777228320_)))
                   (let ((_hd2777428327_ (##car _e2777328323_))
                         (_tl2777528330_ (##cdr _e2777328323_)))
                     (if (gx#stx-null? _tl2777528330_)
                         ((lambda (_L28333_) (_parse127335_ _L28333_))
                          _hd2777428327_)
                         (_g2769428306_ _g2770928310_))))
                 (_g2769428306_ _g2770928310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769428306_
                                                      _g2770928310_))
                                                 (_g2769428306_
                                                  _g2770928310_))))
                                         (_g2769428306_ _g2770928310_))))
                                  (_g2769228367_
                                   (lambda (_g2770928350_)
                                     (if (gx#stx-box? _g2770928350_)
                                         (let ((_e2776828353_
                                                (unbox (gx#syntax-e
                                                        _g2770928350_))))
                                           ((lambda (_L28357_)
                                              (cons 'box:
                                                    (cons (_parse127335_
                                                           _L28357_)
                                                          '())))
                                            _e2776828353_))
                                         (_g2769328346_ _g2770928350_))))
                                  (_g2769128407_
                                   (lambda (_g2770928371_)
                                     (if (gx#stx-pair? _g2770928371_)
                                         (let ((_e2776128374_
                                                (gx#syntax-e _g2770928371_)))
                                           (let ((_hd2776228378_
                                                  (##car _e2776128374_))
                                                 (_tl2776328381_
                                                  (##cdr _e2776128374_)))
                                             (if (gx#identifier?
                                                  _hd2776228378_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35423_|
                                                      _hd2776228378_)
                                                     (if (gx#stx-pair?
                                                          _tl2776328381_)
                                                         (let ((_e2776428384_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2776328381_)))
                   (let ((_hd2776528388_ (##car _e2776428384_))
                         (_tl2776628391_ (##cdr _e2776428384_)))
                     (if (gx#stx-null? _tl2776628391_)
                         ((lambda (_L28394_)
                            (cons 'box: (cons (_parse127335_ _L28394_) '())))
                          _hd2776528388_)
                         (_g2769228367_ _g2770928371_))))
                 (_g2769228367_ _g2770928371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769228367_
                                                      _g2770928371_))
                                                 (_g2769228367_
                                                  _g2770928371_))))
                                         (_g2769228367_ _g2770928371_))))
                                  (_g2769028435_
                                   (lambda (_g2770928411_)
                                     (if (gx#stx-pair? _g2770928411_)
                                         (let ((_e2775728414_
                                                (gx#syntax-e _g2770928411_)))
                                           (let ((_hd2775828418_
                                                  (##car _e2775728414_))
                                                 (_tl2775928421_
                                                  (##cdr _e2775728414_)))
                                             (if (gx#identifier?
                                                  _hd2775828418_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35424_|
                                                      _hd2775828418_)
                                                     ((lambda (_L28424_)
                                                        (_parse-list27337_
                                                         _L28424_))
                                                      _tl2775928421_)
                                                     (_g2769128407_
                                                      _g2770928411_))
                                                 (_g2769128407_
                                                  _g2770928411_))))
                                         (_g2769128407_ _g2770928411_))))
                                  (_g2768928491_
                                   (lambda (_g2770928439_)
                                     (if (gx#stx-pair? _g2770928439_)
                                         (let ((_e2774728442_
                                                (gx#syntax-e _g2770928439_)))
                                           (let ((_hd2774828446_
                                                  (##car _e2774728442_))
                                                 (_tl2774928449_
                                                  (##cdr _e2774728442_)))
                                             (if (gx#identifier?
                                                  _hd2774828446_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35425_|
                                                      _hd2774828446_)
                                                     (if (gx#stx-pair?
                                                          _tl2774928449_)
                                                         (let ((_e2775028452_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2774928449_)))
                   (let ((_hd2775128456_ (##car _e2775028452_))
                         (_tl2775228459_ (##cdr _e2775028452_)))
                     (if (gx#stx-pair? _tl2775228459_)
                         (let ((_e2775328462_ (gx#syntax-e _tl2775228459_)))
                           (let ((_hd2775428466_ (##car _e2775328462_))
                                 (_tl2775528469_ (##cdr _e2775328462_)))
                             ((lambda (_L28472_ _L28474_ _L28475_)
                                (if (gx#stx-null? _L28472_)
                                    (cons 'cons:
                                          (cons (_parse127335_ _L28475_)
                                                (cons (_parse127335_ _L28474_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse127335_ _L28475_)
                                                (cons (_parse127335_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L28474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28472_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2775528469_
                              _hd2775428466_
                              _hd2775128456_)))
                         (_g2769028435_ _g2770928439_))))
                 (_g2769028435_ _g2770928439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769028435_
                                                      _g2770928439_))
                                                 (_g2769028435_
                                                  _g2770928439_))))
                                         (_g2769028435_ _g2770928439_))))
                                  (_g2768828545_
                                   (lambda (_g2770928495_)
                                     (if (gx#stx-pair? _g2770928495_)
                                         (let ((_e2773528498_
                                                (gx#syntax-e _g2770928495_)))
                                           (let ((_hd2773628502_
                                                  (##car _e2773528498_))
                                                 (_tl2773728505_
                                                  (##cdr _e2773528498_)))
                                             (if (gx#identifier?
                                                  _hd2773628502_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35426_|
                                                      _hd2773628502_)
                                                     (if (gx#stx-pair?
                                                          _tl2773728505_)
                                                         (let ((_e2773828508_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2773728505_)))
                   (let ((_hd2773928512_ (##car _e2773828508_))
                         (_tl2774028515_ (##cdr _e2773828508_)))
                     (if (gx#stx-pair? _tl2774028515_)
                         (let ((_e2774128518_ (gx#syntax-e _tl2774028515_)))
                           (let ((_hd2774228522_ (##car _e2774128518_))
                                 (_tl2774328525_ (##cdr _e2774128518_)))
                             (if (gx#stx-null? _tl2774328525_)
                                 ((lambda (_L28528_ _L28530_)
                                    (cons 'cons:
                                          (cons (_parse127335_ _L28530_)
                                                (cons (_parse127335_ _L28528_)
                                                      '()))))
                                  _hd2774228522_
                                  _hd2773928512_)
                                 (_g2768928491_ _g2770928495_))))
                         (_g2768928491_ _g2770928495_))))
                 (_g2768928491_ _g2770928495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768928491_
                                                      _g2770928495_))
                                                 (_g2768928491_
                                                  _g2770928495_))))
                                         (_g2768928491_ _g2770928495_))))
                                  (_g2768728585_
                                   (lambda (_g2770928549_)
                                     (if (gx#stx-pair? _g2770928549_)
                                         (let ((_e2772728552_
                                                (gx#syntax-e _g2770928549_)))
                                           (let ((_hd2772828556_
                                                  (##car _e2772728552_))
                                                 (_tl2772928559_
                                                  (##cdr _e2772728552_)))
                                             (if (gx#identifier?
                                                  _hd2772828556_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35427_|
                                                      _hd2772828556_)
                                                     (if (gx#stx-pair?
                                                          _tl2772928559_)
                                                         (let ((_e2773028562_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2772928559_)))
                   (let ((_hd2773128566_ (##car _e2773028562_))
                         (_tl2773228569_ (##cdr _e2773028562_)))
                     (if (gx#stx-null? _tl2773228569_)
                         ((lambda (_L28572_)
                            (cons 'not: (cons (_parse127335_ _L28572_) '())))
                          _hd2773128566_)
                         (_g2768828545_ _g2770928549_))))
                 (_g2768828545_ _g2770928549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768828545_
                                                      _g2770928549_))
                                                 (_g2768828545_
                                                  _g2770928549_))))
                                         (_g2768828545_ _g2770928549_))))
                                  (_g2768628670_
                                   (lambda (_g2770928589_)
                                     (if (gx#stx-pair? _g2770928589_)
                                         (let ((_e2772328592_
                                                (gx#syntax-e _g2770928589_)))
                                           (let ((_hd2772428596_
                                                  (##car _e2772328592_))
                                                 (_tl2772528599_
                                                  (##cdr _e2772328592_)))
                                             (if (gx#identifier?
                                                  _hd2772428596_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35428_|
                                                      _hd2772428596_)
                                                     ((lambda (_L28602_)
                                                        (if (gx#stx-list?
                                                             _L28602_)
                                                            (let* ((_g2861428625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2861528621_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2861528621_)))
                           (_g2861328636_
                            (lambda (_g2861528629_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse127335_ _L28602_))))))
                           (_g2861228666_
                            (lambda (_g2861528640_)
                              (if (gx#stx-pair? _g2861528640_)
                                  (let ((_e2861728643_
                                         (gx#syntax-e _g2861528640_)))
                                    (let ((_hd2861828647_
                                           (##car _e2861728643_))
                                          (_tl2861928650_
                                           (##cdr _e2861728643_)))
                                      (if (gx#stx-null? _tl2861928650_)
                                          ((lambda (_L28653_)
                                             (_parse127335_ _L28653_))
                                           _hd2861828647_)
                                          (_g2861328636_ _g2861528640_))))
                                  (_g2861328636_ _g2861528640_)))))
                      (_g2861228666_ _L28602_))
                    (_g2768728585_ _g2770928589_)))
              _tl2772528599_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768728585_
                                                      _g2770928589_))
                                                 (_g2768728585_
                                                  _g2770928589_))))
                                         (_g2768728585_ _g2770928589_))))
                                  (_g2768528755_
                                   (lambda (_g2770928674_)
                                     (if (gx#stx-pair? _g2770928674_)
                                         (let ((_e2771928677_
                                                (gx#syntax-e _g2770928674_)))
                                           (let ((_hd2772028681_
                                                  (##car _e2771928677_))
                                                 (_tl2772128684_
                                                  (##cdr _e2771928677_)))
                                             (if (gx#identifier?
                                                  _hd2772028681_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35429_|
                                                      _hd2772028681_)
                                                     ((lambda (_L28687_)
                                                        (if (gx#stx-list?
                                                             _L28687_)
                                                            (let* ((_g2869928710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2870028706_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2870028706_)))
                           (_g2869828721_
                            (lambda (_g2870028714_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse127335_ _L28687_))))))
                           (_g2869728751_
                            (lambda (_g2870028725_)
                              (if (gx#stx-pair? _g2870028725_)
                                  (let ((_e2870228728_
                                         (gx#syntax-e _g2870028725_)))
                                    (let ((_hd2870328732_
                                           (##car _e2870228728_))
                                          (_tl2870428735_
                                           (##cdr _e2870228728_)))
                                      (if (gx#stx-null? _tl2870428735_)
                                          ((lambda (_L28738_)
                                             (_parse127335_ _L28738_))
                                           _hd2870328732_)
                                          (_g2869828721_ _g2870028725_))))
                                  (_g2869828721_ _g2870028725_)))))
                      (_g2869728751_ _L28687_))
                    (_g2768628670_ _g2770928674_)))
              _tl2772128684_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768628670_
                                                      _g2770928674_))
                                                 (_g2768628670_
                                                  _g2770928674_))))
                                         (_g2768628670_ _g2770928674_))))
                                  (_g2768428995_
                                   (lambda (_g2770928759_)
                                     (if (gx#stx-pair? _g2770928759_)
                                         (let ((_e2771228762_
                                                (gx#syntax-e _g2770928759_)))
                                           (let ((_hd2771328766_
                                                  (##car _e2771228762_))
                                                 (_tl2771428769_
                                                  (##cdr _e2771228762_)))
                                             (if (gx#identifier?
                                                  _hd2771328766_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35430_|
                                                      _hd2771328766_)
                                                     (if (gx#stx-pair?
                                                          _tl2771428769_)
                                                         (let ((_e2771528772_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2771428769_)))
                   (let ((_hd2771628776_ (##car _e2771528772_))
                         (_tl2771728779_ (##cdr _e2771528772_)))
                     ((lambda (_L28782_ _L28784_)
                        (let* ((_g2880128833_
                                (lambda (_g2880228829_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2880228829_)))
                               (_g2880028844_
                                (lambda (_g2880228837_)
                                  ((lambda ()
                                     (_parse-error27342_ _hd27682_)))))
                               (_g2879928912_
                                (lambda (_g2880228848_)
                                  (if (gx#stx-pair? _g2880228848_)
                                      (let ((_e2881628851_
                                             (gx#syntax-e _g2880228848_)))
                                        (let ((_hd2881728855_
                                               (##car _e2881628851_))
                                              (_tl2881828858_
                                               (##cdr _e2881628851_)))
                                          (if (gx#stx-datum? _hd2881728855_)
                                              (if (equal? (gx#stx-e
                                                           _hd2881728855_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2881828858_)
                                                      (let ((_e2881928861_
                                                             (gx#syntax-e
                                                              _tl2881828858_)))
                                                        (let ((_hd2882028865_
                                                               (##car _e2881928861_))
                                                              (_tl2882128868_
                                                               (##cdr _e2881928861_)))
                                                          (if (gx#stx-pair?
                                                               _tl2882128868_)
                                                              (let ((_e2882228871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2882128868_)))
                        (let ((_hd2882328875_ (##car _e2882228871_))
                              (_tl2882428878_ (##cdr _e2882228871_)))
                          (if (gx#identifier? _hd2882328875_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35431_|
                                   _hd2882328875_)
                                  (if (gx#stx-pair? _tl2882428878_)
                                      (let ((_e2882528881_
                                             (gx#syntax-e _tl2882428878_)))
                                        (let ((_hd2882628885_
                                               (##car _e2882528881_))
                                              (_tl2882728888_
                                               (##cdr _e2882528881_)))
                                          (if (gx#stx-null? _tl2882728888_)
                                              ((lambda (_L28891_ _L28893_)
                                                 (cons '?:
                                                       (cons _L28784_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28893_
                                 (cons '=>:
                                       (cons (_parse127335_ _L28891_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2882628885_
                                               _hd2882028865_)
                                              (_g2880028844_ _g2880228848_))))
                                      (_g2880028844_ _g2880228848_))
                                  (_g2880028844_ _g2880228848_))
                              (_g2880028844_ _g2880228848_))))
                      (_g2880028844_ _g2880228848_))))
              (_g2880028844_ _g2880228848_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2880028844_
                                                   _g2880228848_))
                                              (_g2880028844_ _g2880228848_))))
                                      (_g2880028844_ _g2880228848_))))
                               (_g2879828952_
                                (lambda (_g2880228916_)
                                  (if (gx#stx-pair? _g2880228916_)
                                      (let ((_e2880828919_
                                             (gx#syntax-e _g2880228916_)))
                                        (let ((_hd2880928923_
                                               (##car _e2880828919_))
                                              (_tl2881028926_
                                               (##cdr _e2880828919_)))
                                          (if (gx#identifier? _hd2880928923_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35432_|
                                                   _hd2880928923_)
                                                  (if (gx#stx-pair?
                                                       _tl2881028926_)
                                                      (let ((_e2881128929_
                                                             (gx#syntax-e
                                                              _tl2881028926_)))
                                                        (let ((_hd2881228933_
                                                               (##car _e2881128929_))
                                                              (_tl2881328936_
                                                               (##cdr _e2881128929_)))
                                                          (if (gx#stx-null?
                                                               _tl2881328936_)
                                                              ((lambda (_L28939_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28784_
                                     (cons '=>:
                                           (cons (_parse127335_ _L28939_)
                                                 '())))))
                       _hd2881228933_)
                      (_g2879928912_ _g2880228916_))))
              (_g2879928912_ _g2880228916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2879928912_
                                                   _g2880228916_))
                                              (_g2879928912_ _g2880228916_))))
                                      (_g2879928912_ _g2880228916_))))
                               (_g2879728980_
                                (lambda (_g2880228956_)
                                  (if (gx#stx-pair? _g2880228956_)
                                      (let ((_e2880428959_
                                             (gx#syntax-e _g2880228956_)))
                                        (let ((_hd2880528963_
                                               (##car _e2880428959_))
                                              (_tl2880628966_
                                               (##cdr _e2880428959_)))
                                          (if (gx#stx-null? _tl2880628966_)
                                              ((lambda (_L28969_)
                                                 (cons '?:
                                                       (cons _L28784_
                                                             (cons (_parse127335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28969_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2880528963_)
                                              (_g2879828952_ _g2880228956_))))
                                      (_g2879828952_ _g2880228956_))))
                               (_g2879628991_
                                (lambda (_g2880228984_)
                                  (if (gx#stx-null? _g2880228984_)
                                      ((lambda ()
                                         (cons '?: (cons _L28784_ '()))))
                                      (_g2879728980_ _g2880228984_)))))
                          (_g2879628991_ _L28782_)))
                      _tl2771728779_
                      _hd2771628776_)))
                 (_g2768528755_ _g2770928759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768528755_
                                                      _g2770928759_))
                                                 (_g2768528755_
                                                  _g2770928759_))))
                                         (_g2768528755_ _g2770928759_)))))
                             (_g2768428995_ _hd27682_))))
                        (_parse-list27337_
                         (lambda (_body27517_)
                           (let* ((_g2752327551_
                                   (lambda (_g2752427547_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2752427547_)))
                                  (_g2752227562_
                                   (lambda (_g2752427555_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body27517_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body27517_))
                                                (_parse127335_ _body27517_)
                                                (_parse-error27342_
                                                 _body27517_)))))))
                                  (_g2752127594_
                                   (lambda (_g2752427566_)
                                     (if (gx#stx-pair? _g2752427566_)
                                         (let ((_e2754327569_
                                                (gx#syntax-e _g2752427566_)))
                                           (let ((_hd2754427573_
                                                  (##car _e2754327569_))
                                                 (_tl2754527576_
                                                  (##cdr _e2754327569_)))
                                             ((lambda (_L27579_ _L27581_)
                                                (if (not (gx#ellipsis?
                                                          _L27581_))
                                                    (cons 'cons:
                                                          (cons (_parse127335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27581_)
                        (cons (_parse-list27337_ _L27579_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2752227562_
                                                     _g2752427566_)))
                                              _tl2754527576_
                                              _hd2754427573_)))
                                         (_g2752227562_ _g2752427566_))))
                                  (_g2752027638_
                                   (lambda (_g2752427598_)
                                     (if (gx#stx-pair? _g2752427598_)
                                         (let ((_e2753527601_
                                                (gx#syntax-e _g2752427598_)))
                                           (let ((_hd2753627605_
                                                  (##car _e2753527601_))
                                                 (_tl2753727608_
                                                  (##cdr _e2753527601_)))
                                             (if (gx#stx-pair? _tl2753727608_)
                                                 (let ((_e2753827611_
                                                        (gx#syntax-e
                                                         _tl2753727608_)))
                                                   (let ((_hd2753927615_
                                                          (##car _e2753827611_))
                                                         (_tl2754027618_
                                                          (##cdr _e2753827611_)))
                                                     ((lambda (_L27621_
                                                               _L27623_
                                                               _L27624_)
                                                        (if (gx#ellipsis?
                                                             _L27623_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse127335_ _L27624_)
                                (cons (_parse-list27337_ _L27621_) '())))
                    (_g2752127594_ _g2752427598_)))
              _tl2754027618_
              _hd2753927615_
              _hd2753627605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2752127594_
                                                  _g2752427598_))))
                                         (_g2752127594_ _g2752427598_))))
                                  (_g2751927678_
                                   (lambda (_g2752427642_)
                                     (if (gx#stx-pair? _g2752427642_)
                                         (let ((_e2752627645_
                                                (gx#syntax-e _g2752427642_)))
                                           (let ((_hd2752727649_
                                                  (##car _e2752627645_))
                                                 (_tl2752827652_
                                                  (##cdr _e2752627645_)))
                                             (if (gx#stx-datum? _hd2752727649_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2752727649_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2752827652_)
                                                         (let ((_e2752927655_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2752827652_)))
                   (let ((_hd2753027659_ (##car _e2752927655_))
                         (_tl2753127662_ (##cdr _e2752927655_)))
                     (if (gx#stx-null? _tl2753127662_)
                         ((lambda (_L27665_) (_parse127335_ _L27665_))
                          _hd2753027659_)
                         (_g2752027638_ _g2752427642_))))
                 (_g2752027638_ _g2752427642_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2752027638_
                                                      _g2752427642_))
                                                 (_g2752027638_
                                                  _g2752427642_))))
                                         (_g2752027638_ _g2752427642_)))))
                             (_g2751927678_ _body27517_))))
                        (_parse-vector27338_
                         (lambda (_body27514_)
                           (if (_simple-vector?27339_ _body27514_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse127335_
                                            _body27514_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list27337_ _body27514_)
                                           '())))))
                        (_simple-vector?27339_
                         (lambda (_body27451_)
                           (let* ((_g2745527467_
                                   (lambda (_g2745627463_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2745627463_)))
                                  (_g2745427478_
                                   (lambda (_g2745627471_)
                                     ((lambda () (gx#stx-null? _body27451_)))))
                                  (_g2745327510_
                                   (lambda (_g2745627482_)
                                     (if (gx#stx-pair? _g2745627482_)
                                         (let ((_e2745927485_
                                                (gx#syntax-e _g2745627482_)))
                                           (let ((_hd2746027489_
                                                  (##car _e2745927485_))
                                                 (_tl2746127492_
                                                  (##cdr _e2745927485_)))
                                             ((lambda (_L27495_ _L27497_)
                                                (if (not (gx#ellipsis?
                                                          _L27497_))
                                                    (_simple-vector?27339_
                                                     _L27495_)
                                                    '#f))
                                              _tl2746127492_
                                              _hd2746027489_)))
                                         (_g2745427478_ _g2745627482_)))))
                             (_g2745327510_ _body27451_))))
                        (_parse-class-body27340_
                         (lambda (_body27360_)
                           (let _recur27363_ ((_rest27366_ _body27360_))
                             (let* ((_g2737027386_
                                     (lambda (_g2737127382_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2737127382_)))
                                    (_g2736927397_
                                     (lambda (_g2737127390_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest27366_)
                                              '()
                                              (_parse-error27342_
                                               _rest27366_))))))
                                    (_g2736827447_
                                     (lambda (_g2737127401_)
                                       (if (gx#stx-pair? _g2737127401_)
                                           (let ((_e2737527404_
                                                  (gx#syntax-e _g2737127401_)))
                                             (let ((_hd2737627408_
                                                    (##car _e2737527404_))
                                                   (_tl2737727411_
                                                    (##cdr _e2737527404_)))
                                               (if (gx#stx-pair?
                                                    _tl2737727411_)
                                                   (let ((_e2737827414_
                                                          (gx#syntax-e
                                                           _tl2737727411_)))
                                                     (let ((_hd2737927418_
                                                            (##car _e2737827414_))
                                                           (_tl2738027421_
                                                            (##cdr _e2737827414_)))
                                                       ((lambda (_L27424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27426_
                         _L27427_)
                  (if (gx#stx-keyword? _L27427_)
                      (cons* _L27427_
                             (_parse127335_ _L27426_)
                             (_recur27363_ _L27424_))
                      (_g2736927397_ _g2737127401_)))
                _tl2738027421_
                _hd2737927418_
                _hd2737627408_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2736927397_
                                                    _g2737127401_))))
                                           (_g2736927397_ _g2737127401_)))))
                               (_g2736827447_ _rest27366_)))))
                        (_parse-qq27341_
                         (lambda (_hd27347_)
                           (let ((_g2734927356_
                                  (lambda (_g2735027352_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2735027352_))))
                             (_g2734927356_ _hd27347_))))
                        (_parse-error27342_
                         (lambda (_hd27344_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx27333_
                                      (cons _match-stx27333_
                                            (cons _stx27331_
                                                  (cons _hd27344_ '())))
                                      (cons _stx27331_
                                            (cons _hd27344_ '())))))))
                 (_parse127335_ _stx27331_)))))
        (lambda _g35434_
          (let ((_g35433_ (length _g35434_)))
            (cond ((##fx= _g35433_ 1)
                   (apply (lambda (_stx29003_)
                            (let ((_match-stx29006_ '#f))
                              (_opt-lambda2732928999_
                               _stx29003_
                               _match-stx29006_)))
                          _g35434_))
                  ((##fx= _g35433_ 2) (apply _opt-lambda2732928999_ _g35434_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g35434_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx27315_)
        (call-with-escape
         (lambda (_E27319_)
           (with-exception-handler
            (let ((_E!27322_ (current-exception-handler)))
              (lambda (_e27325_)
                (if (gx#syntax-error? _e27325_)
                    (_E27319_ '#f)
                    (_E!27322_ _e27325_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx27315_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26104_)
        (letrec ((_loop26107_
                  (lambda (_ptree26382_ _vars26384_ _K26385_)
                    (let* ((_g2639826499_
                            (lambda (_g2639926495_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2639926495_)))
                           (_g2639726510_
                            (lambda (_g2639926503_)
                              ((lambda () (_K26385_ _vars26384_)))))
                           (_g2639626557_
                            (lambda (_g2639926514_)
                              (if (gx#stx-pair? _g2639926514_)
                                  (let ((_e2648826517_
                                         (gx#syntax-e _g2639926514_)))
                                    (let ((_hd2648926521_
                                           (##car _e2648826517_))
                                          (_tl2649026524_
                                           (##cdr _e2648826517_)))
                                      (if (gx#stx-datum? _hd2648926521_)
                                          (if (equal? (gx#stx-e _hd2648926521_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2649026524_)
                                                  (let ((_e2649126527_
                                                         (gx#syntax-e
                                                          _tl2649026524_)))
                                                    (let ((_hd2649226531_
                                                           (##car _e2649126527_))
                                                          (_tl2649326534_
                                                           (##cdr _e2649126527_)))
                                                      (if (gx#stx-null?
                                                           _tl2649326534_)
                                                          ((lambda (_L26537_)
                                                             (if (find (lambda (_g2655126553_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2655126553_
                                  _L26537_))
                               _vars26384_)
                         (_K26385_ _vars26384_)
                         (_K26385_ (cons _L26537_ _vars26384_))))
                   _hd2649226531_)
                  (_g2639726510_ _g2639926514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639726510_
                                                   _g2639926514_))
                                              (_g2639726510_ _g2639926514_))
                                          (_g2639726510_ _g2639926514_))))
                                  (_g2639726510_ _g2639926514_))))
                           (_g2639526611_
                            (lambda (_g2639926561_)
                              (if (gx#stx-pair? _g2639926561_)
                                  (let ((_e2647826564_
                                         (gx#syntax-e _g2639926561_)))
                                    (let ((_hd2647926568_
                                           (##car _e2647826564_))
                                          (_tl2648026571_
                                           (##cdr _e2647826564_)))
                                      (if (gx#stx-datum? _hd2647926568_)
                                          (if (equal? (gx#stx-e _hd2647926568_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2648026571_)
                                                  (let ((_e2648126574_
                                                         (gx#syntax-e
                                                          _tl2648026571_)))
                                                    (let ((_hd2648226578_
                                                           (##car _e2648126574_))
                                                          (_tl2648326581_
                                                           (##cdr _e2648126574_)))
                                                      (if (gx#stx-pair?
                                                           _tl2648326581_)
                                                          (let ((_e2648426584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2648326581_)))
                    (let ((_hd2648526588_ (##car _e2648426584_))
                          (_tl2648626591_ (##cdr _e2648426584_)))
                      (if (gx#stx-null? _tl2648626591_)
                          ((lambda (_L26594_ _L26596_)
                             (_loop26107_ _L26594_ _vars26384_ _K26385_))
                           _hd2648526588_
                           _hd2648226578_)
                          (_g2639626557_ _g2639926561_))))
                  (_g2639626557_ _g2639926561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639626557_
                                                   _g2639926561_))
                                              (_g2639626557_ _g2639926561_))
                                          (_g2639626557_ _g2639926561_))))
                                  (_g2639626557_ _g2639926561_))))
                           (_g2639426663_
                            (lambda (_g2639926615_)
                              (if (gx#stx-pair? _g2639926615_)
                                  (let ((_e2646726618_
                                         (gx#syntax-e _g2639926615_)))
                                    (let ((_hd2646826622_
                                           (##car _e2646726618_))
                                          (_tl2646926625_
                                           (##cdr _e2646726618_)))
                                      (if (gx#stx-datum? _hd2646826622_)
                                          (if (equal? (gx#stx-e _hd2646826622_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2646926625_)
                                                  (let ((_e2647026628_
                                                         (gx#syntax-e
                                                          _tl2646926625_)))
                                                    (let ((_hd2647126632_
                                                           (##car _e2647026628_))
                                                          (_tl2647226635_
                                                           (##cdr _e2647026628_)))
                                                      (if (gx#stx-pair?
                                                           _tl2647226635_)
                                                          (let ((_e2647326638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2647226635_)))
                    (let ((_hd2647426642_ (##car _e2647326638_))
                          (_tl2647526645_ (##cdr _e2647326638_)))
                      (if (gx#stx-null? _tl2647526645_)
                          ((lambda (_L26648_)
                             (_loop-class-list26111_
                              _L26648_
                              _vars26384_
                              _K26385_))
                           _hd2647426642_)
                          (_g2639526611_ _g2639926615_))))
                  (_g2639526611_ _g2639926615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639526611_
                                                   _g2639926615_))
                                              (_g2639526611_ _g2639926615_))
                                          (_g2639526611_ _g2639926615_))))
                                  (_g2639526611_ _g2639926615_))))
                           (_g2639326715_
                            (lambda (_g2639926667_)
                              (if (gx#stx-pair? _g2639926667_)
                                  (let ((_e2645726670_
                                         (gx#syntax-e _g2639926667_)))
                                    (let ((_hd2645826674_
                                           (##car _e2645726670_))
                                          (_tl2645926677_
                                           (##cdr _e2645726670_)))
                                      (if (gx#stx-datum? _hd2645826674_)
                                          (if (equal? (gx#stx-e _hd2645826674_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2645926677_)
                                                  (let ((_e2646026680_
                                                         (gx#syntax-e
                                                          _tl2645926677_)))
                                                    (let ((_hd2646126684_
                                                           (##car _e2646026680_))
                                                          (_tl2646226687_
                                                           (##cdr _e2646026680_)))
                                                      (if (gx#stx-pair?
                                                           _tl2646226687_)
                                                          (let ((_e2646326690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2646226687_)))
                    (let ((_hd2646426694_ (##car _e2646326690_))
                          (_tl2646526697_ (##cdr _e2646326690_)))
                      (if (gx#stx-null? _tl2646526697_)
                          ((lambda (_L26700_)
                             (_loop-vector26109_
                              _L26700_
                              _vars26384_
                              _K26385_))
                           _hd2646426694_)
                          (_g2639426663_ _g2639926667_))))
                  (_g2639426663_ _g2639926667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639426663_
                                                   _g2639926667_))
                                              (_g2639426663_ _g2639926667_))
                                          (_g2639426663_ _g2639926667_))))
                                  (_g2639426663_ _g2639926667_))))
                           (_g2639226761_
                            (lambda (_g2639926719_)
                              (if (gx#stx-pair? _g2639926719_)
                                  (let ((_e2645026722_
                                         (gx#syntax-e _g2639926719_)))
                                    (let ((_hd2645126726_
                                           (##car _e2645026722_))
                                          (_tl2645226729_
                                           (##cdr _e2645026722_)))
                                      (if (gx#stx-pair? _tl2645226729_)
                                          (let ((_e2645326732_
                                                 (gx#syntax-e _tl2645226729_)))
                                            (let ((_hd2645426736_
                                                   (##car _e2645326732_))
                                                  (_tl2645526739_
                                                   (##cdr _e2645326732_)))
                                              (if (gx#stx-null? _tl2645526739_)
                                                  ((lambda (_L26742_ _L26744_)
                                                     (if (let ((_$e26757_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26744_)))
                   (if _$e26757_ _$e26757_ (gx#stx-eq? 'vector: _L26744_)))
                 (_loop-vector26109_ _L26742_ _vars26384_ _K26385_)
                 (_g2639326715_ _g2639926719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2645426736_
                                                   _hd2645126726_)
                                                  (_g2639326715_
                                                   _g2639926719_))))
                                          (_g2639326715_ _g2639926719_))))
                                  (_g2639326715_ _g2639926719_))))
                           (_g2639126801_
                            (lambda (_g2639926765_)
                              (if (gx#stx-pair? _g2639926765_)
                                  (let ((_e2644226768_
                                         (gx#syntax-e _g2639926765_)))
                                    (let ((_hd2644326772_
                                           (##car _e2644226768_))
                                          (_tl2644426775_
                                           (##cdr _e2644226768_)))
                                      (if (gx#stx-datum? _hd2644326772_)
                                          (if (equal? (gx#stx-e _hd2644326772_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2644426775_)
                                                  (let ((_e2644526778_
                                                         (gx#syntax-e
                                                          _tl2644426775_)))
                                                    (let ((_hd2644626782_
                                                           (##car _e2644526778_))
                                                          (_tl2644726785_
                                                           (##cdr _e2644526778_)))
                                                      (if (gx#stx-null?
                                                           _tl2644726785_)
                                                          ((lambda (_L26788_)
                                                             (_loop26107_
                                                              _L26788_
                                                              _vars26384_
                                                              _K26385_))
                                                           _hd2644626782_)
                                                          (_g2639226761_
                                                           _g2639926765_))))
                                                  (_g2639226761_
                                                   _g2639926765_))
                                              (_g2639226761_ _g2639926765_))
                                          (_g2639226761_ _g2639926765_))))
                                  (_g2639226761_ _g2639926765_))))
                           (_g2639026860_
                            (lambda (_g2639926805_)
                              (if (gx#stx-pair? _g2639926805_)
                                  (let ((_e2643226808_
                                         (gx#syntax-e _g2639926805_)))
                                    (let ((_hd2643326812_
                                           (##car _e2643226808_))
                                          (_tl2643426815_
                                           (##cdr _e2643226808_)))
                                      (if (gx#stx-datum? _hd2643326812_)
                                          (if (equal? (gx#stx-e _hd2643326812_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2643426815_)
                                                  (let ((_e2643526818_
                                                         (gx#syntax-e
                                                          _tl2643426815_)))
                                                    (let ((_hd2643626822_
                                                           (##car _e2643526818_))
                                                          (_tl2643726825_
                                                           (##cdr _e2643526818_)))
                                                      (if (gx#stx-pair?
                                                           _tl2643726825_)
                                                          (let ((_e2643826828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2643726825_)))
                    (let ((_hd2643926832_ (##car _e2643826828_))
                          (_tl2644026835_ (##cdr _e2643826828_)))
                      (if (gx#stx-null? _tl2644026835_)
                          ((lambda (_L26838_ _L26840_)
                             (_loop26107_
                              _L26840_
                              _vars26384_
                              (lambda (_g2685426856_)
                                (_loop26107_
                                 _L26838_
                                 _g2685426856_
                                 _K26385_))))
                           _hd2643926832_
                           _hd2643626822_)
                          (_g2639126801_ _g2639926805_))))
                  (_g2639126801_ _g2639926805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639126801_
                                                   _g2639926805_))
                                              (_g2639126801_ _g2639926805_))
                                          (_g2639126801_ _g2639926805_))))
                                  (_g2639126801_ _g2639926805_))))
                           (_g2638926919_
                            (lambda (_g2639926864_)
                              (if (gx#stx-pair? _g2639926864_)
                                  (let ((_e2642126867_
                                         (gx#syntax-e _g2639926864_)))
                                    (let ((_hd2642226871_
                                           (##car _e2642126867_))
                                          (_tl2642326874_
                                           (##cdr _e2642126867_)))
                                      (if (gx#stx-datum? _hd2642226871_)
                                          (if (equal? (gx#stx-e _hd2642226871_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2642326874_)
                                                  (let ((_e2642426877_
                                                         (gx#syntax-e
                                                          _tl2642326874_)))
                                                    (let ((_hd2642526881_
                                                           (##car _e2642426877_))
                                                          (_tl2642626884_
                                                           (##cdr _e2642426877_)))
                                                      (if (gx#stx-pair?
                                                           _tl2642626884_)
                                                          (let ((_e2642726887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2642626884_)))
                    (let ((_hd2642826891_ (##car _e2642726887_))
                          (_tl2642926894_ (##cdr _e2642726887_)))
                      (if (gx#stx-null? _tl2642926894_)
                          ((lambda (_L26897_ _L26899_)
                             (_loop26107_
                              _L26899_
                              _vars26384_
                              (lambda (_g2691326915_)
                                (_loop26107_
                                 _L26897_
                                 _g2691326915_
                                 _K26385_))))
                           _hd2642826891_
                           _hd2642526881_)
                          (_g2639026860_ _g2639926864_))))
                  (_g2639026860_ _g2639926864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639026860_
                                                   _g2639926864_))
                                              (_g2639026860_ _g2639926864_))
                                          (_g2639026860_ _g2639926864_))))
                                  (_g2639026860_ _g2639926864_))))
                           (_g2638826959_
                            (lambda (_g2639926923_)
                              (if (gx#stx-pair? _g2639926923_)
                                  (let ((_e2641326926_
                                         (gx#syntax-e _g2639926923_)))
                                    (let ((_hd2641426930_
                                           (##car _e2641326926_))
                                          (_tl2641526933_
                                           (##cdr _e2641326926_)))
                                      (if (gx#stx-datum? _hd2641426930_)
                                          (if (equal? (gx#stx-e _hd2641426930_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2641526933_)
                                                  (let ((_e2641626936_
                                                         (gx#syntax-e
                                                          _tl2641526933_)))
                                                    (let ((_hd2641726940_
                                                           (##car _e2641626936_))
                                                          (_tl2641826943_
                                                           (##cdr _e2641626936_)))
                                                      (if (gx#stx-null?
                                                           _tl2641826943_)
                                                          ((lambda (_L26946_)
                                                             (_loop26107_
                                                              _L26946_
                                                              _vars26384_
                                                              _K26385_))
                                                           _hd2641726940_)
                                                          (_g2638926919_
                                                           _g2639926923_))))
                                                  (_g2638926919_
                                                   _g2639926923_))
                                              (_g2638926919_ _g2639926923_))
                                          (_g2638926919_ _g2639926923_))))
                                  (_g2638926919_ _g2639926923_))))
                           (_g2638727058_
                            (lambda (_g2639926963_)
                              (if (gx#stx-pair? _g2639926963_)
                                  (let ((_e2640926966_
                                         (gx#syntax-e _g2639926963_)))
                                    (let ((_hd2641026970_
                                           (##car _e2640926966_))
                                          (_tl2641126973_
                                           (##cdr _e2640926966_)))
                                      ((lambda (_L26976_ _L26978_)
                                         (if (let ((_$e26989_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26978_)))
                                               (if _$e26989_
                                                   _$e26989_
                                                   (gx#stx-eq? 'or: _L26978_)))
                                             (let* ((_g2699427006_
                                                     (lambda (_g2699527002_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2699527002_)))
                                                    (_g2699327017_
                                                     (lambda (_g2699527010_)
                                                       ((lambda ()
                                                          (_K26385_
                                                           _vars26384_)))))
                                                    (_g2699227054_
                                                     (lambda (_g2699527021_)
                                                       (if (gx#stx-pair?
                                                            _g2699527021_)
                                                           (let ((_e2699827024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2699527021_)))
                     (let ((_hd2699927028_ (##car _e2699827024_))
                           (_tl2700027031_ (##cdr _e2699827024_)))
                       ((lambda (_L27034_ _L27036_)
                          (_loop26107_
                           _L27036_
                           _vars26384_
                           (lambda (_g2704827050_)
                             (_loop26107_
                              (cons _L26978_ _L27034_)
                              _g2704827050_
                              _K26385_))))
                        _tl2700027031_
                        _hd2699927028_)))
                   (_g2699327017_ _g2699527021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2699227054_ _L26976_))
                                             (_g2638826959_ _g2639926963_)))
                                       _tl2641126973_
                                       _hd2641026970_)))
                                  (_g2638826959_ _g2639926963_))))
                           (_g2638627311_
                            (lambda (_g2639927062_)
                              (if (gx#stx-pair? _g2639927062_)
                                  (let ((_e2640127065_
                                         (gx#syntax-e _g2639927062_)))
                                    (let ((_hd2640227069_
                                           (##car _e2640127065_))
                                          (_tl2640327072_
                                           (##cdr _e2640127065_)))
                                      (if (gx#stx-datum? _hd2640227069_)
                                          (if (equal? (gx#stx-e _hd2640227069_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2640327072_)
                                                  (let ((_e2640427075_
                                                         (gx#syntax-e
                                                          _tl2640327072_)))
                                                    (let ((_hd2640527079_
                                                           (##car _e2640427075_))
                                                          (_tl2640627082_
                                                           (##cdr _e2640427075_)))
                                                      ((lambda (_L27085_)
                                                         (let* ((_g2710127138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2710227134_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2710227134_)))
                        (_g2710027149_
                         (lambda (_g2710227142_)
                           ((lambda () (_K26385_ _vars26384_)))))
                        (_g2709927227_
                         (lambda (_g2710227153_)
                           (if (gx#stx-pair? _g2710227153_)
                               (let ((_e2711827156_
                                      (gx#syntax-e _g2710227153_)))
                                 (let ((_hd2711927160_ (##car _e2711827156_))
                                       (_tl2712027163_ (##cdr _e2711827156_)))
                                   (if (gx#stx-pair? _tl2712027163_)
                                       (let ((_e2712127166_
                                              (gx#syntax-e _tl2712027163_)))
                                         (let ((_hd2712227170_
                                                (##car _e2712127166_))
                                               (_tl2712327173_
                                                (##cdr _e2712127166_)))
                                           (if (gx#stx-datum? _hd2712227170_)
                                               (if (equal? (gx#stx-e
                                                            _hd2712227170_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2712327173_)
                                                       (let ((_e2712427176_
                                                              (gx#syntax-e
                                                               _tl2712327173_)))
                                                         (let ((_hd2712527180_
                                                                (##car _e2712427176_))
                                                               (_tl2712627183_
                                                                (##cdr _e2712427176_)))
                                                           (if (gx#stx-pair?
                                                                _tl2712627183_)
                                                               (let ((_e2712727186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2712627183_)))
                         (let ((_hd2712827190_ (##car _e2712727186_))
                               (_tl2712927193_ (##cdr _e2712727186_)))
                           (if (gx#stx-datum? _hd2712827190_)
                               (if (equal? (gx#stx-e _hd2712827190_) '=>:)
                                   (if (gx#stx-pair? _tl2712927193_)
                                       (let ((_e2713027196_
                                              (gx#syntax-e _tl2712927193_)))
                                         (let ((_hd2713127200_
                                                (##car _e2713027196_))
                                               (_tl2713227203_
                                                (##cdr _e2713027196_)))
                                           (if (gx#stx-null? _tl2713227203_)
                                               ((lambda (_L27206_)
                                                  (_loop26107_
                                                   _L27206_
                                                   _vars26384_
                                                   _K26385_))
                                                _hd2713127200_)
                                               (_g2710027149_ _g2710227153_))))
                                       (_g2710027149_ _g2710227153_))
                                   (_g2710027149_ _g2710227153_))
                               (_g2710027149_ _g2710227153_))))
                       (_g2710027149_ _g2710227153_))))
               (_g2710027149_ _g2710227153_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2710027149_
                                                    _g2710227153_))
                                               (_g2710027149_ _g2710227153_))))
                                       (_g2710027149_ _g2710227153_))))
                               (_g2710027149_ _g2710227153_))))
                        (_g2709827279_
                         (lambda (_g2710227231_)
                           (if (gx#stx-pair? _g2710227231_)
                               (let ((_e2710827234_
                                      (gx#syntax-e _g2710227231_)))
                                 (let ((_hd2710927238_ (##car _e2710827234_))
                                       (_tl2711027241_ (##cdr _e2710827234_)))
                                   (if (gx#stx-pair? _tl2711027241_)
                                       (let ((_e2711127244_
                                              (gx#syntax-e _tl2711027241_)))
                                         (let ((_hd2711227248_
                                                (##car _e2711127244_))
                                               (_tl2711327251_
                                                (##cdr _e2711127244_)))
                                           (if (gx#stx-datum? _hd2711227248_)
                                               (if (equal? (gx#stx-e
                                                            _hd2711227248_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2711327251_)
                                                       (let ((_e2711427254_
                                                              (gx#syntax-e
                                                               _tl2711327251_)))
                                                         (let ((_hd2711527258_
                                                                (##car _e2711427254_))
                                                               (_tl2711627261_
                                                                (##cdr _e2711427254_)))
                                                           (if (gx#stx-null?
                                                                _tl2711627261_)
                                                               ((lambda (_L27264_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop26107_ _L27264_ _vars26384_ _K26385_))
                        _hd2711527258_)
                       (_g2709927227_ _g2710227231_))))
               (_g2709927227_ _g2710227231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2709927227_
                                                    _g2710227231_))
                                               (_g2709927227_ _g2710227231_))))
                                       (_g2709927227_ _g2710227231_))))
                               (_g2709927227_ _g2710227231_))))
                        (_g2709727307_
                         (lambda (_g2710227283_)
                           (if (gx#stx-pair? _g2710227283_)
                               (let ((_e2710427286_
                                      (gx#syntax-e _g2710227283_)))
                                 (let ((_hd2710527290_ (##car _e2710427286_))
                                       (_tl2710627293_ (##cdr _e2710427286_)))
                                   (if (gx#stx-null? _tl2710627293_)
                                       ((lambda (_L27296_)
                                          (_loop26107_
                                           _L27296_
                                           _vars26384_
                                           _K26385_))
                                        _hd2710527290_)
                                       (_g2709827279_ _g2710227283_))))
                               (_g2709827279_ _g2710227283_)))))
                   (_g2709727307_ _L27085_)))
               _tl2640627082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638727058_
                                                   _g2639927062_))
                                              (_g2638727058_ _g2639927062_))
                                          (_g2638727058_ _g2639927062_))))
                                  (_g2638727058_ _g2639927062_)))))
                      (_g2638627311_ _ptree26382_))))
                 (_loop-vector26109_
                  (lambda (_body26270_ _vars26272_ _K26273_)
                    (let* ((_g2627626297_
                            (lambda (_g2627726293_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2627726293_)))
                           (_g2627526338_
                            (lambda (_g2627726301_)
                              (if (gx#stx-pair? _g2627726301_)
                                  (let ((_e2628626304_
                                         (gx#syntax-e _g2627726301_)))
                                    (let ((_hd2628726308_
                                           (##car _e2628626304_))
                                          (_tl2628826311_
                                           (##cdr _e2628626304_)))
                                      (if (gx#stx-datum? _hd2628726308_)
                                          (if (equal? (gx#stx-e _hd2628726308_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2628826311_)
                                                  (let ((_e2628926314_
                                                         (gx#syntax-e
                                                          _tl2628826311_)))
                                                    (let ((_hd2629026318_
                                                           (##car _e2628926314_))
                                                          (_tl2629126321_
                                                           (##cdr _e2628926314_)))
                                                      (if (gx#stx-null?
                                                           _tl2629126321_)
                                                          ((lambda (_L26324_)
                                                             (_loop26107_
                                                              _L26324_
                                                              _vars26272_
                                                              _K26273_))
                                                           _hd2629026318_)
                                                          (_g2627626297_
                                                           _g2627726301_))))
                                                  (_g2627626297_
                                                   _g2627726301_))
                                              (_g2627626297_ _g2627726301_))
                                          (_g2627626297_ _g2627726301_))))
                                  (_g2627626297_ _g2627726301_))))
                           (_g2627426378_
                            (lambda (_g2627726342_)
                              (if (gx#stx-pair? _g2627726342_)
                                  (let ((_e2627926345_
                                         (gx#syntax-e _g2627726342_)))
                                    (let ((_hd2628026349_
                                           (##car _e2627926345_))
                                          (_tl2628126352_
                                           (##cdr _e2627926345_)))
                                      (if (gx#stx-datum? _hd2628026349_)
                                          (if (equal? (gx#stx-e _hd2628026349_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2628126352_)
                                                  (let ((_e2628226355_
                                                         (gx#syntax-e
                                                          _tl2628126352_)))
                                                    (let ((_hd2628326359_
                                                           (##car _e2628226355_))
                                                          (_tl2628426362_
                                                           (##cdr _e2628226355_)))
                                                      (if (gx#stx-null?
                                                           _tl2628426362_)
                                                          ((lambda (_L26365_)
                                                             (_loop-list26110_
                                                              _L26365_
                                                              _vars26272_
                                                              _K26273_))
                                                           _hd2628326359_)
                                                          (_g2627526338_
                                                           _g2627726342_))))
                                                  (_g2627526338_
                                                   _g2627726342_))
                                              (_g2627526338_ _g2627726342_))
                                          (_g2627526338_ _g2627726342_))))
                                  (_g2627526338_ _g2627726342_)))))
                      (_g2627426378_ _body26270_))))
                 (_loop-list26110_
                  (lambda (_rest26200_ _vars26202_ _K26203_)
                    (let* ((_g2620626218_
                            (lambda (_g2620726214_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2620726214_)))
                           (_g2620526229_
                            (lambda (_g2620726222_)
                              ((lambda () (_K26203_ _vars26202_)))))
                           (_g2620426266_
                            (lambda (_g2620726233_)
                              (if (gx#stx-pair? _g2620726233_)
                                  (let ((_e2621026236_
                                         (gx#syntax-e _g2620726233_)))
                                    (let ((_hd2621126240_
                                           (##car _e2621026236_))
                                          (_tl2621226243_
                                           (##cdr _e2621026236_)))
                                      ((lambda (_L26246_ _L26248_)
                                         (_loop26107_
                                          _L26248_
                                          _vars26202_
                                          (lambda (_g2626026262_)
                                            (_loop-list26110_
                                             _L26246_
                                             _g2626026262_
                                             _K26203_))))
                                       _tl2621226243_
                                       _hd2621126240_)))
                                  (_g2620526229_ _g2620726233_)))))
                      (_g2620426266_ _rest26200_))))
                 (_loop-class-list26111_
                  (lambda (_rest26113_ _vars26115_ _K26116_)
                    (let* ((_g2611926134_
                            (lambda (_g2612026130_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2612026130_)))
                           (_g2611826145_
                            (lambda (_g2612026138_)
                              ((lambda () (_K26116_ _vars26115_)))))
                           (_g2611726196_
                            (lambda (_g2612026149_)
                              (if (gx#stx-pair? _g2612026149_)
                                  (let ((_e2612326152_
                                         (gx#syntax-e _g2612026149_)))
                                    (let ((_hd2612426156_
                                           (##car _e2612326152_))
                                          (_tl2612526159_
                                           (##cdr _e2612326152_)))
                                      (if (gx#stx-pair? _tl2612526159_)
                                          (let ((_e2612626162_
                                                 (gx#syntax-e _tl2612526159_)))
                                            (let ((_hd2612726166_
                                                   (##car _e2612626162_))
                                                  (_tl2612826169_
                                                   (##cdr _e2612626162_)))
                                              ((lambda (_L26172_ _L26174_)
                                                 (_loop26107_
                                                  _L26174_
                                                  _vars26115_
                                                  (lambda (_g2619026192_)
                                                    (_loop-class-list26111_
                                                     _L26172_
                                                     _g2619026192_
                                                     _K26116_))))
                                               _tl2612826169_
                                               _hd2612726166_)))
                                          (_g2611826145_ _g2612026149_))))
                                  (_g2611826145_ _g2612026149_)))))
                      (_g2611726196_ _rest26113_)))))
          (_loop26107_ _ptree26104_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22853_ _tgt22855_ _ptree22856_ _K22857_ _E22858_)
        (letrec ((_generate122860_
                  (lambda (_tgt24453_ _ptree24455_ _K24456_ _E24457_)
                    (let* ((_g2445924467_
                            (lambda (_g2446024463_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2446024463_)))
                           (_g2445826100_
                            (lambda (_g2446024471_)
                              ((lambda (_L24474_)
                                 (let ()
                                   (let* ((_g2450124627_
                                           (lambda (_g2450224623_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2450224623_)))
                                          (_g2450024648_
                                           (lambda (_g2450224631_)
                                             (if (gx#stx-pair? _g2450224631_)
                                                 (let ((_e2461924634_
                                                        (gx#syntax-e
                                                         _g2450224631_)))
                                                   (let ((_hd2462024638_
                                                          (##car _e2461924634_))
                                                         (_tl2462124641_
                                                          (##cdr _e2461924634_)))
                                                     (if (gx#stx-datum?
                                                          _hd2462024638_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2462024638_)
                             'any:)
                     (if (gx#stx-null? _tl2462124641_)
                         ((lambda () _K24456_))
                         (_g2450124627_ _g2450224631_))
                     (_g2450124627_ _g2450224631_))
                 (_g2450124627_ _g2450224631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2450124627_
                                                  _g2450224631_))))
                                          (_g2449924691_
                                           (lambda (_g2450224652_)
                                             (if (gx#stx-pair? _g2450224652_)
                                                 (let ((_e2461324655_
                                                        (gx#syntax-e
                                                         _g2450224652_)))
                                                   (let ((_hd2461424659_
                                                          (##car _e2461324655_))
                                                         (_tl2461524662_
                                                          (##cdr _e2461324655_)))
                                                     (if (gx#stx-datum?
                                                          _hd2461424659_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2461424659_)
                             'var:)
                     (if (gx#stx-pair? _tl2461524662_)
                         (let ((_e2461624665_ (gx#syntax-e _tl2461524662_)))
                           (let ((_hd2461724669_ (##car _e2461624665_))
                                 (_tl2461824672_ (##cdr _e2461624665_)))
                             (if (gx#stx-null? _tl2461824672_)
                                 ((lambda (_L24675_)
                                    (cons 'let
                                          (cons (cons (cons _L24675_
                                                            (cons _L24474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K24456_ '()))))
                                  _hd2461724669_)
                                 (_g2450024648_ _g2450224652_))))
                         (_g2450024648_ _g2450224652_))
                     (_g2450024648_ _g2450224652_))
                 (_g2450024648_ _g2450224652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2450024648_
                                                  _g2450224652_))))
                                          (_g2449824776_
                                           (lambda (_g2450224695_)
                                             (if (gx#stx-pair? _g2450224695_)
                                                 (let ((_e2460324698_
                                                        (gx#syntax-e
                                                         _g2450224695_)))
                                                   (let ((_hd2460424702_
                                                          (##car _e2460324698_))
                                                         (_tl2460524705_
                                                          (##cdr _e2460324698_)))
                                                     (if (gx#stx-datum?
                                                          _hd2460424702_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2460424702_)
                             'apply:)
                     (if (gx#stx-pair? _tl2460524705_)
                         (let ((_e2460624708_ (gx#syntax-e _tl2460524705_)))
                           (let ((_hd2460724712_ (##car _e2460624708_))
                                 (_tl2460824715_ (##cdr _e2460624708_)))
                             (if (gx#stx-pair? _tl2460824715_)
                                 (let ((_e2460924718_
                                        (gx#syntax-e _tl2460824715_)))
                                   (let ((_hd2461024722_ (##car _e2460924718_))
                                         (_tl2461124725_
                                          (##cdr _e2460924718_)))
                                     (if (gx#stx-null? _tl2461124725_)
                                         ((lambda (_L24728_ _L24730_)
                                            (let* ((_g2474524753_
                                                    (lambda (_g2474624749_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2474624749_)))
                                                   (_g2474424772_
                                                    (lambda (_g2474624757_)
                                                      ((lambda (_L24760_)
                                                         (let ()
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _L24760_
                                           (cons (cons _L24730_
                                                       (cons _L24474_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122860_
                                      _L24760_
                                      _L24728_
                                      _K24456_
                                      _E24457_)
                                     '())))))
               _g2474624757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2474424772_
                                               (gx#genident 'e))))
                                          _hd2461024722_
                                          _hd2460724712_)
                                         (_g2449924691_ _g2450224695_))))
                                 (_g2449924691_ _g2450224695_))))
                         (_g2449924691_ _g2450224695_))
                     (_g2449924691_ _g2450224695_))
                 (_g2449924691_ _g2450224695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449924691_
                                                  _g2450224695_))))
                                          (_g2449724858_
                                           (lambda (_g2450224780_)
                                             (if (gx#stx-pair? _g2450224780_)
                                                 (let ((_e2459524783_
                                                        (gx#syntax-e
                                                         _g2450224780_)))
                                                   (let ((_hd2459624787_
                                                          (##car _e2459524783_))
                                                         (_tl2459724790_
                                                          (##cdr _e2459524783_)))
                                                     (if (gx#stx-datum?
                                                          _hd2459624787_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2459624787_)
                             'datum:)
                     (if (gx#stx-pair? _tl2459724790_)
                         (let ((_e2459824793_ (gx#syntax-e _tl2459724790_)))
                           (let ((_hd2459924797_ (##car _e2459824793_))
                                 (_tl2460024800_ (##cdr _e2459824793_)))
                             (if (gx#stx-null? _tl2460024800_)
                                 ((lambda (_L24803_)
                                    (let* ((_g2481624824_
                                            (lambda (_g2481724820_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2481724820_)))
                                           (_g2481524843_
                                            (lambda (_g2481724828_)
                                              ((lambda (_L24831_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons _L24831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L24474_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24803_ '()))
                                         '())))
                       (cons _K24456_ (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2481724828_))))
                                      (_g2481524843_
                                       (let ((_e24847_ (gx#stx-e _L24803_)))
                                         (if (let ((_$e24850_
                                                    (symbol? _e24847_)))
                                               (if _$e24850_
                                                   _$e24850_
                                                   (let ((_$e24854_
                                                          (keyword? _e24847_)))
                                                     (if _$e24854_
                                                         _$e24854_
                                                         (immediate?
                                                          _e24847_)))))
                                             '##eq?
                                             (if (number? _e24847_)
                                                 'eqv?
                                                 'equal?))))))
                                  _hd2459924797_)
                                 (_g2449824776_ _g2450224780_))))
                         (_g2449824776_ _g2450224780_))
                     (_g2449824776_ _g2450224780_))
                 (_g2449824776_ _g2450224780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449824776_
                                                  _g2450224780_))))
                                          (_g2449624912_
                                           (lambda (_g2450224862_)
                                             (if (gx#stx-pair? _g2450224862_)
                                                 (let ((_e2458524865_
                                                        (gx#syntax-e
                                                         _g2450224862_)))
                                                   (let ((_hd2458624869_
                                                          (##car _e2458524865_))
                                                         (_tl2458724872_
                                                          (##cdr _e2458524865_)))
                                                     (if (gx#stx-datum?
                                                          _hd2458624869_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2458624869_)
                             'class:)
                     (if (gx#stx-pair? _tl2458724872_)
                         (let ((_e2458824875_ (gx#syntax-e _tl2458724872_)))
                           (let ((_hd2458924879_ (##car _e2458824875_))
                                 (_tl2459024882_ (##cdr _e2458824875_)))
                             (if (gx#stx-pair? _tl2459024882_)
                                 (let ((_e2459124885_
                                        (gx#syntax-e _tl2459024882_)))
                                   (let ((_hd2459224889_ (##car _e2459124885_))
                                         (_tl2459324892_
                                          (##cdr _e2459124885_)))
                                     (if (gx#stx-null? _tl2459324892_)
                                         ((lambda (_L24895_ _L24897_)
                                            (_generate-class22866_
                                             (gx#stx-e _L24897_)
                                             _tgt24453_
                                             _L24895_
                                             _K24456_
                                             _E24457_))
                                          _hd2459224889_
                                          _hd2458924879_)
                                         (_g2449724858_ _g2450224862_))))
                                 (_g2449724858_ _g2450224862_))))
                         (_g2449724858_ _g2450224862_))
                     (_g2449724858_ _g2450224862_))
                 (_g2449724858_ _g2450224862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449724858_
                                                  _g2450224862_))))
                                          (_g2449524966_
                                           (lambda (_g2450224916_)
                                             (if (gx#stx-pair? _g2450224916_)
                                                 (let ((_e2457424919_
                                                        (gx#syntax-e
                                                         _g2450224916_)))
                                                   (let ((_hd2457524923_
                                                          (##car _e2457424919_))
                                                         (_tl2457624926_
                                                          (##cdr _e2457424919_)))
                                                     (if (gx#stx-datum?
                                                          _hd2457524923_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2457524923_)
                             'struct:)
                     (if (gx#stx-pair? _tl2457624926_)
                         (let ((_e2457724929_ (gx#syntax-e _tl2457624926_)))
                           (let ((_hd2457824933_ (##car _e2457724929_))
                                 (_tl2457924936_ (##cdr _e2457724929_)))
                             (if (gx#stx-pair? _tl2457924936_)
                                 (let ((_e2458024939_
                                        (gx#syntax-e _tl2457924936_)))
                                   (let ((_hd2458124943_ (##car _e2458024939_))
                                         (_tl2458224946_
                                          (##cdr _e2458024939_)))
                                     (if (gx#stx-null? _tl2458224946_)
                                         ((lambda (_L24949_ _L24951_)
                                            (_generate-struct22865_
                                             (gx#stx-e _L24951_)
                                             _tgt24453_
                                             _L24949_
                                             _K24456_
                                             _E24457_))
                                          _hd2458124943_
                                          _hd2457824933_)
                                         (_g2449624912_ _g2450224916_))))
                                 (_g2449624912_ _g2450224916_))))
                         (_g2449624912_ _g2450224916_))
                     (_g2449624912_ _g2450224916_))
                 (_g2449624912_ _g2450224916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449624912_
                                                  _g2450224916_))))
                                          (_g2449425144_
                                           (lambda (_g2450224970_)
                                             (if (gx#stx-pair? _g2450224970_)
                                                 (let ((_e2456624973_
                                                        (gx#syntax-e
                                                         _g2450224970_)))
                                                   (let ((_hd2456724977_
                                                          (##car _e2456624973_))
                                                         (_tl2456824980_
                                                          (##cdr _e2456624973_)))
                                                     (if (gx#stx-datum?
                                                          _hd2456724977_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2456724977_)
                             'vector:)
                     (if (gx#stx-pair? _tl2456824980_)
                         (let ((_e2456924983_ (gx#syntax-e _tl2456824980_)))
                           (let ((_hd2457024987_ (##car _e2456924983_))
                                 (_tl2457124990_ (##cdr _e2456924983_)))
                             (if (gx#stx-null? _tl2457124990_)
                                 ((lambda (_L24993_)
                                    (let* ((_g2500725028_
                                            (lambda (_g2500825024_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2500825024_)))
                                           (_g2500625069_
                                            (lambda (_g2500825032_)
                                              (if (gx#stx-pair? _g2500825032_)
                                                  (let ((_e2501725035_
                                                         (gx#syntax-e
                                                          _g2500825032_)))
                                                    (let ((_hd2501825039_
                                                           (##car _e2501725035_))
                                                          (_tl2501925042_
                                                           (##cdr _e2501725035_)))
                                                      (if (gx#stx-datum?
                                                           _hd2501825039_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2501825039_)
                              'list:)
                      (if (gx#stx-pair? _tl2501925042_)
                          (let ((_e2502025045_ (gx#syntax-e _tl2501925042_)))
                            (let ((_hd2502125049_ (##car _e2502025045_))
                                  (_tl2502225052_ (##cdr _e2502025045_)))
                              (if (gx#stx-null? _tl2502225052_)
                                  ((lambda (_L25055_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector?)
                                                       (cons _L24474_ '()))
                                                 (cons (_generate-list-vector22864_
                                                        _tgt24453_
                                                        _L25055_
                                                        'subvector->list
                                                        '0
                                                        _K24456_
                                                        _E24457_)
                                                       (cons _E24457_ '())))))
                                   _hd2502125049_)
                                  (_g2500725028_ _g2500825032_))))
                          (_g2500725028_ _g2500825032_))
                      (_g2500725028_ _g2500825032_))
                  (_g2500725028_ _g2500825032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2500725028_
                                                   _g2500825032_))))
                                           (_g2500525140_
                                            (lambda (_g2500825073_)
                                              (if (gx#stx-pair? _g2500825073_)
                                                  (let ((_e2501025076_
                                                         (gx#syntax-e
                                                          _g2500825073_)))
                                                    (let ((_hd2501125080_
                                                           (##car _e2501025076_))
                                                          (_tl2501225083_
                                                           (##cdr _e2501025076_)))
                                                      (if (gx#stx-datum?
                                                           _hd2501125080_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2501125080_)
                              'simple:)
                      (if (gx#stx-pair? _tl2501225083_)
                          (let ((_e2501325086_ (gx#syntax-e _tl2501225083_)))
                            (let ((_hd2501425090_ (##car _e2501325086_))
                                  (_tl2501525093_ (##cdr _e2501325086_)))
                              (if (gx#stx-null? _tl2501525093_)
                                  ((lambda (_L25096_)
                                     (let* ((_g2510925117_
                                             (lambda (_g2511025113_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2511025113_)))
                                            (_g2510825136_
                                             (lambda (_g2511025121_)
                                               ((lambda (_L25124_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector?)
                              (cons _L24474_ '()))
                        (cons (cons 'if
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L24474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L25124_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector22863_
                                                 _tgt24453_
                                                 _L25096_
                                                 '0
                                                 _K24456_
                                                 _E24457_)
                                                (cons _E24457_ '()))))
                              (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2511025121_))))
                                       (_g2510825136_
                                        (gx#stx-length _L25096_))))
                                   _hd2501425090_)
                                  (_g2500625069_ _g2500825073_))))
                          (_g2500625069_ _g2500825073_))
                      (_g2500625069_ _g2500825073_))
                  (_g2500625069_ _g2500825073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2500625069_
                                                   _g2500825073_)))))
                                      (_g2500525140_ _L24993_)))
                                  _hd2457024987_)
                                 (_g2449524966_ _g2450224970_))))
                         (_g2449524966_ _g2450224970_))
                     (_g2449524966_ _g2450224970_))
                 (_g2449524966_ _g2450224970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449524966_
                                                  _g2450224970_))))
                                          (_g2449325322_
                                           (lambda (_g2450225148_)
                                             (if (gx#stx-pair? _g2450225148_)
                                                 (let ((_e2455925151_
                                                        (gx#syntax-e
                                                         _g2450225148_)))
                                                   (let ((_hd2456025155_
                                                          (##car _e2455925151_))
                                                         (_tl2456125158_
                                                          (##cdr _e2455925151_)))
                                                     (if (gx#stx-datum?
                                                          _hd2456025155_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2456025155_)
                             'values:)
                     (if (gx#stx-pair? _tl2456125158_)
                         (let ((_e2456225161_ (gx#syntax-e _tl2456125158_)))
                           (let ((_hd2456325165_ (##car _e2456225161_))
                                 (_tl2456425168_ (##cdr _e2456225161_)))
                             (if (gx#stx-null? _tl2456425168_)
                                 ((lambda (_L25171_)
                                    (let* ((_g2518525206_
                                            (lambda (_g2518625202_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2518625202_)))
                                           (_g2518425247_
                                            (lambda (_g2518625210_)
                                              (if (gx#stx-pair? _g2518625210_)
                                                  (let ((_e2519525213_
                                                         (gx#syntax-e
                                                          _g2518625210_)))
                                                    (let ((_hd2519625217_
                                                           (##car _e2519525213_))
                                                          (_tl2519725220_
                                                           (##cdr _e2519525213_)))
                                                      (if (gx#stx-datum?
                                                           _hd2519625217_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2519625217_)
                              'list:)
                      (if (gx#stx-pair? _tl2519725220_)
                          (let ((_e2519825223_ (gx#syntax-e _tl2519725220_)))
                            (let ((_hd2519925227_ (##car _e2519825223_))
                                  (_tl2520025230_ (##cdr _e2519825223_)))
                              (if (gx#stx-null? _tl2520025230_)
                                  ((lambda (_L25233_)
                                     (_generate-list-vector22864_
                                      _tgt24453_
                                      _L25233_
                                      'values->list
                                      '0
                                      _K24456_
                                      _E24457_))
                                   _hd2519925227_)
                                  (_g2518525206_ _g2518625210_))))
                          (_g2518525206_ _g2518625210_))
                      (_g2518525206_ _g2518625210_))
                  (_g2518525206_ _g2518625210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518525206_
                                                   _g2518625210_))))
                                           (_g2518325318_
                                            (lambda (_g2518625251_)
                                              (if (gx#stx-pair? _g2518625251_)
                                                  (let ((_e2518825254_
                                                         (gx#syntax-e
                                                          _g2518625251_)))
                                                    (let ((_hd2518925258_
                                                           (##car _e2518825254_))
                                                          (_tl2519025261_
                                                           (##cdr _e2518825254_)))
                                                      (if (gx#stx-datum?
                                                           _hd2518925258_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2518925258_)
                              'simple:)
                      (if (gx#stx-pair? _tl2519025261_)
                          (let ((_e2519125264_ (gx#syntax-e _tl2519025261_)))
                            (let ((_hd2519225268_ (##car _e2519125264_))
                                  (_tl2519325271_ (##cdr _e2519125264_)))
                              (if (gx#stx-null? _tl2519325271_)
                                  ((lambda (_L25274_)
                                     (let* ((_g2528725295_
                                             (lambda (_g2528825291_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2528825291_)))
                                            (_g2528625314_
                                             (lambda (_g2528825299_)
                                               ((lambda (_L25302_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L24474_ '()))
                                    (cons _L25302_ '())))
                        (cons (_generate-simple-vector22863_
                               _tgt24453_
                               _L25274_
                               '0
                               _K24456_
                               _E24457_)
                              (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2528825299_))))
                                       (_g2528625314_
                                        (gx#stx-length _L25274_))))
                                   _hd2519225268_)
                                  (_g2518425247_ _g2518625251_))))
                          (_g2518425247_ _g2518625251_))
                      (_g2518425247_ _g2518625251_))
                  (_g2518425247_ _g2518625251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518425247_
                                                   _g2518625251_)))))
                                      (_g2518325318_ _L25171_)))
                                  _hd2456325165_)
                                 (_g2449425144_ _g2450225148_))))
                         (_g2449425144_ _g2450225148_))
                     (_g2449425144_ _g2450225148_))
                 (_g2449425144_ _g2450225148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449425144_
                                                  _g2450225148_))))
                                          (_g2449225393_
                                           (lambda (_g2450225326_)
                                             (if (gx#stx-pair? _g2450225326_)
                                                 (let ((_e2455225329_
                                                        (gx#syntax-e
                                                         _g2450225326_)))
                                                   (let ((_hd2455325333_
                                                          (##car _e2455225329_))
                                                         (_tl2455425336_
                                                          (##cdr _e2455225329_)))
                                                     (if (gx#stx-datum?
                                                          _hd2455325333_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2455325333_)
                             'box:)
                     (if (gx#stx-pair? _tl2455425336_)
                         (let ((_e2455525339_ (gx#syntax-e _tl2455425336_)))
                           (let ((_hd2455625343_ (##car _e2455525339_))
                                 (_tl2455725346_ (##cdr _e2455525339_)))
                             (if (gx#stx-null? _tl2455725346_)
                                 ((lambda (_L25349_)
                                    (let* ((_g2536225370_
                                            (lambda (_g2536325366_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2536325366_)))
                                           (_g2536125389_
                                            (lambda (_g2536325374_)
                                              ((lambda (_L25377_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L24474_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _L25377_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L24474_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122860_
                                                _L25377_
                                                _L25349_
                                                _K24456_
                                                _E24457_)
                                               '())))
                             (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2536325374_))))
                                      (_g2536125389_ (gx#genident 'e))))
                                  _hd2455625343_)
                                 (_g2449325322_ _g2450225326_))))
                         (_g2449325322_ _g2450225326_))
                     (_g2449325322_ _g2450225326_))
                 (_g2449325322_ _g2450225326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449325322_
                                                  _g2450225326_))))
                                          (_g2449125447_
                                           (lambda (_g2450225397_)
                                             (if (gx#stx-pair? _g2450225397_)
                                                 (let ((_e2454225400_
                                                        (gx#syntax-e
                                                         _g2450225397_)))
                                                   (let ((_hd2454325404_
                                                          (##car _e2454225400_))
                                                         (_tl2454425407_
                                                          (##cdr _e2454225400_)))
                                                     (if (gx#stx-datum?
                                                          _hd2454325404_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2454325404_)
                             'splice:)
                     (if (gx#stx-pair? _tl2454425407_)
                         (let ((_e2454525410_ (gx#syntax-e _tl2454425407_)))
                           (let ((_hd2454625414_ (##car _e2454525410_))
                                 (_tl2454725417_ (##cdr _e2454525410_)))
                             (if (gx#stx-pair? _tl2454725417_)
                                 (let ((_e2454825420_
                                        (gx#syntax-e _tl2454725417_)))
                                   (let ((_hd2454925424_ (##car _e2454825420_))
                                         (_tl2455025427_
                                          (##cdr _e2454825420_)))
                                     (if (gx#stx-null? _tl2455025427_)
                                         ((lambda (_L25430_ _L25432_)
                                            (_generate-splice22862_
                                             _tgt24453_
                                             _L25432_
                                             _L25430_
                                             _K24456_
                                             _E24457_))
                                          _hd2454925424_
                                          _hd2454625414_)
                                         (_g2449225393_ _g2450225397_))))
                                 (_g2449225393_ _g2450225397_))))
                         (_g2449225393_ _g2450225397_))
                     (_g2449225393_ _g2450225397_))
                 (_g2449225393_ _g2450225397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449225393_
                                                  _g2450225397_))))
                                          (_g2449025468_
                                           (lambda (_g2450225451_)
                                             (if (gx#stx-pair? _g2450225451_)
                                                 (let ((_e2453725454_
                                                        (gx#syntax-e
                                                         _g2450225451_)))
                                                   (let ((_hd2453825458_
                                                          (##car _e2453725454_))
                                                         (_tl2453925461_
                                                          (##cdr _e2453725454_)))
                                                     (if (gx#stx-datum?
                                                          _hd2453825458_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2453825458_)
                             'null:)
                     (if (gx#stx-null? _tl2453925461_)
                         ((lambda ()
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L24474_ '()))
                                        (cons _K24456_ (cons _E24457_ '()))))))
                         (_g2449125447_ _g2450225451_))
                     (_g2449125447_ _g2450225451_))
                 (_g2449125447_ _g2450225451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449125447_
                                                  _g2450225451_))))
                                          (_g2448925591_
                                           (lambda (_g2450225472_)
                                             (if (gx#stx-pair? _g2450225472_)
                                                 (let ((_e2452825475_
                                                        (gx#syntax-e
                                                         _g2450225472_)))
                                                   (let ((_hd2452925479_
                                                          (##car _e2452825475_))
                                                         (_tl2453025482_
                                                          (##cdr _e2452825475_)))
                                                     (if (gx#stx-datum?
                                                          _hd2452925479_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2452925479_)
                             'cons:)
                     (if (gx#stx-pair? _tl2453025482_)
                         (let ((_e2453125485_ (gx#syntax-e _tl2453025482_)))
                           (let ((_hd2453225489_ (##car _e2453125485_))
                                 (_tl2453325492_ (##cdr _e2453125485_)))
                             (if (gx#stx-pair? _tl2453325492_)
                                 (let ((_e2453425495_
                                        (gx#syntax-e _tl2453325492_)))
                                   (let ((_hd2453525499_ (##car _e2453425495_))
                                         (_tl2453625502_
                                          (##cdr _e2453425495_)))
                                     (if (gx#stx-null? _tl2453625502_)
                                         ((lambda (_L25505_ _L25507_)
                                            (let* ((_g2552325538_
                                                    (lambda (_g2552425534_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2552425534_)))
                                                   (_g2552225587_
                                                    (lambda (_g2552425542_)
                                                      (if (gx#stx-pair?
                                                           _g2552425542_)
                                                          (let ((_e2552725545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2552425542_)))
                    (let ((_hd2552825549_ (##car _e2552725545_))
                          (_tl2552925552_ (##cdr _e2552725545_)))
                      (if (gx#stx-pair? _tl2552925552_)
                          (let ((_e2553025555_ (gx#syntax-e _tl2552925552_)))
                            (let ((_hd2553125559_ (##car _e2553025555_))
                                  (_tl2553225562_ (##cdr _e2553025555_)))
                              (if (gx#stx-null? _tl2553225562_)
                                  ((lambda (_L25565_ _L25567_)
                                     (let ()
                                       (cons 'if
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L24474_ '()))
                                                   (cons (let ((_hd-pat25583_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25507_))
                       (_tl-pat25585_ (gx#stx-e _L25505_)))
                   (if (if (equal? _hd-pat25583_ '(any:))
                           (equal? _tl-pat25585_ '(any:))
                           '#f)
                       _K24456_
                       (if (equal? _tl-pat25585_ '(any:))
                           (cons 'let
                                 (cons (cons (cons _L25567_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##car)
                                                               (cons _L24474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())
                                       (cons (_generate122860_
                                              _L25567_
                                              _L25507_
                                              _K24456_
                                              _E24457_)
                                             '())))
                           (if (equal? _hd-pat25583_ '(any:))
                               (cons 'let
                                     (cons (cons (cons _L25565_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _L24474_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate122860_
                                                  _L25565_
                                                  _L25505_
                                                  _K24456_
                                                  _E24457_)
                                                 '())))
                               (cons 'let
                                     (cons (cons (cons _L25567_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _L24474_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L25565_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _L24474_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (_generate122860_
                                                  _L25567_
                                                  _L25507_
                                                  (_generate122860_
                                                   _L25565_
                                                   _L25505_
                                                   _K24456_
                                                   _E24457_)
                                                  _E24457_)
                                                 '())))))))
                 (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2553125559_
                                   _hd2552825549_)
                                  (_g2552325538_ _g2552425542_))))
                          (_g2552325538_ _g2552425542_))))
                  (_g2552325538_ _g2552425542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2552225587_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2453525499_
                                          _hd2453225489_)
                                         (_g2449025468_ _g2450225472_))))
                                 (_g2449025468_ _g2450225472_))))
                         (_g2449025468_ _g2450225472_))
                     (_g2449025468_ _g2450225472_))
                 (_g2449025468_ _g2450225472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449025468_
                                                  _g2450225472_))))
                                          (_g2448825631_
                                           (lambda (_g2450225595_)
                                             (if (gx#stx-pair? _g2450225595_)
                                                 (let ((_e2452025598_
                                                        (gx#syntax-e
                                                         _g2450225595_)))
                                                   (let ((_hd2452125602_
                                                          (##car _e2452025598_))
                                                         (_tl2452225605_
                                                          (##cdr _e2452025598_)))
                                                     (if (gx#stx-datum?
                                                          _hd2452125602_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2452125602_)
                             'not:)
                     (if (gx#stx-pair? _tl2452225605_)
                         (let ((_e2452325608_ (gx#syntax-e _tl2452225605_)))
                           (let ((_hd2452425612_ (##car _e2452325608_))
                                 (_tl2452525615_ (##cdr _e2452325608_)))
                             (if (gx#stx-null? _tl2452525615_)
                                 ((lambda (_L25618_)
                                    (_generate122860_
                                     _tgt24453_
                                     _L25618_
                                     _E24457_
                                     _K24456_))
                                  _hd2452425612_)
                                 (_g2448925591_ _g2450225595_))))
                         (_g2448925591_ _g2450225595_))
                     (_g2448925591_ _g2450225595_))
                 (_g2448925591_ _g2450225595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448925591_
                                                  _g2450225595_))))
                                          (_g2448725719_
                                           (lambda (_g2450225635_)
                                             (if (gx#stx-pair? _g2450225635_)
                                                 (let ((_e2451625638_
                                                        (gx#syntax-e
                                                         _g2450225635_)))
                                                   (let ((_hd2451725642_
                                                          (##car _e2451625638_))
                                                         (_tl2451825645_
                                                          (##cdr _e2451625638_)))
                                                     (if (gx#stx-datum?
                                                          _hd2451725642_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2451725642_)
                             'or:)
                     ((lambda (_L25648_)
                        (let* ((_g2566025672_
                                (lambda (_g2566125668_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2566125668_)))
                               (_g2565925683_
                                (lambda (_g2566125676_)
                                  ((lambda () _E24457_))))
                               (_g2565825715_
                                (lambda (_g2566125687_)
                                  (if (gx#stx-pair? _g2566125687_)
                                      (let ((_e2566425690_
                                             (gx#syntax-e _g2566125687_)))
                                        (let ((_hd2566525694_
                                               (##car _e2566425690_))
                                              (_tl2566625697_
                                               (##cdr _e2566425690_)))
                                          ((lambda (_L25700_ _L25702_)
                                             (_generate122860_
                                              _tgt24453_
                                              _L25702_
                                              _K24456_
                                              (_generate122860_
                                               _tgt24453_
                                               (cons 'or: _L25700_)
                                               _K24456_
                                               _E24457_)))
                                           _tl2566625697_
                                           _hd2566525694_)))
                                      (_g2565925683_ _g2566125687_)))))
                          (_g2565825715_ _L25648_)))
                      _tl2451825645_)
                     (_g2448825631_ _g2450225635_))
                 (_g2448825631_ _g2450225635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448825631_
                                                  _g2450225635_))))
                                          (_g2448625807_
                                           (lambda (_g2450225723_)
                                             (if (gx#stx-pair? _g2450225723_)
                                                 (let ((_e2451225726_
                                                        (gx#syntax-e
                                                         _g2450225723_)))
                                                   (let ((_hd2451325730_
                                                          (##car _e2451225726_))
                                                         (_tl2451425733_
                                                          (##cdr _e2451225726_)))
                                                     (if (gx#stx-datum?
                                                          _hd2451325730_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2451325730_)
                             'and:)
                     ((lambda (_L25736_)
                        (let* ((_g2574825760_
                                (lambda (_g2574925756_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2574925756_)))
                               (_g2574725771_
                                (lambda (_g2574925764_)
                                  ((lambda () _K24456_))))
                               (_g2574625803_
                                (lambda (_g2574925775_)
                                  (if (gx#stx-pair? _g2574925775_)
                                      (let ((_e2575225778_
                                             (gx#syntax-e _g2574925775_)))
                                        (let ((_hd2575325782_
                                               (##car _e2575225778_))
                                              (_tl2575425785_
                                               (##cdr _e2575225778_)))
                                          ((lambda (_L25788_ _L25790_)
                                             (_generate122860_
                                              _tgt24453_
                                              _L25790_
                                              (_generate122860_
                                               _tgt24453_
                                               (cons 'and: _L25788_)
                                               _K24456_
                                               _E24457_)
                                              _E24457_))
                                           _tl2575425785_
                                           _hd2575325782_)))
                                      (_g2574725771_ _g2574925775_)))))
                          (_g2574625803_ _L25736_)))
                      _tl2451425733_)
                     (_g2448725719_ _g2450225723_))
                 (_g2448725719_ _g2450225723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448725719_
                                                  _g2450225723_))))
                                          (_g2448526096_
                                           (lambda (_g2450225811_)
                                             (if (gx#stx-pair? _g2450225811_)
                                                 (let ((_e2450525814_
                                                        (gx#syntax-e
                                                         _g2450225811_)))
                                                   (let ((_hd2450625818_
                                                          (##car _e2450525814_))
                                                         (_tl2450725821_
                                                          (##cdr _e2450525814_)))
                                                     (if (gx#stx-datum?
                                                          _hd2450625818_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2450625818_)
                             '?:)
                     (if (gx#stx-pair? _tl2450725821_)
                         (let ((_e2450825824_ (gx#syntax-e _tl2450725821_)))
                           (let ((_hd2450925828_ (##car _e2450825824_))
                                 (_tl2451025831_ (##cdr _e2450825824_)))
                             ((lambda (_L25834_ _L25836_)
                                (let* ((_g2585225884_
                                        (lambda (_g2585325880_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2585325880_)))
                                       (_g2585125982_
                                        (lambda (_g2585325888_)
                                          (if (gx#stx-pair? _g2585325888_)
                                              (let ((_e2586725891_
                                                     (gx#syntax-e
                                                      _g2585325888_)))
                                                (let ((_hd2586825895_
                                                       (##car _e2586725891_))
                                                      (_tl2586925898_
                                                       (##cdr _e2586725891_)))
                                                  (if (gx#stx-datum?
                                                       _hd2586825895_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2586825895_)
                          '::)
                  (if (gx#stx-pair? _tl2586925898_)
                      (let ((_e2587025901_ (gx#syntax-e _tl2586925898_)))
                        (let ((_hd2587125905_ (##car _e2587025901_))
                              (_tl2587225908_ (##cdr _e2587025901_)))
                          (if (gx#stx-pair? _tl2587225908_)
                              (let ((_e2587325911_
                                     (gx#syntax-e _tl2587225908_)))
                                (let ((_hd2587425915_ (##car _e2587325911_))
                                      (_tl2587525918_ (##cdr _e2587325911_)))
                                  (if (gx#stx-datum? _hd2587425915_)
                                      (if (equal? (gx#stx-e _hd2587425915_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2587525918_)
                                              (let ((_e2587625921_
                                                     (gx#syntax-e
                                                      _tl2587525918_)))
                                                (let ((_hd2587725925_
                                                       (##car _e2587625921_))
                                                      (_tl2587825928_
                                                       (##cdr _e2587625921_)))
                                                  (if (gx#stx-null?
                                                       _tl2587825928_)
                                                      ((lambda (_L25931_
                                                                _L25933_)
                                                         (let* ((_g2595125959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2595225955_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2595225955_)))
                        (_g2595025978_
                         (lambda (_g2595225963_)
                           ((lambda (_L25966_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25836_
                                                        (cons _L24474_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L25966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25933_ (cons _L24474_ '()))
                                        '()))
                            '())
                      (cons (_generate122860_
                             _L25966_
                             _L25931_
                             _K24456_
                             _E24457_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24457_ '()))))))
                            _g2595225963_))))
                   (_g2595025978_ (gx#genident 'e))))
               _hd2587725925_
               _hd2587125905_)
              (_g2585225884_ _g2585325888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585225884_ _g2585325888_))
                                          (_g2585225884_ _g2585325888_))
                                      (_g2585225884_ _g2585325888_))))
                              (_g2585225884_ _g2585325888_))))
                      (_g2585225884_ _g2585325888_))
                  (_g2585225884_ _g2585325888_))
              (_g2585225884_ _g2585325888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585225884_ _g2585325888_))))
                                       (_g2585026053_
                                        (lambda (_g2585325986_)
                                          (if (gx#stx-pair? _g2585325986_)
                                              (let ((_e2585925989_
                                                     (gx#syntax-e
                                                      _g2585325986_)))
                                                (let ((_hd2586025993_
                                                       (##car _e2585925989_))
                                                      (_tl2586125996_
                                                       (##cdr _e2585925989_)))
                                                  (if (gx#stx-datum?
                                                       _hd2586025993_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2586025993_)
                          '=>:)
                  (if (gx#stx-pair? _tl2586125996_)
                      (let ((_e2586225999_ (gx#syntax-e _tl2586125996_)))
                        (let ((_hd2586326003_ (##car _e2586225999_))
                              (_tl2586426006_ (##cdr _e2586225999_)))
                          (if (gx#stx-null? _tl2586426006_)
                              ((lambda (_L26009_)
                                 (let* ((_g2602226030_
                                         (lambda (_g2602326026_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2602326026_)))
                                        (_g2602126049_
                                         (lambda (_g2602326034_)
                                           ((lambda (_L26037_)
                                              (let ()
                                                (cons 'let
                                                      (cons (cons (cons _L26037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25836_ (cons _L24474_ '())) '()))
                          '())
                    (cons (cons 'if
                                (cons _L26037_
                                      (cons (_generate122860_
                                             _L26037_
                                             _L26009_
                                             _K24456_
                                             _E24457_)
                                            (cons _E24457_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2602326034_))))
                                   (_g2602126049_ (gx#genident 'e))))
                               _hd2586326003_)
                              (_g2585125982_ _g2585325986_))))
                      (_g2585125982_ _g2585325986_))
                  (_g2585125982_ _g2585325986_))
              (_g2585125982_ _g2585325986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585125982_ _g2585325986_))))
                                       (_g2584926081_
                                        (lambda (_g2585326057_)
                                          (if (gx#stx-pair? _g2585326057_)
                                              (let ((_e2585526060_
                                                     (gx#syntax-e
                                                      _g2585326057_)))
                                                (let ((_hd2585626064_
                                                       (##car _e2585526060_))
                                                      (_tl2585726067_
                                                       (##cdr _e2585526060_)))
                                                  (if (gx#stx-null?
                                                       _tl2585726067_)
                                                      ((lambda (_L26070_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25836_ (cons _L24474_ '())))
                             (cons (_generate122860_
                                    _tgt24453_
                                    _L26070_
                                    _K24456_
                                    _E24457_)
                                   (cons _E24457_ '())))))
               _hd2585626064_)
              (_g2585026053_ _g2585326057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585026053_ _g2585326057_))))
                                       (_g2584826092_
                                        (lambda (_g2585326085_)
                                          (if (gx#stx-null? _g2585326085_)
                                              ((lambda ()
                                                 (cons 'if
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25836_ (cons _L24474_ '())))
                     (cons _K24456_ (cons _E24457_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2584926081_ _g2585326085_)))))
                                  (_g2584826092_ _L25834_)))
                              _tl2451025831_
                              _hd2450925828_)))
                         (_g2448625807_ _g2450225811_))
                     (_g2448625807_ _g2450225811_))
                 (_g2448625807_ _g2450225811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448625807_
                                                  _g2450225811_)))))
                                     (_g2448526096_ _ptree24455_))))
                               _g2446024471_))))
                      (_g2445826100_ _tgt24453_))))
                 (_generate-splice22862_
                  (lambda (_tgt23825_ _hd23827_ _rest23828_ _K23829_ _E23830_)
                    (let* ((_g2383223849_
                            (lambda (_g2383323845_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2383323845_)))
                           (_g2383124449_
                            (lambda (_g2383323853_)
                              (if (gx#stx-pair/null? _g2383323853_)
                                  (if (fx>= (gx#stx-length _g2383323853_) '0)
                                      (let ((_g35435_
                                             (gx#syntax-split-splice
                                              _g2383323853_
                                              '0)))
                                        (begin
                                          (let ((_g35436_
                                                 (if (##values? _g35435_)
                                                     (##vector-length _g35435_)
                                                     1)))
                                            (if (not (##fx= _g35436_ 2))
                                                (error "Context expects 2 values"
                                                       _g35436_)))
                                          (let ((_target2383523856_
                                                 (##vector-ref _g35435_ 0))
                                                (_tl2383723859_
                                                 (##vector-ref _g35435_ 1)))
                                            (if (gx#stx-null? _tl2383723859_)
                                                (letrec ((_loop2383823862_
                                                          (lambda (_hd2383623866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2384223869_)
                    (if (gx#stx-pair? _hd2383623866_)
                        (let ((_e2383923872_ (gx#syntax-e _hd2383623866_)))
                          (let ((_lp-hd2384023876_ (##car _e2383923872_))
                                (_lp-tl2384123879_ (##cdr _e2383923872_)))
                            (_loop2383823862_
                             _lp-tl2384123879_
                             (cons _lp-hd2384023876_ _var2384223869_))))
                        (let ((_var2384323882_ (reverse _var2384223869_)))
                          ((lambda (_L23886_)
                             (let ()
                               (let* ((_g2390223919_
                                       (lambda (_g2390323915_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2390323915_)))
                                      (_g2390124437_
                                       (lambda (_g2390323923_)
                                         (if (gx#stx-pair/null? _g2390323923_)
                                             (if (fx>= (gx#stx-length
                                                        _g2390323923_)
                                                       '0)
                                                 (let ((_g35437_
                                                        (gx#syntax-split-splice
                                                         _g2390323923_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35438_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35437_)
                        (##vector-length _g35437_)
                        1)))
               (if (not (##fx= _g35438_ 2))
                   (error "Context expects 2 values" _g35438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2390523926_
                                                            (##vector-ref
                                                             _g35437_
                                                             0))
                                                           (_tl2390723929_
                                                            (##vector-ref
                                                             _g35437_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2390723929_)
                                                           (letrec ((_loop2390823932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2390623936_ _var-r2391223939_)
                               (if (gx#stx-pair? _hd2390623936_)
                                   (let ((_e2390923942_
                                          (gx#syntax-e _hd2390623936_)))
                                     (let ((_lp-hd2391023946_
                                            (##car _e2390923942_))
                                           (_lp-tl2391123949_
                                            (##cdr _e2390923942_)))
                                       (_loop2390823932_
                                        _lp-tl2391123949_
                                        (cons _lp-hd2391023946_
                                              _var-r2391223939_))))
                                   (let ((_var-r2391323952_
                                          (reverse _var-r2391223939_)))
                                     ((lambda (_L23956_)
                                        (let ()
                                          (let* ((_g2397323990_
                                                  (lambda (_g2397423986_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2397423986_)))
                                                 (_g2397224425_
                                                  (lambda (_g2397423994_)
                                                    (if (gx#stx-pair/null?
                                                         _g2397423994_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2397423994_)
                          '0)
                    (let ((_g35439_ (gx#syntax-split-splice _g2397423994_ '0)))
                      (begin
                        (let ((_g35440_
                               (if (##values? _g35439_)
                                   (##vector-length _g35439_)
                                   1)))
                          (if (not (##fx= _g35440_ 2))
                              (error "Context expects 2 values" _g35440_)))
                        (let ((_target2397623997_ (##vector-ref _g35439_ 0))
                              (_tl2397824000_ (##vector-ref _g35439_ 1)))
                          (if (gx#stx-null? _tl2397824000_)
                              (letrec ((_loop2397924003_
                                        (lambda (_hd2397724007_
                                                 _init2398324010_)
                                          (if (gx#stx-pair? _hd2397724007_)
                                              (let ((_e2398024013_
                                                     (gx#syntax-e
                                                      _hd2397724007_)))
                                                (let ((_lp-hd2398124017_
                                                       (##car _e2398024013_))
                                                      (_lp-tl2398224020_
                                                       (##cdr _e2398024013_)))
                                                  (_loop2397924003_
                                                   _lp-tl2398224020_
                                                   (cons _lp-hd2398124017_
                                                         _init2398324010_))))
                                              (let ((_init2398424023_
                                                     (reverse _init2398324010_)))
                                                ((lambda (_L24027_)
                                                   (let ()
                                                     (let* ((_g2404424052_
                                                             (lambda (_g2404524048_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2404524048_)))
                                                            (_g2404324421_
                                                             (lambda (_g2404524056_)
                                                               ((lambda (_L24059_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2407224080_
                                    (lambda (_g2407324076_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2407324076_)))
                                   (_g2407124417_
                                    (lambda (_g2407324084_)
                                      ((lambda (_L24087_)
                                         (let ()
                                           (let* ((_g2410024108_
                                                   (lambda (_g2410124104_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2410124104_)))
                                                  (_g2409924413_
                                                   (lambda (_g2410124112_)
                                                     ((lambda (_L24115_)
                                                        (let ()
                                                          (let* ((_g2412824136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2412924132_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2412924132_)))
                         (_g2412724409_
                          (lambda (_g2412924140_)
                            ((lambda (_L24143_)
                               (let ()
                                 (let* ((_g2415624164_
                                         (lambda (_g2415724160_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2415724160_)))
                                        (_g2415524405_
                                         (lambda (_g2415724168_)
                                           ((lambda (_L24171_)
                                              (let ()
                                                (let* ((_g2418424192_
                                                        (lambda (_g2418524188_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2418524188_)))
                                                       (_g2418324401_
                                                        (lambda (_g2418524196_)
                                                          ((lambda (_L24199_)
                                                             (let ()
                                                               (let* ((_g2421224220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2421324216_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2421324216_)))
                              (_g2421124397_
                               (lambda (_g2421324224_)
                                 ((lambda (_L24227_)
                                    (let ()
                                      (let* ((_g2424024248_
                                              (lambda (_g2424124244_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2424124244_)))
                                             (_g2423924382_
                                              (lambda (_g2424124252_)
                                                ((lambda (_L24255_)
                                                   (let ()
                                                     (let* ((_g2426824276_
                                                             (lambda (_g2426924272_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2426924272_)))
                                                            (_g2426724370_
                                                             (lambda (_g2426924280_)
                                                               ((lambda (_L24283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2429624304_
                                    (lambda (_g2429724300_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2429724300_)))
                                   (_g2429524366_
                                    (lambda (_g2429724308_)
                                      ((lambda (_L24311_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L24087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24199_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2432524336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2432624339_)
                        (cons _g2432524336_ _g2432624339_))
                      '()
                      _L23886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L24227_ '())))
                                   '()))
                       (cons (cons _L24143_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L24171_
                                                           (cons _L24199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2432724342_ _g2432824345_)
                                    (cons _g2432724342_ _g2432824345_))
                                  '()
                                  _L23956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L24311_ '())))
                                         '()))
                             (cons (cons _L24115_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L24199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2432924348_ _g2433024351_)
                                    (cons _g2432924348_ _g2433024351_))
                                  '()
                                  _L23956_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L24199_ '()))
                                     (cons (cons _L24143_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L24199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L24199_
                     (begin
                       '#!void
                       (foldr (lambda (_g2433124354_ _g2433224357_)
                                (cons _g2433124354_ _g2433224357_))
                              '()
                              _L23956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L24283_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L24115_
                             (cons _L24059_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2433324360_
                                                     _g2433424363_)
                                              (cons _g2433324360_
                                                    _g2433424363_))
                                            '()
                                            _L24027_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2429724308_))))
                              (_g2429524366_
                               (_generate122860_
                                _L24171_
                                _hd23827_
                                _L24255_
                                _L24283_)))))
                        _g2426924280_))))
               (_g2426724370_
                (cons _L24087_
                      (cons _L24199_
                            (begin
                              '#!void
                              (foldr (lambda (_g2437324376_ _g2437424379_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2437324376_ '()))
                                             _g2437424379_))
                                     '()
                                     _L23956_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2424124252_))))
                                        (_g2423924382_
                                         (cons _L24115_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24199_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23956_
                                                        _L23886_)
                                                       (foldr (lambda (_g2438524389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2438624392_
                               _g2438724394_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2438624392_
                                          (cons _g2438524389_ '())))
                              _g2438724394_))
                      '()
                      _L23956_
                      _L23886_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2421324224_))))
                         (_g2421124397_
                          (_generate122860_
                           _L24199_
                           _rest23828_
                           _K23829_
                           _E23830_)))))
                   _g2418524196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2418324401_
                                                   (gx#genident 'rest)))))
                                            _g2415724168_))))
                                   (_g2415524405_ (gx#genident 'hd)))))
                             _g2412924140_))))
                    (_g2412724409_ (gx#genident 'splice-try)))))
              _g2410124112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2409924413_
                                              (gx#genident 'splice-loop)))))
                                       _g2407324084_))))
                              (_g2407124417_ (gx#genident 'splice-rest)))))
                        _g2404524056_))))
               (_g2404324421_ _tgt23825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2398424023_))))))
                                (_loop2397924003_ _target2397623997_ '()))
                              (_g2397323990_ _g2397423994_)))))
                    (_g2397323990_ _g2397423994_))
                (_g2397323990_ _g2397423994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2397224425_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2442824431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2442924434_)
                  (cons _g2442824431_ _g2442924434_))
                '()
                _L23886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2391323952_))))))
                     (_loop2390823932_ _target2390523926_ '()))
                   (_g2390223919_ _g2390323923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2390223919_ _g2390323923_))
                                             (_g2390223919_ _g2390323923_)))))
                                 (_g2390124437_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2444024443_
                                                     _g2444124446_)
                                              (cons _g2444024443_
                                                    _g2444124446_))
                                            '()
                                            _L23886_)))))))
                           _var2384323882_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2383823862_
                                                   _target2383523856_
                                                   '()))
                                                (_g2383223849_
                                                 _g2383323853_)))))
                                      (_g2383223849_ _g2383323853_))
                                  (_g2383223849_ _g2383323853_)))))
                      (_g2383124449_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23827_)))))
                 (_generate-simple-vector22863_
                  (lambda (_tgt23667_
                           _body23669_
                           _start23670_
                           _K23671_
                           _E23672_)
                    (let _recur23674_ ((_rest23677_ _body23669_)
                                       (_off23679_ _start23670_))
                      (let* ((_g2368223694_
                              (lambda (_g2368323690_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2368323690_)))
                             (_g2368123705_
                              (lambda (_g2368323698_) ((lambda () _K23671_))))
                             (_g2368023821_
                              (lambda (_g2368323709_)
                                (if (gx#stx-pair? _g2368323709_)
                                    (let ((_e2368623712_
                                           (gx#syntax-e _g2368323709_)))
                                      (let ((_hd2368723716_
                                             (##car _e2368623712_))
                                            (_tl2368823719_
                                             (##cdr _e2368623712_)))
                                        ((lambda (_L23722_ _L23724_)
                                           (let* ((_g2373923758_
                                                   (lambda (_g2374023754_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2374023754_)))
                                                  (_g2373823817_
                                                   (lambda (_g2374023762_)
                                                     (if (gx#stx-pair?
                                                          _g2374023762_)
                                                         (let ((_e2374423765_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2374023762_)))
                   (let ((_hd2374523769_ (##car _e2374423765_))
                         (_tl2374623772_ (##cdr _e2374423765_)))
                     (if (gx#stx-pair? _tl2374623772_)
                         (let ((_e2374723775_ (gx#syntax-e _tl2374623772_)))
                           (let ((_hd2374823779_ (##car _e2374723775_))
                                 (_tl2374923782_ (##cdr _e2374723775_)))
                             (if (gx#stx-pair? _tl2374923782_)
                                 (let ((_e2375023785_
                                        (gx#syntax-e _tl2374923782_)))
                                   (let ((_hd2375123789_ (##car _e2375023785_))
                                         (_tl2375223792_
                                          (##cdr _e2375023785_)))
                                     (if (gx#stx-null? _tl2375223792_)
                                         ((lambda (_L23795_ _L23797_ _L23798_)
                                            (let ()
                                              (cons 'let
                                                    (cons (cons (cons _L23798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23797_ (cons _L23795_ '())))
                                    '()))
                        '())
                  (cons (_generate122860_
                         _L23798_
                         _L23724_
                         (_recur23674_ _L23722_ (fx1+ _off23679_))
                         _E23672_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2375123789_
                                          _hd2374823779_
                                          _hd2374523769_)
                                         (_g2373923758_ _g2374023762_))))
                                 (_g2373923758_ _g2374023762_))))
                         (_g2373923758_ _g2374023762_))))
                 (_g2373923758_ _g2374023762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2373823817_
                                              (list (gx#genident 'e)
                                                    _tgt23667_
                                                    _off23679_))))
                                         _tl2368823719_
                                         _hd2368723716_)))
                                    (_g2368123705_ _g2368323709_)))))
                        (_g2368023821_ _rest23677_)))))
                 (_generate-list-vector22864_
                  (lambda (_tgt23577_
                           _body23579_
                           _tgt->list23580_
                           _start23581_
                           _K23582_
                           _E23583_)
                    (let* ((_g2358523604_
                            (lambda (_g2358623600_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2358623600_)))
                           (_g2358423663_
                            (lambda (_g2358623608_)
                              (if (gx#stx-pair? _g2358623608_)
                                  (let ((_e2359023611_
                                         (gx#syntax-e _g2358623608_)))
                                    (let ((_hd2359123615_
                                           (##car _e2359023611_))
                                          (_tl2359223618_
                                           (##cdr _e2359023611_)))
                                      (if (gx#stx-pair? _tl2359223618_)
                                          (let ((_e2359323621_
                                                 (gx#syntax-e _tl2359223618_)))
                                            (let ((_hd2359423625_
                                                   (##car _e2359323621_))
                                                  (_tl2359523628_
                                                   (##cdr _e2359323621_)))
                                              (if (gx#stx-pair? _tl2359523628_)
                                                  (let ((_e2359623631_
                                                         (gx#syntax-e
                                                          _tl2359523628_)))
                                                    (let ((_hd2359723635_
                                                           (##car _e2359623631_))
                                                          (_tl2359823638_
                                                           (##cdr _e2359623631_)))
                                                      (if (gx#stx-null?
                                                           _tl2359823638_)
                                                          ((lambda (_L23641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23643_
                            _L23644_)
                     (let ()
                       (cons 'let
                             (cons (cons (cons _L23644_
                                               (cons (cons _L23641_
                                                           (cons _L23643_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122860_
                                          _L23644_
                                          _body23579_
                                          _K23582_
                                          _E23583_)
                                         '())))))
                   _hd2359723635_
                   _hd2359423625_
                   _hd2359123615_)
                  (_g2358523604_ _g2358623608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2358523604_
                                                   _g2358623608_))))
                                          (_g2358523604_ _g2358623608_))))
                                  (_g2358523604_ _g2358623608_)))))
                      (_g2358423663_
                       (list (gx#genident 'e) _tgt23577_ _tgt->list23580_)))))
                 (_generate-struct22865_
                  (lambda (_info23247_
                           _tgt23249_
                           _body23250_
                           _K23251_
                           _E23252_)
                    (let* ((_rtd23254_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23247_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23247_)
                                '#f))
                           (_fields23264_
                            (let _lp23257_ ((_rtd23260_ _rtd23254_)
                                            (_k23262_ '0))
                              (if _rtd23260_
                                  (_lp23257_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd23260_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd23260_))
                                        _k23262_))
                                  _k23262_)))
                           (_final?23267_
                            (if _rtd23254_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd23254_))
                                '#f))
                           (_g2327023278_
                            (lambda (_g2327123274_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2327123274_)))
                           (_g2326923573_
                            (lambda (_g2327123282_)
                              ((lambda (_L23285_)
                                 (let ()
                                   (let* ((_g2330023308_
                                           (lambda (_g2330123304_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2330123304_)))
                                          (_g2329923475_
                                           (lambda (_g2330123312_)
                                             ((lambda (_L23315_)
                                                (let ()
                                                  (let ()
                                                    (let* ((_g2333123352_
                                                            (lambda (_g2333223348_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2333223348_)))
                                                           (_g2333023395_
                                                            (lambda (_g2333223356_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2333223356_)
                          (let ((_e2334123359_ (gx#syntax-e _g2333223356_)))
                            (let ((_hd2334223363_ (##car _e2334123359_))
                                  (_tl2334323366_ (##cdr _e2334123359_)))
                              (if (gx#stx-datum? _hd2334223363_)
                                  (if (equal? (gx#stx-e _hd2334223363_) 'list:)
                                      (if (gx#stx-pair? _tl2334323366_)
                                          (let ((_e2334423369_
                                                 (gx#syntax-e _tl2334323366_)))
                                            (let ((_hd2334523373_
                                                   (##car _e2334423369_))
                                                  (_tl2334623376_
                                                   (##cdr _e2334423369_)))
                                              (if (gx#stx-null? _tl2334623376_)
                                                  ((lambda (_L23379_)
                                                     (cons 'if
                                                           (cons _L23315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_generate-list-vector22864_
                                _tgt23249_
                                _L23379_
                                (gx#datum->syntax '#f 'struct->list)
                                '1
                                _K23251_
                                _E23252_)
                               (cons _E23252_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2334523373_)
                                                  (_g2333123352_
                                                   _g2333223356_))))
                                          (_g2333123352_ _g2333223356_))
                                      (_g2333123352_ _g2333223356_))
                                  (_g2333123352_ _g2333223356_))))
                          (_g2333123352_ _g2333223356_))))
                   (_g2332923471_
                    (lambda (_g2333223399_)
                      (if (gx#stx-pair? _g2333223399_)
                          (let ((_e2333423402_ (gx#syntax-e _g2333223399_)))
                            (let ((_hd2333523406_ (##car _e2333423402_))
                                  (_tl2333623409_ (##cdr _e2333423402_)))
                              (if (gx#stx-datum? _hd2333523406_)
                                  (if (equal? (gx#stx-e _hd2333523406_)
                                              'simple:)
                                      (if (gx#stx-pair? _tl2333623409_)
                                          (let ((_e2333723412_
                                                 (gx#syntax-e _tl2333623409_)))
                                            (let ((_hd2333823416_
                                                   (##car _e2333723412_))
                                                  (_tl2333923419_
                                                   (##cdr _e2333723412_)))
                                              (if (gx#stx-null? _tl2333923419_)
                                                  ((lambda (_L23422_)
                                                     (let ((_K23435_
                                                            (_generate-simple-vector22863_
                                                             _tgt23249_
                                                             _L23422_
                                                             '1
                                                             _K23251_
                                                             _E23252_))
                                                           (_len23437_
                                                            (gx#stx-length
                                                             _L23422_)))
                                                       (if (if _rtd23254_
                                                               (fx<= _len23437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _fields23264_)
                       '#f)
                   (cons 'if
                         (cons _L23315_ (cons _K23435_ (cons _E23252_ '()))))
                   (let* ((_g2343923447_
                           (lambda (_g2344023443_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2344023443_)))
                          (_g2343823467_
                           (lambda (_g2344023451_)
                             ((lambda (_L23454_)
                                (let ()
                                  (cons 'if
                                        (cons _L23315_
                                              (cons (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx<)
                              (cons _L23454_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##vector-length)
                                                (cons _L23285_ '()))
                                          '())))
                        (cons _K23435_ (cons _E23252_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _E23252_ '()))))))
                              _g2344023451_))))
                     (_g2343823467_ _len23437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2333823416_)
                                                  (_g2333023395_
                                                   _g2333223399_))))
                                          (_g2333023395_ _g2333223399_))
                                      (_g2333023395_ _g2333223399_))
                                  (_g2333023395_ _g2333223399_))))
                          (_g2333023395_ _g2333223399_)))))
              (_g2332923471_ _body23250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2330123312_))))
                                     (_g2329923475_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info23247_)
                                          (let* ((_g2347923487_
                                                  (lambda (_g2348023483_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2348023483_)))
                                                 (_g2347823506_
                                                  (lambda (_g2348023491_)
                                                    ((lambda (_L23494_)
                                                       (let ()
                                                         (cons _L23494_
                                                               (cons _L23285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2348023491_))))
                                            (_g2347823506_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info23247_))))
                                          (let* ((_g2351023525_
                                                  (lambda (_g2351123521_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2351123521_)))
                                                 (_g2350923569_
                                                  (lambda (_g2351123529_)
                                                    (if (gx#stx-pair?
                                                         _g2351123529_)
                                                        (let ((_e2351423532_
                                                               (gx#syntax-e
                                                                _g2351123529_)))
                                                          (let ((_hd2351523536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2351423532_))
                        (_tl2351623539_ (##cdr _e2351423532_)))
                    (if (gx#stx-pair? _tl2351623539_)
                        (let ((_e2351723542_ (gx#syntax-e _tl2351623539_)))
                          (let ((_hd2351823546_ (##car _e2351723542_))
                                (_tl2351923549_ (##cdr _e2351723542_)))
                            (if (gx#stx-null? _tl2351923549_)
                                ((lambda (_L23552_ _L23554_)
                                   (let ()
                                     (cons _L23552_
                                           (cons _L23554_
                                                 (cons _L23285_ '())))))
                                 _hd2351823546_
                                 _hd2351523536_)
                                (_g2351023525_ _g2351123529_))))
                        (_g2351023525_ _g2351123529_))))
                (_g2351023525_ _g2351123529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2350923569_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info23247_)
                                                   (if _final?23267_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2327123282_))))
                      (_g2326923573_ _tgt23249_))))
                 (_generate-class22866_
                  (lambda (_info22868_
                           _tgt22870_
                           _body22871_
                           _K22872_
                           _E22873_)
                    (letrec* ((_rtd22875_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22868_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22868_)
                                   '#f))
                              (_known-slot?22877_
                               (if _rtd22875_
                                   (lambda (_key23241_)
                                     (let ((_slot23244_
                                            (keyword->symbol
                                             (gx#stx-e _key23241_))))
                                       (_rtd-known-slot?22879_
                                        _rtd22875_
                                        _slot23244_)))
                                   false))
                              (_final?22878_
                               (if _rtd22875_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22875_))
                                   '#f))
                              (_rtd-known-slot?22879_
                               (lambda (_rtd23228_ _slot23230_)
                                 (if _rtd23228_
                                     (let ((_$e23232_
                                            (memq _slot23230_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd23228_))))
                                       (if _$e23232_
                                           _$e23232_
                                           (ormap (lambda (_g2323523237_)
                                                    (_rtd-known-slot?22879_
                                                     _g2323523237_
                                                     _slot23230_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd23228_)))))
                                     '#f)))
                              (_recur22880_
                               (lambda (_klass23014_ _rest23016_)
                                 (let* ((_g2301923035_
                                         (lambda (_g2302023031_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2302023031_)))
                                        (_g2301823046_
                                         (lambda (_g2302023039_)
                                           ((lambda () _K22872_))))
                                        (_g2301723224_
                                         (lambda (_g2302023050_)
                                           (if (gx#stx-pair? _g2302023050_)
                                               (let ((_e2302423053_
                                                      (gx#syntax-e
                                                       _g2302023050_)))
                                                 (let ((_hd2302523057_
                                                        (##car _e2302423053_))
                                                       (_tl2302623060_
                                                        (##cdr _e2302423053_)))
                                                   (if (gx#stx-pair?
                                                        _tl2302623060_)
                                                       (let ((_e2302723063_
                                                              (gx#syntax-e
                                                               _tl2302623060_)))
                                                         (let ((_hd2302823067_
                                                                (##car _e2302723063_))
                                                               (_tl2302923070_
                                                                (##cdr _e2302723063_)))
                                                           ((lambda (_L23073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23075_
                             _L23076_)
                      (let* ((_g2309223100_
                              (lambda (_g2309323096_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2309323096_)))
                             (_g2309123220_
                              (lambda (_g2309323104_)
                                ((lambda (_L23107_)
                                   (let ()
                                     (let* ((_g2311923127_
                                             (lambda (_g2312023123_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2312023123_)))
                                            (_g2311823216_
                                             (lambda (_g2312023131_)
                                               ((lambda (_L23134_)
                                                  (let ()
                                                    (let* ((_g2314723155_
                                                            (lambda (_g2314823151_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2314823151_)))
                                                           (_g2314623212_
                                                            (lambda (_g2314823159_)
                                                              ((lambda (_L23162_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2317523183_
                                   (lambda (_g2317623179_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2317623179_)))
                                  (_g2317423208_
                                   (lambda (_g2317623187_)
                                     ((lambda (_L23190_)
                                        (let ()
                                          (let ((_K23203_
                                                 (cons 'let
                                                       (cons (cons (cons _L23190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L23107_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L23162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122860_
                            _L23190_
                            _L23075_
                            (_recur22880_ _klass23014_ _L23073_)
                            _E22873_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22877_ _L23076_)
                                                (cons 'let
                                                      (cons (cons (cons _L23162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23134_
                                                  (cons _L23076_ '())))
                                      '()))
                          '())
                    (cons _K23203_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'let
                                                      (cons (cons (cons _L23162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23134_
                                                  (cons _L23076_ '())))
                                      '()))
                          '())
                    (cons (cons 'if
                                (cons _L23162_
                                      (cons _K23203_ (cons _E22873_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2317623187_))))
                             (_g2317423208_ (gx#genident 'e)))))
                       _g2314823159_))))
              (_g2314623212_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2312023131_))))
                                       (_g2311823216_ _klass23014_))))
                                 _g2309323104_))))
                        (_g2309123220_ _tgt22870_)))
                    _tl2302923070_
                    _hd2302823067_
                    _hd2302523057_)))
               (_g2301823046_ _g2302023050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2301823046_
                                                _g2302023050_)))))
                                   (_g2301723224_ _rest23016_)))))
                      (let* ((_g2288222890_
                              (lambda (_g2288322886_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2288322886_)))
                             (_g2288123010_
                              (lambda (_g2288322894_)
                                ((lambda (_L22897_)
                                   (let ()
                                     (let* ((_g2291222920_
                                             (lambda (_g2291322916_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2291322916_)))
                                            (_g2291123006_
                                             (lambda (_g2291322924_)
                                               ((lambda (_L22927_)
                                                  (let ()
                                                    (let* ((_g2294022948_
                                                            (lambda (_g2294122944_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2294122944_)))
                                                           (_g2293923002_
                                                            (lambda (_g2294122952_)
                                                              ((lambda (_L22955_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2296822976_
                                   (lambda (_g2296922972_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2296922972_)))
                                  (_g2296722998_
                                   (lambda (_g2296922980_)
                                     ((lambda (_L22983_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L22983_
                                                              (cons _L22955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22927_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L22897_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22927_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22880_ _L22897_ _body22871_)
                                        '())))
                      (cons _E22873_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2296922980_))))
                             (_g2296722998_
                              (if _final?22878_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2294122952_))))
              (_g2293923002_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2291322924_))))
                                       (_g2291123006_ _tgt22870_))))
                                 _g2288322894_))))
                        (_g2288123010_ (gx#genident 'class)))))))
          (_generate122860_ _tgt22855_ _ptree22856_ _K22857_ _E22858_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21790_ _tgt-lst21792_ _clauses21793_)
        (letrec ((_parse-body21795_
                  (lambda (_hd-len22675_)
                    (let _lp22678_ ((_rest22681_ _clauses21793_)
                                    (_r22683_ '()))
                      (let* ((_g2268622698_
                              (lambda (_g2268722694_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2268722694_)))
                             (_g2268522709_
                              (lambda (_g2268722702_) ((lambda () _r22683_))))
                             (_g2268422849_
                              (lambda (_g2268722713_)
                                (if (gx#stx-pair? _g2268722713_)
                                    (let ((_e2269022716_
                                           (gx#syntax-e _g2268722713_)))
                                      (let ((_hd2269122720_
                                             (##car _e2269022716_))
                                            (_tl2269222723_
                                             (##cdr _e2269022716_)))
                                        ((lambda (_L22726_ _L22728_)
                                           (let* ((_g2274522761_
                                                   (lambda (_g2274622757_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2274622757_)))
                                                  (_g2274422772_
                                                   (lambda (_g2274622765_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21790_
                                                         _L22728_)))))
                                                  (_g2274322813_
                                                   (lambda (_g2274622776_)
                                                     (if (gx#stx-pair?
                                                          _g2274622776_)
                                                         (let ((_e2275322779_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2274622776_)))
                   (let ((_hd2275422783_ (##car _e2275322779_))
                         (_tl2275522786_ (##cdr _e2275322779_)))
                     ((lambda (_L22789_ _L22791_)
                        (if (if (gx#stx-list? _L22791_)
                                (if (fx= (gx#stx-length _L22791_)
                                         _hd-len22675_)
                                    (if (gx#stx-list? _L22789_)
                                        (not (gx#stx-null? _L22789_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22678_
                             _L22726_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2280322805_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2280322805_
                                                   _stx21790_))
                                                _L22791_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22789_)
                                                      (let ((_$e22809_
                                                             (gx#stx-source
                                                              _L22728_)))
                                                        (if _$e22809_
                                                            _$e22809_
                                                            (gx#stx-source
                                                             _stx21790_))))
                                                     '())))
                                   _r22683_))
                            (_g2274422772_ _g2274622776_)))
                      _tl2275522786_
                      _hd2275422783_)))
                 (_g2274422772_ _g2274622776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2274222845_
                                                   (lambda (_g2274622817_)
                                                     (if (gx#stx-pair?
                                                          _g2274622817_)
                                                         (let ((_e2274822820_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2274622817_)))
                   (let ((_hd2274922824_ (##car _e2274822820_))
                         (_tl2275022827_ (##cdr _e2274822820_)))
                     (if (gx#identifier? _hd2274922824_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g35441_|
                              _hd2274922824_)
                             ((lambda (_L22830_)
                                (if (if (gx#stx-list? _L22830_)
                                        (not (gx#stx-null? _L22830_))
                                        '#f)
                                    (if (gx#stx-null? _L22726_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22830_)
                         (let ((_$e22841_ (gx#stx-source _L22728_)))
                           (if _$e22841_
                               _$e22841_
                               (gx#stx-source _stx21790_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22683_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21790_
                                         _L22728_))
                                    (_g2274322813_ _g2274622817_)))
                              _tl2275022827_)
                             (_g2274322813_ _g2274622817_))
                         (_g2274322813_ _g2274622817_))))
                 (_g2274322813_ _g2274622817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2274222845_ _L22728_)))
                                         _tl2269222723_
                                         _hd2269122720_)))
                                    (_g2268522709_ _g2268722713_)))))
                        (_g2268422849_ _rest22681_)))))
                 (_generate-body21797_
                  (lambda (_body22460_)
                    (let* ((_g2246322471_
                            (lambda (_g2246422467_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2246422467_)))
                           (_g2246222671_
                            (lambda (_g2246422475_)
                              ((lambda (_L22478_)
                                 (let ()
                                   (let* ((_g2249022507_
                                           (lambda (_g2249122503_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2249122503_)))
                                          (_g2248922667_
                                           (lambda (_g2249122511_)
                                             (if (gx#stx-pair/null?
                                                  _g2249122511_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2249122511_)
                                                           '0)
                                                     (let ((_g35442_
                                                            (gx#syntax-split-splice
                                                             _g2249122511_
                                                             '0)))
                                                       (begin
                                                         (let ((_g35443_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g35442_)
                            (##vector-length _g35442_)
                            1)))
                   (if (not (##fx= _g35443_ 2))
                       (error "Context expects 2 values" _g35443_)))
                 (let ((_target2249322514_ (##vector-ref _g35442_ 0))
                       (_tl2249522517_ (##vector-ref _g35442_ 1)))
                   (if (gx#stx-null? _tl2249522517_)
                       (letrec ((_loop2249622520_
                                 (lambda (_hd2249422524_ _target2250022527_)
                                   (if (gx#stx-pair? _hd2249422524_)
                                       (let ((_e2249722530_
                                              (gx#syntax-e _hd2249422524_)))
                                         (let ((_lp-hd2249822534_
                                                (##car _e2249722530_))
                                               (_lp-tl2249922537_
                                                (##cdr _e2249722530_)))
                                           (_loop2249622520_
                                            _lp-tl2249922537_
                                            (cons _lp-hd2249822534_
                                                  _target2250022527_))))
                                       (let ((_target2250122540_
                                              (reverse _target2250022527_)))
                                         ((lambda (_L22544_)
                                            (let ()
                                              (let* ((_g2256122569_
                                                      (lambda (_g2256222565_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2256222565_)))
                                                     (_g2256022655_
                                                      (lambda (_g2256222573_)
                                                        ((lambda (_L22576_)
                                                           (let ()
                                                             (let* ((_g2258922597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2259022593_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2259022593_)))
                            (_g2258822651_
                             (lambda (_g2259022601_)
                               ((lambda (_L22604_)
                                  (let ()
                                    (let* ((_g2261722625_
                                            (lambda (_g2261822621_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2261822621_)))
                                           (_g2261622647_
                                            (lambda (_g2261822629_)
                                              ((lambda (_L22632_)
                                                 (let ()
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'begin-annotation)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@match)
                         (cons _L22632_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2261822629_))))
                                      (_g2261622647_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L22478_
                                                                (cons _L22576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L22604_ '())))
                                        (gx#stx-source _stx21790_))))))
                                _g2259022601_))))
                       (_g2258822651_
                        (_generate-clauses21798_
                         _body22460_
                         (cons _L22478_ '()))))))
                 _g2256222573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2256022655_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'error)
                                  (cons '"No clause matching"
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2265822661_
                                                          _g2265922664_)
                                                   (cons _g2265822661_
                                                         _g2265922664_))
                                                 '()
                                                 _L22544_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21790_))))))
                                          _target2250122540_))))))
                         (_loop2249622520_ _target2249322514_ '()))
                       (_g2249022507_ _g2249122511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2249022507_
                                                      _g2249122511_))
                                                 (_g2249022507_
                                                  _g2249122511_)))))
                                     (_g2248922667_ _tgt-lst21792_))))
                               _g2246422475_))))
                      (_g2246222671_ (gx#genident 'E)))))
                 (_generate-clauses21798_
                  (lambda (_rest22112_ _E22114_)
                    (let* ((_g2211822134_
                            (lambda (_g2211922130_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2211922130_)))
                           (_g2211722145_
                            (lambda (_g2211922138_)
                              ((lambda ()
                                 (cons 'begin-annotation
                                       (cons '@match-body
                                             (cons _E22114_ '())))))))
                           (_g2211622351_
                            (lambda (_g2211922149_)
                              (if (gx#stx-pair? _g2211922149_)
                                  (let ((_e2212622152_
                                         (gx#syntax-e _g2211922149_)))
                                    (let ((_hd2212722156_
                                           (##car _e2212622152_))
                                          (_tl2212822159_
                                           (##cdr _e2212622152_)))
                                      ((lambda (_L22162_ _L22164_)
                                         (let* ((_g2217722196_
                                                 (lambda (_g2217822192_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2217822192_)))
                                                (_g2217622347_
                                                 (lambda (_g2217822200_)
                                                   (if (gx#stx-pair?
                                                        _g2217822200_)
                                                       (let ((_e2218222203_
                                                              (gx#syntax-e
                                                               _g2217822200_)))
                                                         (let ((_hd2218322207_
                                                                (##car _e2218222203_))
                                                               (_tl2218422210_
                                                                (##cdr _e2218222203_)))
                                                           (if (gx#stx-pair?
                                                                _tl2218422210_)
                                                               (let ((_e2218522213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2218422210_)))
                         (let ((_hd2218622217_ (##car _e2218522213_))
                               (_tl2218722220_ (##cdr _e2218522213_)))
                           (if (gx#stx-pair? _tl2218722220_)
                               (let ((_e2218822223_
                                      (gx#syntax-e _tl2218722220_)))
                                 (let ((_hd2218922227_ (##car _e2218822223_))
                                       (_tl2219022230_ (##cdr _e2218822223_)))
                                   (if (gx#stx-null? _tl2219022230_)
                                       ((lambda (_L22233_ _L22235_ _L22236_)
                                          (if (gx#stx-e _L22235_)
                                              (let* ((_g2225322268_
                                                      (lambda (_g2225422264_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2225422264_)))
                                                     (_g2225222313_
                                                      (lambda (_g2225422272_)
                                                        (if (gx#stx-pair?
                                                             _g2225422272_)
                                                            (let ((_e2225722275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2225422272_)))
                      (let ((_hd2225822279_ (##car _e2225722275_))
                            (_tl2225922282_ (##cdr _e2225722275_)))
                        (if (gx#stx-pair? _tl2225922282_)
                            (let ((_e2226022285_ (gx#syntax-e _tl2225922282_)))
                              (let ((_hd2226122289_ (##car _e2226022285_))
                                    (_tl2226222292_ (##cdr _e2226022285_)))
                                (if (gx#stx-null? _tl2226222292_)
                                    ((lambda (_L22295_ _L22297_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L22236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '() (cons _L22297_ '())))
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22295_ '())))))
                                     _hd2226122289_
                                     _hd2225822279_)
                                    (_g2225322268_ _g2225422272_))))
                            (_g2225322268_ _g2225422272_))))
                    (_g2225322268_ _g2225422272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2225222313_
                                                 (list (_generate121799_
                                                        _L22235_
                                                        _L22233_
                                                        _E22114_)
                                                       (_generate-clauses21798_
                                                        _L22162_
                                                        (cons _L22236_ '())))))
                                              (let* ((_g2231722325_
                                                      (lambda (_g2231822321_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2231822321_)))
                                                     (_g2231622343_
                                                      (lambda (_g2231822329_)
                                                        ((lambda (_L22332_)
                                                           (let ()
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let)
                           (cons (cons (cons _L22236_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@match-else)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons '() (cons _L22233_ '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons _L22332_ '())))))
                 _g2231822329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2231622343_
                                                 (_generate-clauses21798_
                                                  _L22162_
                                                  (cons _L22236_ '()))))))
                                        _hd2218922227_
                                        _hd2218622217_
                                        _hd2218322207_)
                                       (_g2217722196_ _g2217822200_))))
                               (_g2217722196_ _g2217822200_))))
                       (_g2217722196_ _g2217822200_))))
               (_g2217722196_ _g2217822200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2217622347_ _L22164_)))
                                       _tl2212822159_
                                       _hd2212722156_)))
                                  (_g2211722145_ _g2211922149_))))
                           (_g2211522456_
                            (lambda (_g2211922355_)
                              (if (gx#stx-pair? _g2211922355_)
                                  (let ((_e2212122358_
                                         (gx#syntax-e _g2211922355_)))
                                    (let ((_hd2212222362_
                                           (##car _e2212122358_))
                                          (_tl2212322365_
                                           (##cdr _e2212122358_)))
                                      (if (gx#stx-null? _tl2212322365_)
                                          ((lambda (_L22368_)
                                             (let* ((_g2237922397_
                                                     (lambda (_g2238022393_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2238022393_)))
                                                    (_g2237822452_
                                                     (lambda (_g2238022401_)
                                                       (if (gx#stx-pair?
                                                            _g2238022401_)
                                                           (let ((_e2238322404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2238022401_)))
                     (let ((_hd2238422408_ (##car _e2238322404_))
                           (_tl2238522411_ (##cdr _e2238322404_)))
                       (if (gx#stx-pair? _tl2238522411_)
                           (let ((_e2238622414_ (gx#syntax-e _tl2238522411_)))
                             (let ((_hd2238722418_ (##car _e2238622414_))
                                   (_tl2238822421_ (##cdr _e2238622414_)))
                               (if (gx#stx-pair? _tl2238822421_)
                                   (let ((_e2238922424_
                                          (gx#syntax-e _tl2238822421_)))
                                     (let ((_hd2239022428_
                                            (##car _e2238922424_))
                                           (_tl2239122431_
                                            (##cdr _e2238922424_)))
                                       (if (gx#stx-null? _tl2239122431_)
                                           ((lambda (_L22434_ _L22436_)
                                              (cons 'begin-annotation
                                                    (cons '@match-body
                                                          (cons (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22436_)
                            (_generate121799_ _L22436_ _L22434_ _E22114_)
                            _L22434_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2239022428_
                                            _hd2238722418_)
                                           (_g2237922397_ _g2238022401_))))
                                   (_g2237922397_ _g2238022401_))))
                           (_g2237922397_ _g2238022401_))))
                   (_g2237922397_ _g2238022401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2237822452_ _L22368_)))
                                           _hd2212222362_)
                                          (_g2211622351_ _g2211922355_))))
                                  (_g2211622351_ _g2211922355_)))))
                      (_g2211522456_ _rest22112_))))
                 (_generate121799_
                  (lambda (_clause21801_ _body21803_ _E21804_)
                    (let _recur21806_ ((_rest21809_ _clause21801_)
                                       (_rest-targets21811_ _tgt-lst21792_))
                      (let* ((_g2181421826_
                              (lambda (_g2181521822_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2181521822_)))
                             (_g2181321837_
                              (lambda (_g2181521830_)
                                ((lambda () _body21803_))))
                             (_g2181222108_
                              (lambda (_g2181521841_)
                                (if (gx#stx-pair? _g2181521841_)
                                    (let ((_e2181821844_
                                           (gx#syntax-e _g2181521841_)))
                                      (let ((_hd2181921848_
                                             (##car _e2181821844_))
                                            (_tl2182021851_
                                             (##cdr _e2181821844_)))
                                        ((lambda (_L21854_ _L21856_)
                                           (let* ((_g2187321885_
                                                   (lambda (_g2187421881_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2187421881_)))
                                                  (_g2187222104_
                                                   (lambda (_g2187421889_)
                                                     (if (gx#stx-pair?
                                                          _g2187421889_)
                                                         (let ((_e2187721892_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2187421889_)))
                   (let ((_hd2187821896_ (##car _e2187721892_))
                         (_tl2187921899_ (##cdr _e2187721892_)))
                     ((lambda (_L21902_ _L21904_)
                        (let* ((_g2191621924_
                                (lambda (_g2191721920_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2191721920_)))
                               (_g2191522100_
                                (lambda (_g2191721928_)
                                  ((lambda (_L21931_)
                                     (let ()
                                       (let* ((_g2194321960_
                                               (lambda (_g2194421956_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2194421956_)))
                                              (_g2194222096_
                                               (lambda (_g2194421964_)
                                                 (if (gx#stx-pair/null?
                                                      _g2194421964_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2194421964_)
                                                               '0)
                                                         (let ((_g35444_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2194421964_
                         '0)))
                   (begin
                     (let ((_g35445_
                            (if (##values? _g35444_)
                                (##vector-length _g35444_)
                                1)))
                       (if (not (##fx= _g35445_ 2))
                           (error "Context expects 2 values" _g35445_)))
                     (let ((_target2194621967_ (##vector-ref _g35444_ 0))
                           (_tl2194821970_ (##vector-ref _g35444_ 1)))
                       (if (gx#stx-null? _tl2194821970_)
                           (letrec ((_loop2194921973_
                                     (lambda (_hd2194721977_ _var2195321980_)
                                       (if (gx#stx-pair? _hd2194721977_)
                                           (let ((_e2195021983_
                                                  (gx#syntax-e
                                                   _hd2194721977_)))
                                             (let ((_lp-hd2195121987_
                                                    (##car _e2195021983_))
                                                   (_lp-tl2195221990_
                                                    (##cdr _e2195021983_)))
                                               (_loop2194921973_
                                                _lp-tl2195221990_
                                                (cons _lp-hd2195121987_
                                                      _var2195321980_))))
                                           (let ((_var2195421993_
                                                  (reverse _var2195321980_)))
                                             ((lambda (_L21997_)
                                                (let ()
                                                  (let* ((_g2201422022_
                                                          (lambda (_g2201522018_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2201522018_)))
                                                         (_g2201322092_
                                                          (lambda (_g2201522026_)
                                                            ((lambda (_L22029_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2204222050_
                                 (lambda (_g2204322046_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2204322046_)))
                                (_g2204122080_
                                 (lambda (_g2204322054_)
                                   ((lambda (_L22057_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2207122074_
                                                              _g2207222077_)
                                                       (cons _g2207122074_
                                                             _g2207222077_))
                                                     '()
                                                     _L21997_))
                                            (cons _L22029_ '())))
                                '()))
                    '())
              (cons _L22057_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2204322054_))))
                           (_g2204122080_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21790_
                             _L21904_
                             _L21856_
                             (cons _L21931_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2208322086_
                                                     _g2208422089_)
                                              (cons _g2208322086_
                                                    _g2208422089_))
                                            '()
                                            _L21997_)))
                             _E21804_)))))
                     _g2201522026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2201322092_
                                                     (_recur21806_
                                                      _L21854_
                                                      _L21902_)))))
                                              _var2195421993_))))))
                             (_loop2194921973_ _target2194621967_ '()))
                           (_g2194321960_ _g2194421964_)))))
                 (_g2194321960_ _g2194421964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2194321960_
                                                      _g2194421964_)))))
                                         (_g2194222096_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21856_)))))
                                   _g2191721928_))))
                          (_g2191522100_ (gx#genident 'K))))
                      _tl2187921899_
                      _hd2187821896_)))
                 (_g2187321885_ _g2187421889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2187222104_
                                              _rest-targets21811_)))
                                         _tl2182021851_
                                         _hd2181921848_)))
                                    (_g2181321837_ _g2181521841_)))))
                        (_g2181222108_ _rest21809_))))))
          (_generate-body21797_
           (_parse-body21795_ (gx#stx-length _tgt-lst21792_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21692_ _tgt21694_ _clauses21695_)
        (letrec ((_reclause21697_
                  (lambda (_clause21700_)
                    (let* ((_g2170521720_
                            (lambda (_g2170621716_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2170621716_)))
                           (_g2170421731_
                            (lambda (_g2170621724_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21692_
                                  _clause21700_)))))
                           (_g2170321765_
                            (lambda (_g2170621735_)
                              (if (gx#stx-pair? _g2170621735_)
                                  (let ((_e2171221738_
                                         (gx#syntax-e _g2170621735_)))
                                    (let ((_hd2171321742_
                                           (##car _e2171221738_))
                                          (_tl2171421745_
                                           (##cdr _e2171221738_)))
                                      ((lambda (_L21748_ _L21750_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21750_ '()) _L21748_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2171421745_
                                       _hd2171321742_)))
                                  (_g2170421731_ _g2170621735_))))
                           (_g2170221786_
                            (lambda (_g2170621769_)
                              (if (gx#stx-pair? _g2170621769_)
                                  (let ((_e2170721772_
                                         (gx#syntax-e _g2170621769_)))
                                    (let ((_hd2170821776_
                                           (##car _e2170721772_))
                                          (_tl2170921779_
                                           (##cdr _e2170721772_)))
                                      (if (gx#identifier? _hd2170821776_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g35446_|
                                               _hd2170821776_)
                                              ((lambda () _clause21700_))
                                              (_g2170321765_ _g2170621769_))
                                          (_g2170321765_ _g2170621769_))))
                                  (_g2170321765_ _g2170621769_)))))
                      (_g2170221786_ _clause21700_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21692_
           (cons _tgt21694_ '())
           (gx#stx-map _reclause21697_ _clauses21695_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29028_)
        (let* ((_g2903329062_
                (lambda (_g2903429058_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2903429058_)))
               (_g2903229170_
                (lambda (_g2903429066_)
                  (if (gx#stx-pair? _g2903429066_)
                      (let ((_e2905129069_ (gx#syntax-e _g2903429066_)))
                        (let ((_hd2905229073_ (##car _e2905129069_))
                              (_tl2905329076_ (##cdr _e2905129069_)))
                          (if (gx#stx-pair? _tl2905329076_)
                              (let ((_e2905429079_
                                     (gx#syntax-e _tl2905329076_)))
                                (let ((_hd2905529083_ (##car _e2905429079_))
                                      (_tl2905629086_ (##cdr _e2905429079_)))
                                  ((lambda (_L29089_ _L29091_)
                                     (if (gx#stx-list? _L29089_)
                                         (let* ((_g2910529113_
                                                 (lambda (_g2910629109_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2910629109_)))
                                                (_g2910429166_
                                                 (lambda (_g2910629117_)
                                                   ((lambda (_L29120_)
                                                      (let ()
                                                        (let* ((_g2913229140_
                                                                (lambda (_g2913329136_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2913329136_)))
                       (_g2913129162_
                        (lambda (_g2913329144_)
                          ((lambda (_L29147_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L29120_
                                                         (cons _L29091_ '()))
                                                   '())
                                             (cons _L29147_ '()))))))
                           _g2913329144_))))
                  (_g2913129162_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx29028_
                    _L29120_
                    _L29089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2910629117_))))
                                           (_g2910429166_
                                            (gx#genident _L29091_)))
                                         (_g2903329062_ _g2903429066_)))
                                   _tl2905629086_
                                   _hd2905529083_)))
                              (_g2903329062_ _g2903429066_))))
                      (_g2903329062_ _g2903429066_))))
               (_g2903129275_
                (lambda (_g2903429174_)
                  (if (gx#stx-pair? _g2903429174_)
                      (let ((_e2904329177_ (gx#syntax-e _g2903429174_)))
                        (let ((_hd2904429181_ (##car _e2904329177_))
                              (_tl2904529184_ (##cdr _e2904329177_)))
                          (if (gx#stx-pair? _tl2904529184_)
                              (let ((_e2904629187_
                                     (gx#syntax-e _tl2904529184_)))
                                (let ((_hd2904729191_ (##car _e2904629187_))
                                      (_tl2904829194_ (##cdr _e2904629187_)))
                                  (if (gx#identifier? _hd2904729191_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35447_|
                                           _hd2904729191_)
                                          ((lambda (_L29197_)
                                             (if (gx#stx-list? _L29197_)
                                                 (let* ((_g2921029218_
                                                         (lambda (_g2921129214_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2921129214_)))
                                                        (_g2920929271_
                                                         (lambda (_g2921129222_)
                                                           ((lambda (_L29225_)
                                                              (let ()
                                                                (let* ((_g2923729245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2923829241_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2923829241_)))
                               (_g2923629267_
                                (lambda (_g2923829249_)
                                  ((lambda (_L29252_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L29225_
                                                     (cons _L29252_ '()))))))
                                   _g2923829249_))))
                          (_g2923629267_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29225_ _L29197_))
                            (gx#stx-source _stx29028_))))))
                    _g2921129222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2920929271_
                                                    (gx#genident 'args)))
                                                 (_g2903229170_
                                                  _g2903429174_)))
                                           _tl2904829194_)
                                          (_g2903229170_ _g2903429174_))
                                      (_g2903229170_ _g2903429174_))))
                              (_g2903229170_ _g2903429174_))))
                      (_g2903229170_ _g2903429174_))))
               (_g2903029380_
                (lambda (_g2903429279_)
                  (if (gx#stx-pair? _g2903429279_)
                      (let ((_e2903629282_ (gx#syntax-e _g2903429279_)))
                        (let ((_hd2903729286_ (##car _e2903629282_))
                              (_tl2903829289_ (##cdr _e2903629282_)))
                          (if (gx#stx-pair? _tl2903829289_)
                              (let ((_e2903929292_
                                     (gx#syntax-e _tl2903829289_)))
                                (let ((_hd2904029296_ (##car _e2903929292_))
                                      (_tl2904129299_ (##cdr _e2903929292_)))
                                  (if (gx#identifier? _hd2904029296_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35448_|
                                           _hd2904029296_)
                                          ((lambda (_L29302_)
                                             (if (gx#stx-list? _L29302_)
                                                 (let* ((_g2931529323_
                                                         (lambda (_g2931629319_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2931629319_)))
                                                        (_g2931429376_
                                                         (lambda (_g2931629327_)
                                                           ((lambda (_L29330_)
                                                              (let ()
                                                                (let* ((_g2934229350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2934329346_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2934329346_)))
                               (_g2934129372_
                                (lambda (_g2934329354_)
                                  ((lambda (_L29357_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L29330_ '())
                                                     (cons _L29357_ '()))))))
                                   _g2934329354_))))
                          (_g2934129372_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29330_ _L29302_))
                            (gx#stx-source _stx29028_))))))
                    _g2931629327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2931429376_
                                                    (gx#genident 'e)))
                                                 (_g2903129275_
                                                  _g2903429279_)))
                                           _tl2904129299_)
                                          (_g2903129275_ _g2903429279_))
                                      (_g2903129275_ _g2903429279_))))
                              (_g2903129275_ _g2903429279_))))
                      (_g2903129275_ _g2903429279_)))))
          (_g2903029380_ _stx29028_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29384_)
        (let* ((_g2938729411_
                (lambda (_g2938829407_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2938829407_)))
               (_g2938629623_
                (lambda (_g2938829415_)
                  (if (gx#stx-pair? _g2938829415_)
                      (let ((_e2939129418_ (gx#syntax-e _g2938829415_)))
                        (let ((_hd2939229422_ (##car _e2939129418_))
                              (_tl2939329425_ (##cdr _e2939129418_)))
                          (if (gx#stx-pair? _tl2939329425_)
                              (let ((_e2939429428_
                                     (gx#syntax-e _tl2939329425_)))
                                (let ((_hd2939529432_ (##car _e2939429428_))
                                      (_tl2939629435_ (##cdr _e2939429428_)))
                                  (if (gx#stx-pair/null? _hd2939529432_)
                                      (if (fx>= (gx#stx-length _hd2939529432_)
                                                '0)
                                          (let ((_g35449_
                                                 (gx#syntax-split-splice
                                                  _hd2939529432_
                                                  '0)))
                                            (begin
                                              (let ((_g35450_
                                                     (if (##values? _g35449_)
                                                         (##vector-length
                                                          _g35449_)
                                                         1)))
                                                (if (not (##fx= _g35450_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35450_)))
                                              (let ((_target2939729438_
                                                     (##vector-ref _g35449_ 0))
                                                    (_tl2939929441_
                                                     (##vector-ref
                                                      _g35449_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2939929441_)
                                                    (letrec ((_loop2940029444_
                                                              (lambda (_hd2939829448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2940429451_)
                        (if (gx#stx-pair? _hd2939829448_)
                            (let ((_e2940129454_ (gx#syntax-e _hd2939829448_)))
                              (let ((_lp-hd2940229458_ (##car _e2940129454_))
                                    (_lp-tl2940329461_ (##cdr _e2940129454_)))
                                (_loop2940029444_
                                 _lp-tl2940329461_
                                 (cons _lp-hd2940229458_ _e2940429451_))))
                            (let ((_e2940529464_ (reverse _e2940429451_)))
                              ((lambda (_L29468_ _L29470_)
                                 (if (gx#stx-list? _L29468_)
                                     (let* ((_g2948829505_
                                             (lambda (_g2948929501_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2948929501_)))
                                            (_g2948729611_
                                             (lambda (_g2948929509_)
                                               (if (gx#stx-pair/null?
                                                    _g2948929509_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2948929509_)
                                                             '0)
                                                       (let ((_g35451_
                                                              (gx#syntax-split-splice
                                                               _g2948929509_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35451_)
                              (##vector-length _g35451_)
                              1)))
                     (if (not (##fx= _g35452_ 2))
                         (error "Context expects 2 values" _g35452_)))
                   (let ((_target2949129512_ (##vector-ref _g35451_ 0))
                         (_tl2949329515_ (##vector-ref _g35451_ 1)))
                     (if (gx#stx-null? _tl2949329515_)
                         (letrec ((_loop2949429518_
                                   (lambda (_hd2949229522_ _$e2949829525_)
                                     (if (gx#stx-pair? _hd2949229522_)
                                         (let ((_e2949529528_
                                                (gx#syntax-e _hd2949229522_)))
                                           (let ((_lp-hd2949629532_
                                                  (##car _e2949529528_))
                                                 (_lp-tl2949729535_
                                                  (##cdr _e2949529528_)))
                                             (_loop2949429518_
                                              _lp-tl2949729535_
                                              (cons _lp-hd2949629532_
                                                    _$e2949829525_))))
                                         (let ((_$e2949929538_
                                                (reverse _$e2949829525_)))
                                           ((lambda (_L29542_)
                                              (let ()
                                                (let* ((_g2955829566_
                                                        (lambda (_g2955929562_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2955929562_)))
                                                       (_g2955729599_
                                                        (lambda (_g2955929570_)
                                                          ((lambda (_L29573_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29470_
                                        _L29542_)
                                       (foldr (lambda (_g2958729591_
                                                       _g2958829594_
                                                       _g2958929596_)
                                                (cons (cons _g2958829594_
                                                            (cons _g2958729591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2958929596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29470_
                                              _L29542_))
                                     (cons _L29573_ '()))))))
                   _g2955929570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2955729599_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx29384_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2960229605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2960329608_)
                       (cons _g2960229605_ _g2960329608_))
                     '()
                     _L29542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L29468_)))))
                                            _$e2949929538_))))))
                           (_loop2949429518_ _target2949129512_ '()))
                         (_g2948829505_ _g2948929509_)))))
               (_g2948829505_ _g2948929509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2948829505_
                                                    _g2948929509_)))))
                                       (_g2948729611_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2961429617_
                                                           _g2961529620_)
                                                    (cons _g2961429617_
                                                          _g2961529620_))
                                                  '()
                                                  _L29470_)))))
                                     (_g2938729411_ _g2938829415_)))
                               _tl2939629435_
                               _e2940529464_))))))
              (_loop2940029444_ _target2939729438_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2938729411_
                                                     _g2938829415_)))))
                                          (_g2938729411_ _g2938829415_))
                                      (_g2938729411_ _g2938829415_))))
                              (_g2938729411_ _g2938829415_))))
                      (_g2938729411_ _g2938829415_)))))
          (_g2938629623_ _stx29384_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29629_)
        (let* ((_g2963529718_
                (lambda (_g2963629714_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2963629714_)))
               (_g2963429879_
                (lambda (_g2963629722_)
                  (if (gx#stx-pair? _g2963629722_)
                      (let ((_e2968129725_ (gx#syntax-e _g2963629722_)))
                        (let ((_hd2968229729_ (##car _e2968129725_))
                              (_tl2968329732_ (##cdr _e2968129725_)))
                          (if (gx#stx-pair? _tl2968329732_)
                              (let ((_e2968429735_
                                     (gx#syntax-e _tl2968329732_)))
                                (let ((_hd2968529739_ (##car _e2968429735_))
                                      (_tl2968629742_ (##cdr _e2968429735_)))
                                  (if (gx#stx-pair/null? _hd2968529739_)
                                      (if (fx>= (gx#stx-length _hd2968529739_)
                                                '0)
                                          (let ((_g35453_
                                                 (gx#syntax-split-splice
                                                  _hd2968529739_
                                                  '0)))
                                            (begin
                                              (let ((_g35454_
                                                     (if (##values? _g35453_)
                                                         (##vector-length
                                                          _g35453_)
                                                         1)))
                                                (if (not (##fx= _g35454_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35454_)))
                                              (let ((_target2968729745_
                                                     (##vector-ref _g35453_ 0))
                                                    (_tl2968929748_
                                                     (##vector-ref
                                                      _g35453_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2968929748_)
                                                    (letrec ((_loop2969029751_
                                                              (lambda (_hd2968829755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2969429758_
                               _hd2969529760_)
                        (if (gx#stx-pair? _hd2968829755_)
                            (let ((_e2969129763_ (gx#syntax-e _hd2968829755_)))
                              (let ((_lp-hd2969229767_ (##car _e2969129763_))
                                    (_lp-tl2969329770_ (##cdr _e2969129763_)))
                                (if (gx#stx-pair? _lp-hd2969229767_)
                                    (let ((_e2969829773_
                                           (gx#syntax-e _lp-hd2969229767_)))
                                      (let ((_hd2969929777_
                                             (##car _e2969829773_))
                                            (_tl2970029780_
                                             (##cdr _e2969829773_)))
                                        (if (gx#stx-pair? _tl2970029780_)
                                            (let ((_e2970129783_
                                                   (gx#syntax-e
                                                    _tl2970029780_)))
                                              (let ((_hd2970229787_
                                                     (##car _e2970129783_))
                                                    (_tl2970329790_
                                                     (##cdr _e2970129783_)))
                                                (if (gx#stx-null?
                                                     _tl2970329790_)
                                                    (_loop2969029751_
                                                     _lp-tl2969329770_
                                                     (cons _hd2970229787_
                                                           _expr2969429758_)
                                                     (cons _hd2969929777_
                                                           _hd2969529760_))
                                                    (_g2963529718_
                                                     _g2963629722_))))
                                            (_g2963529718_ _g2963629722_))))
                                    (_g2963529718_ _g2963629722_))))
                            (let ((_expr2969629793_ (reverse _expr2969429758_))
                                  (_hd2969729796_ (reverse _hd2969529760_)))
                              (if (gx#stx-pair/null? _tl2968629742_)
                                  (if (fx>= (gx#stx-length _tl2968629742_) '0)
                                      (let ((_g35455_
                                             (gx#syntax-split-splice
                                              _tl2968629742_
                                              '0)))
                                        (begin
                                          (let ((_g35456_
                                                 (if (##values? _g35455_)
                                                     (##vector-length _g35455_)
                                                     1)))
                                            (if (not (##fx= _g35456_ 2))
                                                (error "Context expects 2 values"
                                                       _g35456_)))
                                          (let ((_target2970429799_
                                                 (##vector-ref _g35455_ 0))
                                                (_tl2970629802_
                                                 (##vector-ref _g35455_ 1)))
                                            (if (gx#stx-null? _tl2970629802_)
                                                (letrec ((_loop2970729805_
                                                          (lambda (_hd2970529809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2971129812_)
                    (if (gx#stx-pair? _hd2970529809_)
                        (let ((_e2970829815_ (gx#syntax-e _hd2970529809_)))
                          (let ((_lp-hd2970929819_ (##car _e2970829815_))
                                (_lp-tl2971029822_ (##cdr _e2970829815_)))
                            (_loop2970729805_
                             _lp-tl2971029822_
                             (cons _lp-hd2970929819_ _body2971129812_))))
                        (let ((_body2971229825_ (reverse _body2971129812_)))
                          ((lambda (_L29829_ _L29831_ _L29832_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2985429861_
                                                           _g2985529864_)
                                                    (cons _g2985429861_
                                                          _g2985529864_))
                                                  '()
                                                  _L29831_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2985629867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2985729870_)
                        (cons _g2985629867_ _g2985729870_))
                      '()
                      _L29832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2985829873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2985929876_)
                        (cons _g2985829873_ _g2985929876_))
                      '()
                      _L29829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2971229825_
                           _expr2969629793_
                           _hd2969729796_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2970729805_
                                                   _target2970429799_
                                                   '()))
                                                (_g2963529718_
                                                 _g2963629722_)))))
                                      (_g2963529718_ _g2963629722_))
                                  (_g2963529718_ _g2963629722_)))))))
              (_loop2969029751_ _target2968729745_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2963529718_
                                                     _g2963629722_)))))
                                          (_g2963529718_ _g2963629722_))
                                      (_g2963529718_ _g2963629722_))))
                              (_g2963529718_ _g2963629722_))))
                      (_g2963529718_ _g2963629722_))))
               (_g2963329991_
                (lambda (_g2963629883_)
                  (if (gx#stx-pair? _g2963629883_)
                      (let ((_e2965729886_ (gx#syntax-e _g2963629883_)))
                        (let ((_hd2965829890_ (##car _e2965729886_))
                              (_tl2965929893_ (##cdr _e2965729886_)))
                          (if (gx#stx-pair? _tl2965929893_)
                              (let ((_e2966029896_
                                     (gx#syntax-e _tl2965929893_)))
                                (let ((_hd2966129900_ (##car _e2966029896_))
                                      (_tl2966229903_ (##cdr _e2966029896_)))
                                  (if (gx#stx-pair? _hd2966129900_)
                                      (let ((_e2966329906_
                                             (gx#syntax-e _hd2966129900_)))
                                        (let ((_hd2966429910_
                                               (##car _e2966329906_))
                                              (_tl2966529913_
                                               (##cdr _e2966329906_)))
                                          (if (gx#stx-pair? _tl2966529913_)
                                              (let ((_e2966629916_
                                                     (gx#syntax-e
                                                      _tl2966529913_)))
                                                (let ((_hd2966729920_
                                                       (##car _e2966629916_))
                                                      (_tl2966829923_
                                                       (##cdr _e2966629916_)))
                                                  (if (gx#stx-null?
                                                       _tl2966829923_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2966229903_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2966229903_)
                            '0)
                      (let ((_g35457_
                             (gx#syntax-split-splice _tl2966229903_ '0)))
                        (begin
                          (let ((_g35458_
                                 (if (##values? _g35457_)
                                     (##vector-length _g35457_)
                                     1)))
                            (if (not (##fx= _g35458_ 2))
                                (error "Context expects 2 values" _g35458_)))
                          (let ((_target2966929926_ (##vector-ref _g35457_ 0))
                                (_tl2967129929_ (##vector-ref _g35457_ 1)))
                            (if (gx#stx-null? _tl2967129929_)
                                (letrec ((_loop2967229932_
                                          (lambda (_hd2967029936_
                                                   _body2967629939_)
                                            (if (gx#stx-pair? _hd2967029936_)
                                                (let ((_e2967329942_
                                                       (gx#syntax-e
                                                        _hd2967029936_)))
                                                  (let ((_lp-hd2967429946_
                                                         (##car _e2967329942_))
                                                        (_lp-tl2967529949_
                                                         (##cdr _e2967329942_)))
                                                    (_loop2967229932_
                                                     _lp-tl2967529949_
                                                     (cons _lp-hd2967429946_
                                                           _body2967629939_))))
                                                (let ((_body2967729952_
                                                       (reverse _body2967629939_)))
                                                  ((lambda (_L29956_
                                                            _L29958_
                                                            _L29959_
                                                            _L29960_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29959_)
                                                         (cons _L29960_
                                                               (cons (cons (cons _L29959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29958_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2998229985_ _g2998329988_)
                                        (cons _g2998229985_ _g2998329988_))
                                      '()
                                      _L29956_))))
                 (_g2963429879_ _g2963629883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2967729952_
                                                   _hd2966729920_
                                                   _hd2966429910_
                                                   _hd2965829890_))))))
                                  (_loop2967229932_ _target2966929926_ '()))
                                (_g2963429879_ _g2963629883_)))))
                      (_g2963429879_ _g2963629883_))
                  (_g2963429879_ _g2963629883_))
              (_g2963429879_ _g2963629883_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2963429879_ _g2963629883_))))
                                      (_g2963429879_ _g2963629883_))))
                              (_g2963429879_ _g2963629883_))))
                      (_g2963429879_ _g2963629883_))))
               (_g2963230073_
                (lambda (_g2963629995_)
                  (if (gx#stx-pair? _g2963629995_)
                      (let ((_e2963829998_ (gx#syntax-e _g2963629995_)))
                        (let ((_hd2963930002_ (##car _e2963829998_))
                              (_tl2964030005_ (##cdr _e2963829998_)))
                          (if (gx#stx-pair? _tl2964030005_)
                              (let ((_e2964130008_
                                     (gx#syntax-e _tl2964030005_)))
                                (let ((_hd2964230012_ (##car _e2964130008_))
                                      (_tl2964330015_ (##cdr _e2964130008_)))
                                  (if (gx#stx-null? _hd2964230012_)
                                      (if (gx#stx-pair/null? _tl2964330015_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2964330015_)
                                                    '0)
                                              (let ((_g35459_
                                                     (gx#syntax-split-splice
                                                      _tl2964330015_
                                                      '0)))
                                                (begin
                                                  (let ((_g35460_
                                                         (if (##values?
                                                              _g35459_)
                                                             (##vector-length
                                                              _g35459_)
                                                             1)))
                                                    (if (not (##fx= _g35460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2964430018_
                                                         (##vector-ref
                                                          _g35459_
                                                          0))
                                                        (_tl2964630021_
                                                         (##vector-ref
                                                          _g35459_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2964630021_)
                                                        (letrec ((_loop2964730024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2964530028_ _body2965130031_)
                            (if (gx#stx-pair? _hd2964530028_)
                                (let ((_e2964830034_
                                       (gx#syntax-e _hd2964530028_)))
                                  (let ((_lp-hd2964930038_
                                         (##car _e2964830034_))
                                        (_lp-tl2965030041_
                                         (##cdr _e2964830034_)))
                                    (_loop2964730024_
                                     _lp-tl2965030041_
                                     (cons _lp-hd2964930038_
                                           _body2965130031_))))
                                (let ((_body2965230044_
                                       (reverse _body2965130031_)))
                                  ((lambda (_L30048_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3006430067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3006530070_)
                    (cons _g3006430067_ _g3006530070_))
                  '()
                  _L30048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2965230044_))))))
                  (_loop2964730024_ _target2964430018_ '()))
                (_g2963329991_ _g2963629995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2963329991_ _g2963629995_))
                                          (_g2963329991_ _g2963629995_))
                                      (_g2963329991_ _g2963629995_))))
                              (_g2963329991_ _g2963629995_))))
                      (_g2963329991_ _g2963629995_)))))
          (_g2963230073_ _$stx29629_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx30081_)
        (let* ((_g3008630138_
                (lambda (_g3008730134_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3008730134_)))
               (_g3008530221_
                (lambda (_g3008730142_)
                  (if (gx#stx-pair? _g3008730142_)
                      (let ((_e3011830145_ (gx#syntax-e _g3008730142_)))
                        (let ((_hd3011930149_ (##car _e3011830145_))
                              (_tl3012030152_ (##cdr _e3011830145_)))
                          (if (gx#stx-pair? _tl3012030152_)
                              (let ((_e3012130155_
                                     (gx#syntax-e _tl3012030152_)))
                                (let ((_hd3012230159_ (##car _e3012130155_))
                                      (_tl3012330162_ (##cdr _e3012130155_)))
                                  (if (gx#stx-null? _hd3012230159_)
                                      (if (gx#stx-pair/null? _tl3012330162_)
                                          (if (fx>= (gx#stx-length
                                                     _tl3012330162_)
                                                    '0)
                                              (let ((_g35461_
                                                     (gx#syntax-split-splice
                                                      _tl3012330162_
                                                      '0)))
                                                (begin
                                                  (let ((_g35462_
                                                         (if (##values?
                                                              _g35461_)
                                                             (##vector-length
                                                              _g35461_)
                                                             1)))
                                                    (if (not (##fx= _g35462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3012430165_
                                                         (##vector-ref
                                                          _g35461_
                                                          0))
                                                        (_tl3012630168_
                                                         (##vector-ref
                                                          _g35461_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3012630168_)
                                                        (letrec ((_loop3012730171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3012530175_ _body3013130178_)
                            (if (gx#stx-pair? _hd3012530175_)
                                (let ((_e3012830181_
                                       (gx#syntax-e _hd3012530175_)))
                                  (let ((_lp-hd3012930185_
                                         (##car _e3012830181_))
                                        (_lp-tl3013030188_
                                         (##cdr _e3012830181_)))
                                    (_loop3012730171_
                                     _lp-tl3013030188_
                                     (cons _lp-hd3012930185_
                                           _body3013130178_))))
                                (let ((_body3013230191_
                                       (reverse _body3013130178_)))
                                  ((lambda (_L30195_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3021230215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3021330218_)
                    (cons _g3021230215_ _g3021330218_))
                  '()
                  _L30195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body3013230191_))))))
                  (_loop3012730171_ _target3012430165_ '()))
                (_g3008630138_ _g3008730142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3008630138_ _g3008730142_))
                                          (_g3008630138_ _g3008730142_))
                                      (_g3008630138_ _g3008730142_))))
                              (_g3008630138_ _g3008730142_))))
                      (_g3008630138_ _g3008730142_))))
               (_g3008430347_
                (lambda (_g3008730225_)
                  (if (gx#stx-pair? _g3008730225_)
                      (let ((_e3009330228_ (gx#syntax-e _g3008730225_)))
                        (let ((_hd3009430232_ (##car _e3009330228_))
                              (_tl3009530235_ (##cdr _e3009330228_)))
                          (if (gx#stx-pair? _tl3009530235_)
                              (let ((_e3009630238_
                                     (gx#syntax-e _tl3009530235_)))
                                (let ((_hd3009730242_ (##car _e3009630238_))
                                      (_tl3009830245_ (##cdr _e3009630238_)))
                                  (if (gx#stx-pair? _hd3009730242_)
                                      (let ((_e3009930248_
                                             (gx#syntax-e _hd3009730242_)))
                                        (let ((_hd3010030252_
                                               (##car _e3009930248_))
                                              (_tl3010130255_
                                               (##cdr _e3009930248_)))
                                          (if (gx#stx-pair? _hd3010030252_)
                                              (let ((_e3010230258_
                                                     (gx#syntax-e
                                                      _hd3010030252_)))
                                                (let ((_hd3010330262_
                                                       (##car _e3010230258_))
                                                      (_tl3010430265_
                                                       (##cdr _e3010230258_)))
                                                  (if (gx#stx-pair?
                                                       _tl3010430265_)
                                                      (let ((_e3010530268_
                                                             (gx#syntax-e
                                                              _tl3010430265_)))
                                                        (let ((_hd3010630272_
                                                               (##car _e3010530268_))
                                                              (_tl3010730275_
                                                               (##cdr _e3010530268_)))
                                                          (if (gx#stx-null?
                                                               _tl3010730275_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3009830245_)
                          (if (fx>= (gx#stx-length _tl3009830245_) '0)
                              (let ((_g35463_
                                     (gx#syntax-split-splice
                                      _tl3009830245_
                                      '0)))
                                (begin
                                  (let ((_g35464_
                                         (if (##values? _g35463_)
                                             (##vector-length _g35463_)
                                             1)))
                                    (if (not (##fx= _g35464_ 2))
                                        (error "Context expects 2 values"
                                               _g35464_)))
                                  (let ((_target3010830278_
                                         (##vector-ref _g35463_ 0))
                                        (_tl3011030281_
                                         (##vector-ref _g35463_ 1)))
                                    (if (gx#stx-null? _tl3011030281_)
                                        (letrec ((_loop3011130284_
                                                  (lambda (_hd3010930288_
                                                           _body3011530291_)
                                                    (if (gx#stx-pair?
                                                         _hd3010930288_)
                                                        (let ((_e3011230294_
                                                               (gx#syntax-e
                                                                _hd3010930288_)))
                                                          (let ((_lp-hd3011330298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3011230294_))
                        (_lp-tl3011430301_ (##cdr _e3011230294_)))
                    (_loop3011130284_
                     _lp-tl3011430301_
                     (cons _lp-hd3011330298_ _body3011530291_))))
                (let ((_body3011630304_ (reverse _body3011530291_)))
                  ((lambda (_L30308_ _L30310_ _L30311_ _L30312_ _L30313_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L30312_ (cons _L30311_ '())) '())
                                 (cons (cons _L30313_
                                             (cons _L30310_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3033830341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3033930344_)
                      (cons _g3033830341_ _g3033930344_))
                    '()
                    _L30308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body3011630304_
                   _tl3010130255_
                   _hd3010630272_
                   _hd3010330262_
                   _hd3009430232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop3011130284_
                                           _target3010830278_
                                           '()))
                                        (_g3008530221_ _g3008730225_)))))
                              (_g3008530221_ _g3008730225_))
                          (_g3008530221_ _g3008730225_))
                      (_g3008530221_ _g3008730225_))))
              (_g3008530221_ _g3008730225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3008530221_ _g3008730225_))))
                                      (_g3008530221_ _g3008730225_))))
                              (_g3008530221_ _g3008730225_))))
                      (_g3008530221_ _g3008730225_)))))
          (_g3008430347_ _$stx30081_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx30353_)
        (let* ((_g3036430508_
                (lambda (_g3036530504_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3036530504_)))
               (_g3036330603_
                (lambda (_g3036530512_)
                  (if (gx#stx-pair? _g3036530512_)
                      (let ((_e3048530515_ (gx#syntax-e _g3036530512_)))
                        (let ((_hd3048630519_ (##car _e3048530515_))
                              (_tl3048730522_ (##cdr _e3048530515_)))
                          (if (gx#stx-pair? _tl3048730522_)
                              (let ((_e3048830525_
                                     (gx#syntax-e _tl3048730522_)))
                                (let ((_hd3048930529_ (##car _e3048830525_))
                                      (_tl3049030532_ (##cdr _e3048830525_)))
                                  (if (gx#stx-pair? _tl3049030532_)
                                      (let ((_e3049130535_
                                             (gx#syntax-e _tl3049030532_)))
                                        (let ((_hd3049230539_
                                               (##car _e3049130535_))
                                              (_tl3049330542_
                                               (##cdr _e3049130535_)))
                                          (if (gx#stx-datum? _hd3049230539_)
                                              (if (equal? (gx#stx-e
                                                           _hd3049230539_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3049330542_)
                                                      (let ((_e3049430545_
                                                             (gx#syntax-e
                                                              _tl3049330542_)))
                                                        (let ((_hd3049530549_
                                                               (##car _e3049430545_))
                                                              (_tl3049630552_
                                                               (##cdr _e3049430545_)))
                                                          (if (gx#stx-pair?
                                                               _tl3049630552_)
                                                              (let ((_e3049730555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3049630552_)))
                        (let ((_hd3049830559_ (##car _e3049730555_))
                              (_tl3049930562_ (##cdr _e3049730555_)))
                          (if (gx#identifier? _hd3049830559_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35465_|
                                   _hd3049830559_)
                                  (if (gx#stx-pair? _tl3049930562_)
                                      (let ((_e3050030565_
                                             (gx#syntax-e _tl3049930562_)))
                                        (let ((_hd3050130569_
                                               (##car _e3050030565_))
                                              (_tl3050230572_
                                               (##cdr _e3050030565_)))
                                          (if (gx#stx-null? _tl3050230572_)
                                              ((lambda (_L30575_
                                                        _L30577_
                                                        _L30578_
                                                        _L30579_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30579_
                                             (cons _L30578_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30575_
                                                   (cons (cons _L30577_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3050130569_
                                               _hd3049530549_
                                               _hd3048930529_
                                               _hd3048630519_)
                                              (_g3036430508_ _g3036530512_))))
                                      (_g3036430508_ _g3036530512_))
                                  (_g3036430508_ _g3036530512_))
                              (_g3036430508_ _g3036530512_))))
                      (_g3036430508_ _g3036530512_))))
              (_g3036430508_ _g3036530512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036430508_
                                                   _g3036530512_))
                                              (_g3036430508_ _g3036530512_))))
                                      (_g3036430508_ _g3036530512_))))
                              (_g3036430508_ _g3036530512_))))
                      (_g3036430508_ _g3036530512_))))
               (_g3036230671_
                (lambda (_g3036530607_)
                  (if (gx#stx-pair? _g3036530607_)
                      (let ((_e3046930610_ (gx#syntax-e _g3036530607_)))
                        (let ((_hd3047030614_ (##car _e3046930610_))
                              (_tl3047130617_ (##cdr _e3046930610_)))
                          (if (gx#stx-pair? _tl3047130617_)
                              (let ((_e3047230620_
                                     (gx#syntax-e _tl3047130617_)))
                                (let ((_hd3047330624_ (##car _e3047230620_))
                                      (_tl3047430627_ (##cdr _e3047230620_)))
                                  (if (gx#stx-pair? _tl3047430627_)
                                      (let ((_e3047530630_
                                             (gx#syntax-e _tl3047430627_)))
                                        (let ((_hd3047630634_
                                               (##car _e3047530630_))
                                              (_tl3047730637_
                                               (##cdr _e3047530630_)))
                                          (if (gx#stx-datum? _hd3047630634_)
                                              (if (equal? (gx#stx-e
                                                           _hd3047630634_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3047730637_)
                                                      (let ((_e3047830640_
                                                             (gx#syntax-e
                                                              _tl3047730637_)))
                                                        (let ((_hd3047930644_
                                                               (##car _e3047830640_))
                                                              (_tl3048030647_
                                                               (##cdr _e3047830640_)))
                                                          (if (gx#stx-null?
                                                               _tl3048030647_)
                                                              ((lambda (_L30650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30652_
                                _L30653_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30652_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30650_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3047930644_
                       _hd3047330624_
                       _hd3047030614_)
                      (_g3036330603_ _g3036530607_))))
              (_g3036330603_ _g3036530607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036330603_
                                                   _g3036530607_))
                                              (_g3036330603_ _g3036530607_))))
                                      (_g3036330603_ _g3036530607_))))
                              (_g3036330603_ _g3036530607_))))
                      (_g3036330603_ _g3036530607_))))
               (_g3036130739_
                (lambda (_g3036530675_)
                  (if (gx#stx-pair? _g3036530675_)
                      (let ((_e3045430678_ (gx#syntax-e _g3036530675_)))
                        (let ((_hd3045530682_ (##car _e3045430678_))
                              (_tl3045630685_ (##cdr _e3045430678_)))
                          (if (gx#stx-pair? _tl3045630685_)
                              (let ((_e3045730688_
                                     (gx#syntax-e _tl3045630685_)))
                                (let ((_hd3045830692_ (##car _e3045730688_))
                                      (_tl3045930695_ (##cdr _e3045730688_)))
                                  (if (gx#stx-pair? _tl3045930695_)
                                      (let ((_e3046030698_
                                             (gx#syntax-e _tl3045930695_)))
                                        (let ((_hd3046130702_
                                               (##car _e3046030698_))
                                              (_tl3046230705_
                                               (##cdr _e3046030698_)))
                                          (if (gx#identifier? _hd3046130702_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35466_|
                                                   _hd3046130702_)
                                                  (if (gx#stx-pair?
                                                       _tl3046230705_)
                                                      (let ((_e3046330708_
                                                             (gx#syntax-e
                                                              _tl3046230705_)))
                                                        (let ((_hd3046430712_
                                                               (##car _e3046330708_))
                                                              (_tl3046530715_
                                                               (##cdr _e3046330708_)))
                                                          (if (gx#stx-null?
                                                               _tl3046530715_)
                                                              ((lambda (_L30718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30720_
                                _L30721_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30721_
                                                             (cons _L30720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30718_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3046430712_
                       _hd3045830692_
                       _hd3045530682_)
                      (_g3036230671_ _g3036530675_))))
              (_g3036230671_ _g3036530675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036230671_
                                                   _g3036530675_))
                                              (_g3036230671_ _g3036530675_))))
                                      (_g3036230671_ _g3036530675_))))
                              (_g3036230671_ _g3036530675_))))
                      (_g3036230671_ _g3036530675_))))
               (_g3036030781_
                (lambda (_g3036530743_)
                  (if (gx#stx-pair? _g3036530743_)
                      (let ((_e3044530746_ (gx#syntax-e _g3036530743_)))
                        (let ((_hd3044630750_ (##car _e3044530746_))
                              (_tl3044730753_ (##cdr _e3044530746_)))
                          (if (gx#stx-pair? _tl3044730753_)
                              (let ((_e3044830756_
                                     (gx#syntax-e _tl3044730753_)))
                                (let ((_hd3044930760_ (##car _e3044830756_))
                                      (_tl3045030763_ (##cdr _e3044830756_)))
                                  (if (gx#stx-null? _tl3045030763_)
                                      ((lambda (_L30766_ _L30768_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30766_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd3044930760_
                                       _hd3044630750_)
                                      (_g3036130739_ _g3036530743_))))
                              (_g3036130739_ _g3036530743_))))
                      (_g3036130739_ _g3036530743_))))
               (_g3035930835_
                (lambda (_g3036530785_)
                  (if (gx#stx-pair? _g3036530785_)
                      (let ((_e3043430788_ (gx#syntax-e _g3036530785_)))
                        (let ((_hd3043530792_ (##car _e3043430788_))
                              (_tl3043630795_ (##cdr _e3043430788_)))
                          (if (gx#stx-pair? _tl3043630795_)
                              (let ((_e3043730798_
                                     (gx#syntax-e _tl3043630795_)))
                                (let ((_hd3043830802_ (##car _e3043730798_))
                                      (_tl3043930805_ (##cdr _e3043730798_)))
                                  (if (gx#stx-pair? _tl3043930805_)
                                      (let ((_e3044030808_
                                             (gx#syntax-e _tl3043930805_)))
                                        (let ((_hd3044130812_
                                               (##car _e3044030808_))
                                              (_tl3044230815_
                                               (##cdr _e3044030808_)))
                                          (if (gx#stx-null? _tl3044230815_)
                                              ((lambda (_L30818_ _L30820_)
                                                 (cons _L30820_
                                                       (cons _L30818_ '())))
                                               _hd3044130812_
                                               _hd3043830802_)
                                              (_g3036030781_ _g3036530785_))))
                                      (_g3036030781_ _g3036530785_))))
                              (_g3036030781_ _g3036530785_))))
                      (_g3036030781_ _g3036530785_))))
               (_g3035830915_
                (lambda (_g3036530839_)
                  (if (gx#stx-pair? _g3036530839_)
                      (let ((_e3041730842_ (gx#syntax-e _g3036530839_)))
                        (let ((_hd3041830846_ (##car _e3041730842_))
                              (_tl3041930849_ (##cdr _e3041730842_)))
                          (if (gx#stx-pair? _tl3041930849_)
                              (let ((_e3042030852_
                                     (gx#syntax-e _tl3041930849_)))
                                (let ((_hd3042130856_ (##car _e3042030852_))
                                      (_tl3042230859_ (##cdr _e3042030852_)))
                                  (if (gx#stx-pair? _hd3042130856_)
                                      (let ((_e3042330862_
                                             (gx#syntax-e _hd3042130856_)))
                                        (let ((_hd3042430866_
                                               (##car _e3042330862_))
                                              (_tl3042530869_
                                               (##cdr _e3042330862_)))
                                          (if (gx#identifier? _hd3042430866_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35467_|
                                                   _hd3042430866_)
                                                  (if (gx#stx-pair?
                                                       _tl3042530869_)
                                                      (let ((_e3042630872_
                                                             (gx#syntax-e
                                                              _tl3042530869_)))
                                                        (let ((_hd3042730876_
                                                               (##car _e3042630872_))
                                                              (_tl3042830879_
                                                               (##cdr _e3042630872_)))
                                                          (if (gx#stx-null?
                                                               _tl3042830879_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3042230859_)
                          (let ((_e3042930882_ (gx#syntax-e _tl3042230859_)))
                            (let ((_hd3043030886_ (##car _e3042930882_))
                                  (_tl3043130889_ (##cdr _e3042930882_)))
                              (if (gx#stx-null? _tl3043130889_)
                                  ((lambda (_L30892_ _L30894_ _L30895_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30895_
                                                       (cons _L30894_
                                                             (cons _L30892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd3043030886_
                                   _hd3042730876_
                                   _hd3041830846_)
                                  (_g3035930835_ _g3036530839_))))
                          (_g3035930835_ _g3036530839_))
                      (_g3035930835_ _g3036530839_))))
              (_g3035930835_ _g3036530839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035930835_
                                                   _g3036530839_))
                                              (_g3035930835_ _g3036530839_))))
                                      (_g3035930835_ _g3036530839_))))
                              (_g3035930835_ _g3036530839_))))
                      (_g3035930835_ _g3036530839_))))
               (_g3035731025_
                (lambda (_g3036530919_)
                  (if (gx#stx-pair? _g3036530919_)
                      (let ((_e3039330922_ (gx#syntax-e _g3036530919_)))
                        (let ((_hd3039430926_ (##car _e3039330922_))
                              (_tl3039530929_ (##cdr _e3039330922_)))
                          (if (gx#stx-pair? _tl3039530929_)
                              (let ((_e3039630932_
                                     (gx#syntax-e _tl3039530929_)))
                                (let ((_hd3039730936_ (##car _e3039630932_))
                                      (_tl3039830939_ (##cdr _e3039630932_)))
                                  (if (gx#stx-pair? _hd3039730936_)
                                      (let ((_e3039930942_
                                             (gx#syntax-e _hd3039730936_)))
                                        (let ((_hd3040030946_
                                               (##car _e3039930942_))
                                              (_tl3040130949_
                                               (##cdr _e3039930942_)))
                                          (if (gx#identifier? _hd3040030946_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35468_|
                                                   _hd3040030946_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3040130949_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3040130949_)
                        '0)
                  (let ((_g35469_ (gx#syntax-split-splice _tl3040130949_ '0)))
                    (begin
                      (let ((_g35470_
                             (if (##values? _g35469_)
                                 (##vector-length _g35469_)
                                 1)))
                        (if (not (##fx= _g35470_ 2))
                            (error "Context expects 2 values" _g35470_)))
                      (let ((_target3040230952_ (##vector-ref _g35469_ 0))
                            (_tl3040430955_ (##vector-ref _g35469_ 1)))
                        (if (gx#stx-null? _tl3040430955_)
                            (letrec ((_loop3040530958_
                                      (lambda (_hd3040330962_ _pred3040930965_)
                                        (if (gx#stx-pair? _hd3040330962_)
                                            (let ((_e3040630968_
                                                   (gx#syntax-e
                                                    _hd3040330962_)))
                                              (let ((_lp-hd3040730972_
                                                     (##car _e3040630968_))
                                                    (_lp-tl3040830975_
                                                     (##cdr _e3040630968_)))
                                                (_loop3040530958_
                                                 _lp-tl3040830975_
                                                 (cons _lp-hd3040730972_
                                                       _pred3040930965_))))
                                            (let ((_pred3041030978_
                                                   (reverse _pred3040930965_)))
                                              (if (gx#stx-pair? _tl3039830939_)
                                                  (let ((_e3041130982_
                                                         (gx#syntax-e
                                                          _tl3039830939_)))
                                                    (let ((_hd3041230986_
                                                           (##car _e3041130982_))
                                                          (_tl3041330989_
                                                           (##cdr _e3041130982_)))
                                                      (if (gx#stx-null?
                                                           _tl3041330989_)
                                                          ((lambda (_L30992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30994_
                            _L30995_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3101631019_ _g3101731022_)
                                      (cons (cons _L30995_
                                                  (cons _g3101631019_
                                                        (cons _L30992_ '())))
                                            _g3101731022_))
                                    '()
                                    _L30994_))))
                   _hd3041230986_
                   _pred3041030978_
                   _hd3039430926_)
                  (_g3035830915_ _g3036530919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035830915_
                                                   _g3036530919_)))))))
                              (_loop3040530958_ _target3040230952_ '()))
                            (_g3035830915_ _g3036530919_)))))
                  (_g3035830915_ _g3036530919_))
              (_g3035830915_ _g3036530919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035830915_
                                                   _g3036530919_))
                                              (_g3035830915_ _g3036530919_))))
                                      (_g3035830915_ _g3036530919_))))
                              (_g3035830915_ _g3036530919_))))
                      (_g3035830915_ _g3036530919_))))
               (_g3035631135_
                (lambda (_g3036531029_)
                  (if (gx#stx-pair? _g3036531029_)
                      (let ((_e3036931032_ (gx#syntax-e _g3036531029_)))
                        (let ((_hd3037031036_ (##car _e3036931032_))
                              (_tl3037131039_ (##cdr _e3036931032_)))
                          (if (gx#stx-pair? _tl3037131039_)
                              (let ((_e3037231042_
                                     (gx#syntax-e _tl3037131039_)))
                                (let ((_hd3037331046_ (##car _e3037231042_))
                                      (_tl3037431049_ (##cdr _e3037231042_)))
                                  (if (gx#stx-pair? _hd3037331046_)
                                      (let ((_e3037531052_
                                             (gx#syntax-e _hd3037331046_)))
                                        (let ((_hd3037631056_
                                               (##car _e3037531052_))
                                              (_tl3037731059_
                                               (##cdr _e3037531052_)))
                                          (if (gx#identifier? _hd3037631056_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35471_|
                                                   _hd3037631056_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3037731059_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3037731059_)
                        '0)
                  (let ((_g35472_ (gx#syntax-split-splice _tl3037731059_ '0)))
                    (begin
                      (let ((_g35473_
                             (if (##values? _g35472_)
                                 (##vector-length _g35472_)
                                 1)))
                        (if (not (##fx= _g35473_ 2))
                            (error "Context expects 2 values" _g35473_)))
                      (let ((_target3037831062_ (##vector-ref _g35472_ 0))
                            (_tl3038031065_ (##vector-ref _g35472_ 1)))
                        (if (gx#stx-null? _tl3038031065_)
                            (letrec ((_loop3038131068_
                                      (lambda (_hd3037931072_ _pred3038531075_)
                                        (if (gx#stx-pair? _hd3037931072_)
                                            (let ((_e3038231078_
                                                   (gx#syntax-e
                                                    _hd3037931072_)))
                                              (let ((_lp-hd3038331082_
                                                     (##car _e3038231078_))
                                                    (_lp-tl3038431085_
                                                     (##cdr _e3038231078_)))
                                                (_loop3038131068_
                                                 _lp-tl3038431085_
                                                 (cons _lp-hd3038331082_
                                                       _pred3038531075_))))
                                            (let ((_pred3038631088_
                                                   (reverse _pred3038531075_)))
                                              (if (gx#stx-pair? _tl3037431049_)
                                                  (let ((_e3038731092_
                                                         (gx#syntax-e
                                                          _tl3037431049_)))
                                                    (let ((_hd3038831096_
                                                           (##car _e3038731092_))
                                                          (_tl3038931099_
                                                           (##cdr _e3038731092_)))
                                                      (if (gx#stx-null?
                                                           _tl3038931099_)
                                                          ((lambda (_L31102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L31104_
                            _L31105_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3112631129_ _g3112731132_)
                                      (cons (cons _L31105_
                                                  (cons _g3112631129_
                                                        (cons _L31102_ '())))
                                            _g3112731132_))
                                    '()
                                    _L31104_))))
                   _hd3038831096_
                   _pred3038631088_
                   _hd3037031036_)
                  (_g3035731025_ _g3036531029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035731025_
                                                   _g3036531029_)))))))
                              (_loop3038131068_ _target3037831062_ '()))
                            (_g3035731025_ _g3036531029_)))))
                  (_g3035731025_ _g3036531029_))
              (_g3035731025_ _g3036531029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035731025_
                                                   _g3036531029_))
                                              (_g3035731025_ _g3036531029_))))
                                      (_g3035731025_ _g3036531029_))))
                              (_g3035731025_ _g3036531029_))))
                      (_g3035731025_ _g3036531029_)))))
          (_g3035631135_ _$stx30353_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx31141_)
        (let* ((_g3114631180_
                (lambda (_g3114731176_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3114731176_)))
               (_g3114531237_
                (lambda (_g3114731184_)
                  (if (gx#stx-pair? _g3114731184_)
                      (let ((_e3116631187_ (gx#syntax-e _g3114731184_)))
                        (let ((_hd3116731191_ (##car _e3116631187_))
                              (_tl3116831194_ (##cdr _e3116631187_)))
                          (if (gx#stx-pair? _tl3116831194_)
                              (let ((_e3116931197_
                                     (gx#syntax-e _tl3116831194_)))
                                (let ((_hd3117031201_ (##car _e3116931197_))
                                      (_tl3117131204_ (##cdr _e3116931197_)))
                                  (if (gx#stx-pair? _tl3117131204_)
                                      (let ((_e3117231207_
                                             (gx#syntax-e _tl3117131204_)))
                                        (let ((_hd3117331211_
                                               (##car _e3117231207_))
                                              (_tl3117431214_
                                               (##cdr _e3117231207_)))
                                          (if (gx#stx-null? _tl3117431214_)
                                              ((lambda (_L31217_
                                                        _L31219_
                                                        _L31220_)
                                                 (cons _L31220_
                                                       (cons _L31219_
                                                             (cons _L31217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise-syntax-error)
                                                         (cons '#f
                                                               (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3117331211_
                                               _hd3117031201_
                                               _hd3116731191_)
                                              (_g3114631180_ _g3114731184_))))
                                      (_g3114631180_ _g3114731184_))))
                              (_g3114631180_ _g3114731184_))))
                      (_g3114631180_ _g3114731184_))))
               (_g3114431305_
                (lambda (_g3114731241_)
                  (if (gx#stx-pair? _g3114731241_)
                      (let ((_e3115131244_ (gx#syntax-e _g3114731241_)))
                        (let ((_hd3115231248_ (##car _e3115131244_))
                              (_tl3115331251_ (##cdr _e3115131244_)))
                          (if (gx#stx-pair? _tl3115331251_)
                              (let ((_e3115431254_
                                     (gx#syntax-e _tl3115331251_)))
                                (let ((_hd3115531258_ (##car _e3115431254_))
                                      (_tl3115631261_ (##cdr _e3115431254_)))
                                  (if (gx#stx-pair? _tl3115631261_)
                                      (let ((_e3115731264_
                                             (gx#syntax-e _tl3115631261_)))
                                        (let ((_hd3115831268_
                                               (##car _e3115731264_))
                                              (_tl3115931271_
                                               (##cdr _e3115731264_)))
                                          (if (gx#stx-pair? _tl3115931271_)
                                              (let ((_e3116031274_
                                                     (gx#syntax-e
                                                      _tl3115931271_)))
                                                (let ((_hd3116131278_
                                                       (##car _e3116031274_))
                                                      (_tl3116231281_
                                                       (##cdr _e3116031274_)))
                                                  (if (gx#stx-null?
                                                       _tl3116231281_)
                                                      ((lambda (_L31284_
                                                                _L31286_
                                                                _L31287_)
                                                         (if (gx#identifier?
                                                              _L31287_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L31287_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _L31286_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L31284_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '$stx)
                                                     '())
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-case)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$stx)
                         (cons '()
                               (cons (cons (cons 'match:
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-source)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$stx)
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f '_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_g3114531237_ _g3114731241_)))
               _hd3116131278_
               _hd3115831268_
               _hd3115531258_)
              (_g3114531237_ _g3114731241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3114531237_ _g3114731241_))))
                                      (_g3114531237_ _g3114731241_))))
                              (_g3114531237_ _g3114731241_))))
                      (_g3114531237_ _g3114731241_)))))
          (_g3114431305_ _$stx31141_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx31309_)
        (let* ((_g3131331328_
                (lambda (_g3131431324_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3131431324_)))
               (_g3131231371_
                (lambda (_g3131431332_)
                  (if (gx#stx-pair? _g3131431332_)
                      (let ((_e3131731335_ (gx#syntax-e _g3131431332_)))
                        (let ((_hd3131831339_ (##car _e3131731335_))
                              (_tl3131931342_ (##cdr _e3131731335_)))
                          (if (gx#stx-pair? _tl3131931342_)
                              (let ((_e3132031345_
                                     (gx#syntax-e _tl3131931342_)))
                                (let ((_hd3132131349_ (##car _e3132031345_))
                                      (_tl3132231352_ (##cdr _e3132031345_)))
                                  ((lambda (_L31355_ _L31357_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L31357_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L31355_)
                                                       '()))))
                                   _tl3132231352_
                                   _hd3132131349_)))
                              (_g3131331328_ _g3131431332_))))
                      (_g3131331328_ _g3131431332_)))))
          (_g3131231371_ _$stx31309_))))))
