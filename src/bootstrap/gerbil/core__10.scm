(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g35413_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35414_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35415_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35418_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35419_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35420_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35421_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35422_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35423_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35424_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35425_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35426_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35427_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35428_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35429_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35430_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35439_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35444_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35445_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35446_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35463_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35464_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35465_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35466_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35469_|
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
      (lambda _$args29014_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29014_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29011_)
        (if (gx#identifier? _stx29011_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx29011_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2732728997_
             (lambda (_stx27329_ _match-stx27331_)
               (letrec ((_parse127333_
                         (lambda (_hd27680_)
                           (let* ((_g2770627848_
                                   (lambda (_g2770727844_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2770727844_)))
                                  (_g2770527859_
                                   (lambda (_g2770727852_)
                                     ((lambda ()
                                        (_parse-error27340_ _hd27680_)))))
                                  (_g2770427877_
                                   (lambda (_g2770727863_)
                                     ((lambda (_L27866_)
                                        (if (gx#stx-datum? _L27866_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27866_)
                                                        '()))
                                            (_g2770527859_ _g2770727863_)))
                                      _g2770727863_)))
                                  (_g2770327893_
                                   (lambda (_g2770727881_)
                                     ((lambda (_L27884_)
                                        (if (if (gx#identifier? _L27884_)
                                                (not (gx#ellipsis? _L27884_))
                                                '#f)
                                            (cons 'var: (cons _L27884_ '()))
                                            (_g2770427877_ _g2770727881_)))
                                      _g2770727881_)))
                                  (_g2770227909_
                                   (lambda (_g2770727897_)
                                     ((lambda (_L27900_)
                                        (if (gx#underscore? _L27900_)
                                            (cons 'any: '())
                                            (_g2770327893_ _g2770727897_)))
                                      _g2770727897_)))
                                  (_g2770127941_
                                   (lambda (_g2770727913_)
                                     (if (gx#stx-pair? _g2770727913_)
                                         (let ((_e2783727916_
                                                (gx#syntax-e _g2770727913_)))
                                           (let ((_hd2783827920_
                                                  (##car _e2783727916_))
                                                 (_tl2783927923_
                                                  (##cdr _e2783727916_)))
                                             ((lambda (_L27926_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27926_)
                                                    (_parse127333_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27926_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27680_)
                                                       (let ((_$e27937_
                                                              (gx#stx-source
                                                               _hd27680_)))
                                                         (if _$e27937_
                                                             _$e27937_
                                                             (gx#stx-source
                                                              _stx27329_))))))
                                                    (_g2770227909_
                                                     _g2770727913_)))
                                              _hd2783827920_)))
                                         (_g2770227909_ _g2770727913_))))
                                  (_g2770027995_
                                   (lambda (_g2770727945_)
                                     (if (gx#stx-pair? _g2770727945_)
                                         (let ((_e2782727948_
                                                (gx#syntax-e _g2770727945_)))
                                           (let ((_hd2782827952_
                                                  (##car _e2782727948_))
                                                 (_tl2782927955_
                                                  (##cdr _e2782727948_)))
                                             (if (gx#identifier?
                                                  _hd2782827952_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35413_|
                                                      _hd2782827952_)
                                                     (if (gx#stx-pair?
                                                          _tl2782927955_)
                                                         (let ((_e2783027958_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2782927955_)))
                   (let ((_hd2783127962_ (##car _e2783027958_))
                         (_tl2783227965_ (##cdr _e2783027958_)))
                     (if (gx#stx-pair? _tl2783227965_)
                         (let ((_e2783327968_ (gx#syntax-e _tl2783227965_)))
                           (let ((_hd2783427972_ (##car _e2783327968_))
                                 (_tl2783527975_ (##cdr _e2783327968_)))
                             (if (gx#stx-null? _tl2783527975_)
                                 ((lambda (_L27978_ _L27980_)
                                    (cons 'apply:
                                          (cons _L27980_
                                                (cons (_parse127333_ _L27978_)
                                                      '()))))
                                  _hd2783427972_
                                  _hd2783127962_)
                                 (_g2770127941_ _g2770727945_))))
                         (_g2770127941_ _g2770727945_))))
                 (_g2770127941_ _g2770727945_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770127941_
                                                      _g2770727945_))
                                                 (_g2770127941_
                                                  _g2770727945_))))
                                         (_g2770127941_ _g2770727945_))))
                                  (_g2769928035_
                                   (lambda (_g2770727999_)
                                     (if (gx#stx-pair? _g2770727999_)
                                         (let ((_e2781928002_
                                                (gx#syntax-e _g2770727999_)))
                                           (let ((_hd2782028006_
                                                  (##car _e2781928002_))
                                                 (_tl2782128009_
                                                  (##cdr _e2781928002_)))
                                             (if (gx#identifier?
                                                  _hd2782028006_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35414_|
                                                      _hd2782028006_)
                                                     (if (gx#stx-pair?
                                                          _tl2782128009_)
                                                         (let ((_e2782228012_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2782128009_)))
                   (let ((_hd2782328016_ (##car _e2782228012_))
                         (_tl2782428019_ (##cdr _e2782228012_)))
                     (if (gx#stx-null? _tl2782428019_)
                         ((lambda (_L28022_) (_parse-qq27339_ _L28022_))
                          _hd2782328016_)
                         (_g2770027995_ _g2770727999_))))
                 (_g2770027995_ _g2770727999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2770027995_
                                                      _g2770727999_))
                                                 (_g2770027995_
                                                  _g2770727999_))))
                                         (_g2770027995_ _g2770727999_))))
                                  (_g2769828075_
                                   (lambda (_g2770728039_)
                                     (if (gx#stx-pair? _g2770728039_)
                                         (let ((_e2781228042_
                                                (gx#syntax-e _g2770728039_)))
                                           (let ((_hd2781328046_
                                                  (##car _e2781228042_))
                                                 (_tl2781428049_
                                                  (##cdr _e2781228042_)))
                                             (if (gx#identifier?
                                                  _hd2781328046_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35415_|
                                                      _hd2781328046_)
                                                     (if (gx#stx-pair?
                                                          _tl2781428049_)
                                                         (let ((_e2781528052_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2781428049_)))
                   (let ((_hd2781628056_ (##car _e2781528052_))
                         (_tl2781728059_ (##cdr _e2781528052_)))
                     (if (gx#stx-null? _tl2781728059_)
                         ((lambda (_L28062_)
                            (cons 'datum: (cons (gx#stx-e _L28062_) '())))
                          _hd2781628056_)
                         (_g2769928035_ _g2770728039_))))
                 (_g2769928035_ _g2770728039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769928035_
                                                      _g2770728039_))
                                                 (_g2769928035_
                                                  _g2770728039_))))
                                         (_g2769928035_ _g2770728039_))))
                                  (_g2769728125_
                                   (lambda (_g2770728079_)
                                     (if (gx#stx-pair? _g2770728079_)
                                         (let ((_e2780528082_
                                                (gx#syntax-e _g2770728079_)))
                                           (let ((_hd2780628086_
                                                  (##car _e2780528082_))
                                                 (_tl2780728089_
                                                  (##cdr _e2780528082_)))
                                             (if (gx#stx-pair? _tl2780728089_)
                                                 (let ((_e2780828092_
                                                        (gx#syntax-e
                                                         _tl2780728089_)))
                                                   (let ((_hd2780928096_
                                                          (##car _e2780828092_))
                                                         (_tl2781028099_
                                                          (##cdr _e2780828092_)))
                                                     (if (gx#stx-null?
                                                          _tl2781028099_)
                                                         ((lambda (_L28102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28104_)
                    (if (if (gx#identifier? _L28104_)
                            (let ((_$e28117_
                                   (gx#free-identifier=?
                                    _L28104_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e28117_
                                  _$e28117_
                                  (let ((_$e28121_
                                         (gx#free-identifier=?
                                          _L28104_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e28121_
                                        _$e28121_
                                        (gx#free-identifier=?
                                         _L28104_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L28104_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L28102_ '()))))
                                    '()))
                        (_g2769828075_ _g2770728079_)))
                  _hd2780928096_
                  _hd2780628086_)
                 (_g2769828075_ _g2770728079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2769828075_
                                                  _g2770728079_))))
                                         (_g2769828075_ _g2770728079_))))
                                  (_g2769628155_
                                   (lambda (_g2770728129_)
                                     (if (gx#stx-pair? _g2770728129_)
                                         (let ((_e2780028132_
                                                (gx#syntax-e _g2770728129_)))
                                           (let ((_hd2780128136_
                                                  (##car _e2780028132_))
                                                 (_tl2780228139_
                                                  (##cdr _e2780028132_)))
                                             ((lambda (_L28142_ _L28144_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L28144_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28144_)
                        (cons (_parse-class-body27338_ _L28142_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2769728125_
                                                     _g2770728129_)))
                                              _tl2780228139_
                                              _hd2780128136_)))
                                         (_g2769728125_ _g2770728129_))))
                                  (_g2769528185_
                                   (lambda (_g2770728159_)
                                     (if (gx#stx-pair? _g2770728159_)
                                         (let ((_e2779528162_
                                                (gx#syntax-e _g2770728159_)))
                                           (let ((_hd2779628166_
                                                  (##car _e2779528162_))
                                                 (_tl2779728169_
                                                  (##cdr _e2779528162_)))
                                             ((lambda (_L28172_ _L28174_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L28174_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L28174_)
                        (cons (_parse-vector27336_ _L28172_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2769628155_
                                                     _g2770728159_)))
                                              _tl2779728169_
                                              _hd2779628166_)))
                                         (_g2769628155_ _g2770728159_))))
                                  (_g2769428248_
                                   (lambda (_g2770728189_)
                                     (if (gx#stx-vector? _g2770728189_)
                                         (let ((_e2778328192_
                                                (vector->list
                                                 (gx#syntax-e _g2770728189_))))
                                           (if (gx#stx-pair/null?
                                                _e2778328192_)
                                               (if (fx>= (gx#stx-length
                                                          _e2778328192_)
                                                         '0)
                                                   (let ((_g35416_
                                                          (gx#syntax-split-splice
                                                           _e2778328192_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35417_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35416_)
                          (##vector-length _g35416_)
                          1)))
                 (if (not (##fx= _g35417_ 2))
                     (error "Context expects 2 values" _g35417_)))
               (let ((_target2778428196_ (##vector-ref _g35416_ 0))
                     (_tl2778628199_ (##vector-ref _g35416_ 1)))
                 (if (gx#stx-null? _tl2778628199_)
                     (letrec ((_loop2778728202_
                               (lambda (_hd2778528206_ _body2779128209_)
                                 (if (gx#stx-pair? _hd2778528206_)
                                     (let ((_e2778828212_
                                            (gx#syntax-e _hd2778528206_)))
                                       (let ((_lp-hd2778928216_
                                              (##car _e2778828212_))
                                             (_lp-tl2779028219_
                                              (##cdr _e2778828212_)))
                                         (_loop2778728202_
                                          _lp-tl2779028219_
                                          (cons _lp-hd2778928216_
                                                _body2779128209_))))
                                     (let ((_body2779228222_
                                            (reverse _body2779128209_)))
                                       ((lambda (_L28226_)
                                          (cons 'vector:
                                                (cons (_parse-vector27336_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2823928242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2824028245_)
                          (cons _g2823928242_ _g2824028245_))
                        '()
                        _L28226_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2779228222_))))))
                       (_loop2778728202_ _target2778428196_ '()))
                     (_g2769528185_ _g2770728189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2769528185_
                                                    _g2770728189_))
                                               (_g2769528185_ _g2770728189_)))
                                         (_g2769528185_ _g2770728189_))))
                                  (_g2769328276_
                                   (lambda (_g2770728252_)
                                     (if (gx#stx-pair? _g2770728252_)
                                         (let ((_e2777928255_
                                                (gx#syntax-e _g2770728252_)))
                                           (let ((_hd2778028259_
                                                  (##car _e2777928255_))
                                                 (_tl2778128262_
                                                  (##cdr _e2777928255_)))
                                             (if (gx#identifier?
                                                  _hd2778028259_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35418_|
                                                      _hd2778028259_)
                                                     ((lambda (_L28265_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector27336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28265_)
                            '())))
              _tl2778128262_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769428248_
                                                      _g2770728252_))
                                                 (_g2769428248_
                                                  _g2770728252_))))
                                         (_g2769428248_ _g2770728252_))))
                                  (_g2769228304_
                                   (lambda (_g2770728280_)
                                     (if (gx#stx-pair? _g2770728280_)
                                         (let ((_e2777528283_
                                                (gx#syntax-e _g2770728280_)))
                                           (let ((_hd2777628287_
                                                  (##car _e2777528283_))
                                                 (_tl2777728290_
                                                  (##cdr _e2777528283_)))
                                             (if (gx#identifier?
                                                  _hd2777628287_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35419_|
                                                      _hd2777628287_)
                                                     ((lambda (_L28293_)
                                                        (cons 'values:
                                                              (cons (_parse-vector27336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28293_)
                            '())))
              _tl2777728290_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769328276_
                                                      _g2770728280_))
                                                 (_g2769328276_
                                                  _g2770728280_))))
                                         (_g2769328276_ _g2770728280_))))
                                  (_g2769128344_
                                   (lambda (_g2770728308_)
                                     (if (gx#stx-pair? _g2770728308_)
                                         (let ((_e2776828311_
                                                (gx#syntax-e _g2770728308_)))
                                           (let ((_hd2776928315_
                                                  (##car _e2776828311_))
                                                 (_tl2777028318_
                                                  (##cdr _e2776828311_)))
                                             (if (gx#identifier?
                                                  _hd2776928315_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35420_|
                                                      _hd2776928315_)
                                                     (if (gx#stx-pair?
                                                          _tl2777028318_)
                                                         (let ((_e2777128321_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2777028318_)))
                   (let ((_hd2777228325_ (##car _e2777128321_))
                         (_tl2777328328_ (##cdr _e2777128321_)))
                     (if (gx#stx-null? _tl2777328328_)
                         ((lambda (_L28331_) (_parse127333_ _L28331_))
                          _hd2777228325_)
                         (_g2769228304_ _g2770728308_))))
                 (_g2769228304_ _g2770728308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769228304_
                                                      _g2770728308_))
                                                 (_g2769228304_
                                                  _g2770728308_))))
                                         (_g2769228304_ _g2770728308_))))
                                  (_g2769028365_
                                   (lambda (_g2770728348_)
                                     (if (gx#stx-box? _g2770728348_)
                                         (let ((_e2776628351_
                                                (unbox (gx#syntax-e
                                                        _g2770728348_))))
                                           ((lambda (_L28355_)
                                              (cons 'box:
                                                    (cons (_parse127333_
                                                           _L28355_)
                                                          '())))
                                            _e2776628351_))
                                         (_g2769128344_ _g2770728348_))))
                                  (_g2768928405_
                                   (lambda (_g2770728369_)
                                     (if (gx#stx-pair? _g2770728369_)
                                         (let ((_e2775928372_
                                                (gx#syntax-e _g2770728369_)))
                                           (let ((_hd2776028376_
                                                  (##car _e2775928372_))
                                                 (_tl2776128379_
                                                  (##cdr _e2775928372_)))
                                             (if (gx#identifier?
                                                  _hd2776028376_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35421_|
                                                      _hd2776028376_)
                                                     (if (gx#stx-pair?
                                                          _tl2776128379_)
                                                         (let ((_e2776228382_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2776128379_)))
                   (let ((_hd2776328386_ (##car _e2776228382_))
                         (_tl2776428389_ (##cdr _e2776228382_)))
                     (if (gx#stx-null? _tl2776428389_)
                         ((lambda (_L28392_)
                            (cons 'box: (cons (_parse127333_ _L28392_) '())))
                          _hd2776328386_)
                         (_g2769028365_ _g2770728369_))))
                 (_g2769028365_ _g2770728369_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2769028365_
                                                      _g2770728369_))
                                                 (_g2769028365_
                                                  _g2770728369_))))
                                         (_g2769028365_ _g2770728369_))))
                                  (_g2768828433_
                                   (lambda (_g2770728409_)
                                     (if (gx#stx-pair? _g2770728409_)
                                         (let ((_e2775528412_
                                                (gx#syntax-e _g2770728409_)))
                                           (let ((_hd2775628416_
                                                  (##car _e2775528412_))
                                                 (_tl2775728419_
                                                  (##cdr _e2775528412_)))
                                             (if (gx#identifier?
                                                  _hd2775628416_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35422_|
                                                      _hd2775628416_)
                                                     ((lambda (_L28422_)
                                                        (_parse-list27335_
                                                         _L28422_))
                                                      _tl2775728419_)
                                                     (_g2768928405_
                                                      _g2770728409_))
                                                 (_g2768928405_
                                                  _g2770728409_))))
                                         (_g2768928405_ _g2770728409_))))
                                  (_g2768728489_
                                   (lambda (_g2770728437_)
                                     (if (gx#stx-pair? _g2770728437_)
                                         (let ((_e2774528440_
                                                (gx#syntax-e _g2770728437_)))
                                           (let ((_hd2774628444_
                                                  (##car _e2774528440_))
                                                 (_tl2774728447_
                                                  (##cdr _e2774528440_)))
                                             (if (gx#identifier?
                                                  _hd2774628444_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35423_|
                                                      _hd2774628444_)
                                                     (if (gx#stx-pair?
                                                          _tl2774728447_)
                                                         (let ((_e2774828450_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2774728447_)))
                   (let ((_hd2774928454_ (##car _e2774828450_))
                         (_tl2775028457_ (##cdr _e2774828450_)))
                     (if (gx#stx-pair? _tl2775028457_)
                         (let ((_e2775128460_ (gx#syntax-e _tl2775028457_)))
                           (let ((_hd2775228464_ (##car _e2775128460_))
                                 (_tl2775328467_ (##cdr _e2775128460_)))
                             ((lambda (_L28470_ _L28472_ _L28473_)
                                (if (gx#stx-null? _L28470_)
                                    (cons 'cons:
                                          (cons (_parse127333_ _L28473_)
                                                (cons (_parse127333_ _L28472_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse127333_ _L28473_)
                                                (cons (_parse127333_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L28472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28470_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2775328467_
                              _hd2775228464_
                              _hd2774928454_)))
                         (_g2768828433_ _g2770728437_))))
                 (_g2768828433_ _g2770728437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768828433_
                                                      _g2770728437_))
                                                 (_g2768828433_
                                                  _g2770728437_))))
                                         (_g2768828433_ _g2770728437_))))
                                  (_g2768628543_
                                   (lambda (_g2770728493_)
                                     (if (gx#stx-pair? _g2770728493_)
                                         (let ((_e2773328496_
                                                (gx#syntax-e _g2770728493_)))
                                           (let ((_hd2773428500_
                                                  (##car _e2773328496_))
                                                 (_tl2773528503_
                                                  (##cdr _e2773328496_)))
                                             (if (gx#identifier?
                                                  _hd2773428500_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35424_|
                                                      _hd2773428500_)
                                                     (if (gx#stx-pair?
                                                          _tl2773528503_)
                                                         (let ((_e2773628506_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2773528503_)))
                   (let ((_hd2773728510_ (##car _e2773628506_))
                         (_tl2773828513_ (##cdr _e2773628506_)))
                     (if (gx#stx-pair? _tl2773828513_)
                         (let ((_e2773928516_ (gx#syntax-e _tl2773828513_)))
                           (let ((_hd2774028520_ (##car _e2773928516_))
                                 (_tl2774128523_ (##cdr _e2773928516_)))
                             (if (gx#stx-null? _tl2774128523_)
                                 ((lambda (_L28526_ _L28528_)
                                    (cons 'cons:
                                          (cons (_parse127333_ _L28528_)
                                                (cons (_parse127333_ _L28526_)
                                                      '()))))
                                  _hd2774028520_
                                  _hd2773728510_)
                                 (_g2768728489_ _g2770728493_))))
                         (_g2768728489_ _g2770728493_))))
                 (_g2768728489_ _g2770728493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768728489_
                                                      _g2770728493_))
                                                 (_g2768728489_
                                                  _g2770728493_))))
                                         (_g2768728489_ _g2770728493_))))
                                  (_g2768528583_
                                   (lambda (_g2770728547_)
                                     (if (gx#stx-pair? _g2770728547_)
                                         (let ((_e2772528550_
                                                (gx#syntax-e _g2770728547_)))
                                           (let ((_hd2772628554_
                                                  (##car _e2772528550_))
                                                 (_tl2772728557_
                                                  (##cdr _e2772528550_)))
                                             (if (gx#identifier?
                                                  _hd2772628554_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35425_|
                                                      _hd2772628554_)
                                                     (if (gx#stx-pair?
                                                          _tl2772728557_)
                                                         (let ((_e2772828560_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2772728557_)))
                   (let ((_hd2772928564_ (##car _e2772828560_))
                         (_tl2773028567_ (##cdr _e2772828560_)))
                     (if (gx#stx-null? _tl2773028567_)
                         ((lambda (_L28570_)
                            (cons 'not: (cons (_parse127333_ _L28570_) '())))
                          _hd2772928564_)
                         (_g2768628543_ _g2770728547_))))
                 (_g2768628543_ _g2770728547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768628543_
                                                      _g2770728547_))
                                                 (_g2768628543_
                                                  _g2770728547_))))
                                         (_g2768628543_ _g2770728547_))))
                                  (_g2768428668_
                                   (lambda (_g2770728587_)
                                     (if (gx#stx-pair? _g2770728587_)
                                         (let ((_e2772128590_
                                                (gx#syntax-e _g2770728587_)))
                                           (let ((_hd2772228594_
                                                  (##car _e2772128590_))
                                                 (_tl2772328597_
                                                  (##cdr _e2772128590_)))
                                             (if (gx#identifier?
                                                  _hd2772228594_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35426_|
                                                      _hd2772228594_)
                                                     ((lambda (_L28600_)
                                                        (if (gx#stx-list?
                                                             _L28600_)
                                                            (let* ((_g2861228623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2861328619_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2861328619_)))
                           (_g2861128634_
                            (lambda (_g2861328627_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse127333_ _L28600_))))))
                           (_g2861028664_
                            (lambda (_g2861328638_)
                              (if (gx#stx-pair? _g2861328638_)
                                  (let ((_e2861528641_
                                         (gx#syntax-e _g2861328638_)))
                                    (let ((_hd2861628645_
                                           (##car _e2861528641_))
                                          (_tl2861728648_
                                           (##cdr _e2861528641_)))
                                      (if (gx#stx-null? _tl2861728648_)
                                          ((lambda (_L28651_)
                                             (_parse127333_ _L28651_))
                                           _hd2861628645_)
                                          (_g2861128634_ _g2861328638_))))
                                  (_g2861128634_ _g2861328638_)))))
                      (_g2861028664_ _L28600_))
                    (_g2768528583_ _g2770728587_)))
              _tl2772328597_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768528583_
                                                      _g2770728587_))
                                                 (_g2768528583_
                                                  _g2770728587_))))
                                         (_g2768528583_ _g2770728587_))))
                                  (_g2768328753_
                                   (lambda (_g2770728672_)
                                     (if (gx#stx-pair? _g2770728672_)
                                         (let ((_e2771728675_
                                                (gx#syntax-e _g2770728672_)))
                                           (let ((_hd2771828679_
                                                  (##car _e2771728675_))
                                                 (_tl2771928682_
                                                  (##cdr _e2771728675_)))
                                             (if (gx#identifier?
                                                  _hd2771828679_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35427_|
                                                      _hd2771828679_)
                                                     ((lambda (_L28685_)
                                                        (if (gx#stx-list?
                                                             _L28685_)
                                                            (let* ((_g2869728708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2869828704_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2869828704_)))
                           (_g2869628719_
                            (lambda (_g2869828712_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse127333_ _L28685_))))))
                           (_g2869528749_
                            (lambda (_g2869828723_)
                              (if (gx#stx-pair? _g2869828723_)
                                  (let ((_e2870028726_
                                         (gx#syntax-e _g2869828723_)))
                                    (let ((_hd2870128730_
                                           (##car _e2870028726_))
                                          (_tl2870228733_
                                           (##cdr _e2870028726_)))
                                      (if (gx#stx-null? _tl2870228733_)
                                          ((lambda (_L28736_)
                                             (_parse127333_ _L28736_))
                                           _hd2870128730_)
                                          (_g2869628719_ _g2869828723_))))
                                  (_g2869628719_ _g2869828723_)))))
                      (_g2869528749_ _L28685_))
                    (_g2768428668_ _g2770728672_)))
              _tl2771928682_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768428668_
                                                      _g2770728672_))
                                                 (_g2768428668_
                                                  _g2770728672_))))
                                         (_g2768428668_ _g2770728672_))))
                                  (_g2768228993_
                                   (lambda (_g2770728757_)
                                     (if (gx#stx-pair? _g2770728757_)
                                         (let ((_e2771028760_
                                                (gx#syntax-e _g2770728757_)))
                                           (let ((_hd2771128764_
                                                  (##car _e2771028760_))
                                                 (_tl2771228767_
                                                  (##cdr _e2771028760_)))
                                             (if (gx#identifier?
                                                  _hd2771128764_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35428_|
                                                      _hd2771128764_)
                                                     (if (gx#stx-pair?
                                                          _tl2771228767_)
                                                         (let ((_e2771328770_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2771228767_)))
                   (let ((_hd2771428774_ (##car _e2771328770_))
                         (_tl2771528777_ (##cdr _e2771328770_)))
                     ((lambda (_L28780_ _L28782_)
                        (let* ((_g2879928831_
                                (lambda (_g2880028827_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2880028827_)))
                               (_g2879828842_
                                (lambda (_g2880028835_)
                                  ((lambda ()
                                     (_parse-error27340_ _hd27680_)))))
                               (_g2879728910_
                                (lambda (_g2880028846_)
                                  (if (gx#stx-pair? _g2880028846_)
                                      (let ((_e2881428849_
                                             (gx#syntax-e _g2880028846_)))
                                        (let ((_hd2881528853_
                                               (##car _e2881428849_))
                                              (_tl2881628856_
                                               (##cdr _e2881428849_)))
                                          (if (gx#stx-datum? _hd2881528853_)
                                              (if (equal? (gx#stx-e
                                                           _hd2881528853_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2881628856_)
                                                      (let ((_e2881728859_
                                                             (gx#syntax-e
                                                              _tl2881628856_)))
                                                        (let ((_hd2881828863_
                                                               (##car _e2881728859_))
                                                              (_tl2881928866_
                                                               (##cdr _e2881728859_)))
                                                          (if (gx#stx-pair?
                                                               _tl2881928866_)
                                                              (let ((_e2882028869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2881928866_)))
                        (let ((_hd2882128873_ (##car _e2882028869_))
                              (_tl2882228876_ (##cdr _e2882028869_)))
                          (if (gx#identifier? _hd2882128873_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35429_|
                                   _hd2882128873_)
                                  (if (gx#stx-pair? _tl2882228876_)
                                      (let ((_e2882328879_
                                             (gx#syntax-e _tl2882228876_)))
                                        (let ((_hd2882428883_
                                               (##car _e2882328879_))
                                              (_tl2882528886_
                                               (##cdr _e2882328879_)))
                                          (if (gx#stx-null? _tl2882528886_)
                                              ((lambda (_L28889_ _L28891_)
                                                 (cons '?:
                                                       (cons _L28782_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28891_
                                 (cons '=>:
                                       (cons (_parse127333_ _L28889_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2882428883_
                                               _hd2881828863_)
                                              (_g2879828842_ _g2880028846_))))
                                      (_g2879828842_ _g2880028846_))
                                  (_g2879828842_ _g2880028846_))
                              (_g2879828842_ _g2880028846_))))
                      (_g2879828842_ _g2880028846_))))
              (_g2879828842_ _g2880028846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2879828842_
                                                   _g2880028846_))
                                              (_g2879828842_ _g2880028846_))))
                                      (_g2879828842_ _g2880028846_))))
                               (_g2879628950_
                                (lambda (_g2880028914_)
                                  (if (gx#stx-pair? _g2880028914_)
                                      (let ((_e2880628917_
                                             (gx#syntax-e _g2880028914_)))
                                        (let ((_hd2880728921_
                                               (##car _e2880628917_))
                                              (_tl2880828924_
                                               (##cdr _e2880628917_)))
                                          (if (gx#identifier? _hd2880728921_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35430_|
                                                   _hd2880728921_)
                                                  (if (gx#stx-pair?
                                                       _tl2880828924_)
                                                      (let ((_e2880928927_
                                                             (gx#syntax-e
                                                              _tl2880828924_)))
                                                        (let ((_hd2881028931_
                                                               (##car _e2880928927_))
                                                              (_tl2881128934_
                                                               (##cdr _e2880928927_)))
                                                          (if (gx#stx-null?
                                                               _tl2881128934_)
                                                              ((lambda (_L28937_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28782_
                                     (cons '=>:
                                           (cons (_parse127333_ _L28937_)
                                                 '())))))
                       _hd2881028931_)
                      (_g2879728910_ _g2880028914_))))
              (_g2879728910_ _g2880028914_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2879728910_
                                                   _g2880028914_))
                                              (_g2879728910_ _g2880028914_))))
                                      (_g2879728910_ _g2880028914_))))
                               (_g2879528978_
                                (lambda (_g2880028954_)
                                  (if (gx#stx-pair? _g2880028954_)
                                      (let ((_e2880228957_
                                             (gx#syntax-e _g2880028954_)))
                                        (let ((_hd2880328961_
                                               (##car _e2880228957_))
                                              (_tl2880428964_
                                               (##cdr _e2880228957_)))
                                          (if (gx#stx-null? _tl2880428964_)
                                              ((lambda (_L28967_)
                                                 (cons '?:
                                                       (cons _L28782_
                                                             (cons (_parse127333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28967_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2880328961_)
                                              (_g2879628950_ _g2880028954_))))
                                      (_g2879628950_ _g2880028954_))))
                               (_g2879428989_
                                (lambda (_g2880028982_)
                                  (if (gx#stx-null? _g2880028982_)
                                      ((lambda ()
                                         (cons '?: (cons _L28782_ '()))))
                                      (_g2879528978_ _g2880028982_)))))
                          (_g2879428989_ _L28780_)))
                      _tl2771528777_
                      _hd2771428774_)))
                 (_g2768328753_ _g2770728757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2768328753_
                                                      _g2770728757_))
                                                 (_g2768328753_
                                                  _g2770728757_))))
                                         (_g2768328753_ _g2770728757_)))))
                             (_g2768228993_ _hd27680_))))
                        (_parse-list27335_
                         (lambda (_body27515_)
                           (let* ((_g2752127549_
                                   (lambda (_g2752227545_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2752227545_)))
                                  (_g2752027560_
                                   (lambda (_g2752227553_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body27515_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body27515_))
                                                (_parse127333_ _body27515_)
                                                (_parse-error27340_
                                                 _body27515_)))))))
                                  (_g2751927592_
                                   (lambda (_g2752227564_)
                                     (if (gx#stx-pair? _g2752227564_)
                                         (let ((_e2754127567_
                                                (gx#syntax-e _g2752227564_)))
                                           (let ((_hd2754227571_
                                                  (##car _e2754127567_))
                                                 (_tl2754327574_
                                                  (##cdr _e2754127567_)))
                                             ((lambda (_L27577_ _L27579_)
                                                (if (not (gx#ellipsis?
                                                          _L27579_))
                                                    (cons 'cons:
                                                          (cons (_parse127333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27579_)
                        (cons (_parse-list27335_ _L27577_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2752027560_
                                                     _g2752227564_)))
                                              _tl2754327574_
                                              _hd2754227571_)))
                                         (_g2752027560_ _g2752227564_))))
                                  (_g2751827636_
                                   (lambda (_g2752227596_)
                                     (if (gx#stx-pair? _g2752227596_)
                                         (let ((_e2753327599_
                                                (gx#syntax-e _g2752227596_)))
                                           (let ((_hd2753427603_
                                                  (##car _e2753327599_))
                                                 (_tl2753527606_
                                                  (##cdr _e2753327599_)))
                                             (if (gx#stx-pair? _tl2753527606_)
                                                 (let ((_e2753627609_
                                                        (gx#syntax-e
                                                         _tl2753527606_)))
                                                   (let ((_hd2753727613_
                                                          (##car _e2753627609_))
                                                         (_tl2753827616_
                                                          (##cdr _e2753627609_)))
                                                     ((lambda (_L27619_
                                                               _L27621_
                                                               _L27622_)
                                                        (if (gx#ellipsis?
                                                             _L27621_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse127333_ _L27622_)
                                (cons (_parse-list27335_ _L27619_) '())))
                    (_g2751927592_ _g2752227596_)))
              _tl2753827616_
              _hd2753727613_
              _hd2753427603_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2751927592_
                                                  _g2752227596_))))
                                         (_g2751927592_ _g2752227596_))))
                                  (_g2751727676_
                                   (lambda (_g2752227640_)
                                     (if (gx#stx-pair? _g2752227640_)
                                         (let ((_e2752427643_
                                                (gx#syntax-e _g2752227640_)))
                                           (let ((_hd2752527647_
                                                  (##car _e2752427643_))
                                                 (_tl2752627650_
                                                  (##cdr _e2752427643_)))
                                             (if (gx#stx-datum? _hd2752527647_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2752527647_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2752627650_)
                                                         (let ((_e2752727653_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2752627650_)))
                   (let ((_hd2752827657_ (##car _e2752727653_))
                         (_tl2752927660_ (##cdr _e2752727653_)))
                     (if (gx#stx-null? _tl2752927660_)
                         ((lambda (_L27663_) (_parse127333_ _L27663_))
                          _hd2752827657_)
                         (_g2751827636_ _g2752227640_))))
                 (_g2751827636_ _g2752227640_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2751827636_
                                                      _g2752227640_))
                                                 (_g2751827636_
                                                  _g2752227640_))))
                                         (_g2751827636_ _g2752227640_)))))
                             (_g2751727676_ _body27515_))))
                        (_parse-vector27336_
                         (lambda (_body27512_)
                           (if (_simple-vector?27337_ _body27512_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse127333_
                                            _body27512_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list27335_ _body27512_)
                                           '())))))
                        (_simple-vector?27337_
                         (lambda (_body27449_)
                           (let* ((_g2745327465_
                                   (lambda (_g2745427461_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2745427461_)))
                                  (_g2745227476_
                                   (lambda (_g2745427469_)
                                     ((lambda () (gx#stx-null? _body27449_)))))
                                  (_g2745127508_
                                   (lambda (_g2745427480_)
                                     (if (gx#stx-pair? _g2745427480_)
                                         (let ((_e2745727483_
                                                (gx#syntax-e _g2745427480_)))
                                           (let ((_hd2745827487_
                                                  (##car _e2745727483_))
                                                 (_tl2745927490_
                                                  (##cdr _e2745727483_)))
                                             ((lambda (_L27493_ _L27495_)
                                                (if (not (gx#ellipsis?
                                                          _L27495_))
                                                    (_simple-vector?27337_
                                                     _L27493_)
                                                    '#f))
                                              _tl2745927490_
                                              _hd2745827487_)))
                                         (_g2745227476_ _g2745427480_)))))
                             (_g2745127508_ _body27449_))))
                        (_parse-class-body27338_
                         (lambda (_body27358_)
                           (let _recur27361_ ((_rest27364_ _body27358_))
                             (let* ((_g2736827384_
                                     (lambda (_g2736927380_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2736927380_)))
                                    (_g2736727395_
                                     (lambda (_g2736927388_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest27364_)
                                              '()
                                              (_parse-error27340_
                                               _rest27364_))))))
                                    (_g2736627445_
                                     (lambda (_g2736927399_)
                                       (if (gx#stx-pair? _g2736927399_)
                                           (let ((_e2737327402_
                                                  (gx#syntax-e _g2736927399_)))
                                             (let ((_hd2737427406_
                                                    (##car _e2737327402_))
                                                   (_tl2737527409_
                                                    (##cdr _e2737327402_)))
                                               (if (gx#stx-pair?
                                                    _tl2737527409_)
                                                   (let ((_e2737627412_
                                                          (gx#syntax-e
                                                           _tl2737527409_)))
                                                     (let ((_hd2737727416_
                                                            (##car _e2737627412_))
                                                           (_tl2737827419_
                                                            (##cdr _e2737627412_)))
                                                       ((lambda (_L27422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27424_
                         _L27425_)
                  (if (gx#stx-keyword? _L27425_)
                      (cons* _L27425_
                             (_parse127333_ _L27424_)
                             (_recur27361_ _L27422_))
                      (_g2736727395_ _g2736927399_)))
                _tl2737827419_
                _hd2737727416_
                _hd2737427406_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2736727395_
                                                    _g2736927399_))))
                                           (_g2736727395_ _g2736927399_)))))
                               (_g2736627445_ _rest27364_)))))
                        (_parse-qq27339_
                         (lambda (_hd27345_)
                           (let ((_g2734727354_
                                  (lambda (_g2734827350_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2734827350_))))
                             (_g2734727354_ _hd27345_))))
                        (_parse-error27340_
                         (lambda (_hd27342_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx27331_
                                      (cons _match-stx27331_
                                            (cons _stx27329_
                                                  (cons _hd27342_ '())))
                                      (cons _stx27329_
                                            (cons _hd27342_ '())))))))
                 (_parse127333_ _stx27329_)))))
        (lambda _g35432_
          (let ((_g35431_ (length _g35432_)))
            (cond ((##fx= _g35431_ 1)
                   (apply (lambda (_stx29001_)
                            (let ((_match-stx29004_ '#f))
                              (_opt-lambda2732728997_
                               _stx29001_
                               _match-stx29004_)))
                          _g35432_))
                  ((##fx= _g35431_ 2) (apply _opt-lambda2732728997_ _g35432_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g35432_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx27313_)
        (call-with-escape
         (lambda (_E27317_)
           (with-exception-handler
            (let ((_E!27320_ (current-exception-handler)))
              (lambda (_e27323_)
                (if (gx#syntax-error? _e27323_)
                    (_E27317_ '#f)
                    (_E!27320_ _e27323_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx27313_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26102_)
        (letrec ((_loop26105_
                  (lambda (_ptree26380_ _vars26382_ _K26383_)
                    (let* ((_g2639626497_
                            (lambda (_g2639726493_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2639726493_)))
                           (_g2639526508_
                            (lambda (_g2639726501_)
                              ((lambda () (_K26383_ _vars26382_)))))
                           (_g2639426555_
                            (lambda (_g2639726512_)
                              (if (gx#stx-pair? _g2639726512_)
                                  (let ((_e2648626515_
                                         (gx#syntax-e _g2639726512_)))
                                    (let ((_hd2648726519_
                                           (##car _e2648626515_))
                                          (_tl2648826522_
                                           (##cdr _e2648626515_)))
                                      (if (gx#stx-datum? _hd2648726519_)
                                          (if (equal? (gx#stx-e _hd2648726519_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2648826522_)
                                                  (let ((_e2648926525_
                                                         (gx#syntax-e
                                                          _tl2648826522_)))
                                                    (let ((_hd2649026529_
                                                           (##car _e2648926525_))
                                                          (_tl2649126532_
                                                           (##cdr _e2648926525_)))
                                                      (if (gx#stx-null?
                                                           _tl2649126532_)
                                                          ((lambda (_L26535_)
                                                             (if (find (lambda (_g2654926551_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2654926551_
                                  _L26535_))
                               _vars26382_)
                         (_K26383_ _vars26382_)
                         (_K26383_ (cons _L26535_ _vars26382_))))
                   _hd2649026529_)
                  (_g2639526508_ _g2639726512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639526508_
                                                   _g2639726512_))
                                              (_g2639526508_ _g2639726512_))
                                          (_g2639526508_ _g2639726512_))))
                                  (_g2639526508_ _g2639726512_))))
                           (_g2639326609_
                            (lambda (_g2639726559_)
                              (if (gx#stx-pair? _g2639726559_)
                                  (let ((_e2647626562_
                                         (gx#syntax-e _g2639726559_)))
                                    (let ((_hd2647726566_
                                           (##car _e2647626562_))
                                          (_tl2647826569_
                                           (##cdr _e2647626562_)))
                                      (if (gx#stx-datum? _hd2647726566_)
                                          (if (equal? (gx#stx-e _hd2647726566_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2647826569_)
                                                  (let ((_e2647926572_
                                                         (gx#syntax-e
                                                          _tl2647826569_)))
                                                    (let ((_hd2648026576_
                                                           (##car _e2647926572_))
                                                          (_tl2648126579_
                                                           (##cdr _e2647926572_)))
                                                      (if (gx#stx-pair?
                                                           _tl2648126579_)
                                                          (let ((_e2648226582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2648126579_)))
                    (let ((_hd2648326586_ (##car _e2648226582_))
                          (_tl2648426589_ (##cdr _e2648226582_)))
                      (if (gx#stx-null? _tl2648426589_)
                          ((lambda (_L26592_ _L26594_)
                             (_loop26105_ _L26592_ _vars26382_ _K26383_))
                           _hd2648326586_
                           _hd2648026576_)
                          (_g2639426555_ _g2639726559_))))
                  (_g2639426555_ _g2639726559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639426555_
                                                   _g2639726559_))
                                              (_g2639426555_ _g2639726559_))
                                          (_g2639426555_ _g2639726559_))))
                                  (_g2639426555_ _g2639726559_))))
                           (_g2639226661_
                            (lambda (_g2639726613_)
                              (if (gx#stx-pair? _g2639726613_)
                                  (let ((_e2646526616_
                                         (gx#syntax-e _g2639726613_)))
                                    (let ((_hd2646626620_
                                           (##car _e2646526616_))
                                          (_tl2646726623_
                                           (##cdr _e2646526616_)))
                                      (if (gx#stx-datum? _hd2646626620_)
                                          (if (equal? (gx#stx-e _hd2646626620_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2646726623_)
                                                  (let ((_e2646826626_
                                                         (gx#syntax-e
                                                          _tl2646726623_)))
                                                    (let ((_hd2646926630_
                                                           (##car _e2646826626_))
                                                          (_tl2647026633_
                                                           (##cdr _e2646826626_)))
                                                      (if (gx#stx-pair?
                                                           _tl2647026633_)
                                                          (let ((_e2647126636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2647026633_)))
                    (let ((_hd2647226640_ (##car _e2647126636_))
                          (_tl2647326643_ (##cdr _e2647126636_)))
                      (if (gx#stx-null? _tl2647326643_)
                          ((lambda (_L26646_)
                             (_loop-class-list26109_
                              _L26646_
                              _vars26382_
                              _K26383_))
                           _hd2647226640_)
                          (_g2639326609_ _g2639726613_))))
                  (_g2639326609_ _g2639726613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639326609_
                                                   _g2639726613_))
                                              (_g2639326609_ _g2639726613_))
                                          (_g2639326609_ _g2639726613_))))
                                  (_g2639326609_ _g2639726613_))))
                           (_g2639126713_
                            (lambda (_g2639726665_)
                              (if (gx#stx-pair? _g2639726665_)
                                  (let ((_e2645526668_
                                         (gx#syntax-e _g2639726665_)))
                                    (let ((_hd2645626672_
                                           (##car _e2645526668_))
                                          (_tl2645726675_
                                           (##cdr _e2645526668_)))
                                      (if (gx#stx-datum? _hd2645626672_)
                                          (if (equal? (gx#stx-e _hd2645626672_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2645726675_)
                                                  (let ((_e2645826678_
                                                         (gx#syntax-e
                                                          _tl2645726675_)))
                                                    (let ((_hd2645926682_
                                                           (##car _e2645826678_))
                                                          (_tl2646026685_
                                                           (##cdr _e2645826678_)))
                                                      (if (gx#stx-pair?
                                                           _tl2646026685_)
                                                          (let ((_e2646126688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2646026685_)))
                    (let ((_hd2646226692_ (##car _e2646126688_))
                          (_tl2646326695_ (##cdr _e2646126688_)))
                      (if (gx#stx-null? _tl2646326695_)
                          ((lambda (_L26698_)
                             (_loop-vector26107_
                              _L26698_
                              _vars26382_
                              _K26383_))
                           _hd2646226692_)
                          (_g2639226661_ _g2639726665_))))
                  (_g2639226661_ _g2639726665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2639226661_
                                                   _g2639726665_))
                                              (_g2639226661_ _g2639726665_))
                                          (_g2639226661_ _g2639726665_))))
                                  (_g2639226661_ _g2639726665_))))
                           (_g2639026759_
                            (lambda (_g2639726717_)
                              (if (gx#stx-pair? _g2639726717_)
                                  (let ((_e2644826720_
                                         (gx#syntax-e _g2639726717_)))
                                    (let ((_hd2644926724_
                                           (##car _e2644826720_))
                                          (_tl2645026727_
                                           (##cdr _e2644826720_)))
                                      (if (gx#stx-pair? _tl2645026727_)
                                          (let ((_e2645126730_
                                                 (gx#syntax-e _tl2645026727_)))
                                            (let ((_hd2645226734_
                                                   (##car _e2645126730_))
                                                  (_tl2645326737_
                                                   (##cdr _e2645126730_)))
                                              (if (gx#stx-null? _tl2645326737_)
                                                  ((lambda (_L26740_ _L26742_)
                                                     (if (let ((_$e26755_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26742_)))
                   (if _$e26755_ _$e26755_ (gx#stx-eq? 'vector: _L26742_)))
                 (_loop-vector26107_ _L26740_ _vars26382_ _K26383_)
                 (_g2639126713_ _g2639726717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2645226734_
                                                   _hd2644926724_)
                                                  (_g2639126713_
                                                   _g2639726717_))))
                                          (_g2639126713_ _g2639726717_))))
                                  (_g2639126713_ _g2639726717_))))
                           (_g2638926799_
                            (lambda (_g2639726763_)
                              (if (gx#stx-pair? _g2639726763_)
                                  (let ((_e2644026766_
                                         (gx#syntax-e _g2639726763_)))
                                    (let ((_hd2644126770_
                                           (##car _e2644026766_))
                                          (_tl2644226773_
                                           (##cdr _e2644026766_)))
                                      (if (gx#stx-datum? _hd2644126770_)
                                          (if (equal? (gx#stx-e _hd2644126770_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2644226773_)
                                                  (let ((_e2644326776_
                                                         (gx#syntax-e
                                                          _tl2644226773_)))
                                                    (let ((_hd2644426780_
                                                           (##car _e2644326776_))
                                                          (_tl2644526783_
                                                           (##cdr _e2644326776_)))
                                                      (if (gx#stx-null?
                                                           _tl2644526783_)
                                                          ((lambda (_L26786_)
                                                             (_loop26105_
                                                              _L26786_
                                                              _vars26382_
                                                              _K26383_))
                                                           _hd2644426780_)
                                                          (_g2639026759_
                                                           _g2639726763_))))
                                                  (_g2639026759_
                                                   _g2639726763_))
                                              (_g2639026759_ _g2639726763_))
                                          (_g2639026759_ _g2639726763_))))
                                  (_g2639026759_ _g2639726763_))))
                           (_g2638826858_
                            (lambda (_g2639726803_)
                              (if (gx#stx-pair? _g2639726803_)
                                  (let ((_e2643026806_
                                         (gx#syntax-e _g2639726803_)))
                                    (let ((_hd2643126810_
                                           (##car _e2643026806_))
                                          (_tl2643226813_
                                           (##cdr _e2643026806_)))
                                      (if (gx#stx-datum? _hd2643126810_)
                                          (if (equal? (gx#stx-e _hd2643126810_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2643226813_)
                                                  (let ((_e2643326816_
                                                         (gx#syntax-e
                                                          _tl2643226813_)))
                                                    (let ((_hd2643426820_
                                                           (##car _e2643326816_))
                                                          (_tl2643526823_
                                                           (##cdr _e2643326816_)))
                                                      (if (gx#stx-pair?
                                                           _tl2643526823_)
                                                          (let ((_e2643626826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2643526823_)))
                    (let ((_hd2643726830_ (##car _e2643626826_))
                          (_tl2643826833_ (##cdr _e2643626826_)))
                      (if (gx#stx-null? _tl2643826833_)
                          ((lambda (_L26836_ _L26838_)
                             (_loop26105_
                              _L26838_
                              _vars26382_
                              (lambda (_g2685226854_)
                                (_loop26105_
                                 _L26836_
                                 _g2685226854_
                                 _K26383_))))
                           _hd2643726830_
                           _hd2643426820_)
                          (_g2638926799_ _g2639726803_))))
                  (_g2638926799_ _g2639726803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638926799_
                                                   _g2639726803_))
                                              (_g2638926799_ _g2639726803_))
                                          (_g2638926799_ _g2639726803_))))
                                  (_g2638926799_ _g2639726803_))))
                           (_g2638726917_
                            (lambda (_g2639726862_)
                              (if (gx#stx-pair? _g2639726862_)
                                  (let ((_e2641926865_
                                         (gx#syntax-e _g2639726862_)))
                                    (let ((_hd2642026869_
                                           (##car _e2641926865_))
                                          (_tl2642126872_
                                           (##cdr _e2641926865_)))
                                      (if (gx#stx-datum? _hd2642026869_)
                                          (if (equal? (gx#stx-e _hd2642026869_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2642126872_)
                                                  (let ((_e2642226875_
                                                         (gx#syntax-e
                                                          _tl2642126872_)))
                                                    (let ((_hd2642326879_
                                                           (##car _e2642226875_))
                                                          (_tl2642426882_
                                                           (##cdr _e2642226875_)))
                                                      (if (gx#stx-pair?
                                                           _tl2642426882_)
                                                          (let ((_e2642526885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2642426882_)))
                    (let ((_hd2642626889_ (##car _e2642526885_))
                          (_tl2642726892_ (##cdr _e2642526885_)))
                      (if (gx#stx-null? _tl2642726892_)
                          ((lambda (_L26895_ _L26897_)
                             (_loop26105_
                              _L26897_
                              _vars26382_
                              (lambda (_g2691126913_)
                                (_loop26105_
                                 _L26895_
                                 _g2691126913_
                                 _K26383_))))
                           _hd2642626889_
                           _hd2642326879_)
                          (_g2638826858_ _g2639726862_))))
                  (_g2638826858_ _g2639726862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638826858_
                                                   _g2639726862_))
                                              (_g2638826858_ _g2639726862_))
                                          (_g2638826858_ _g2639726862_))))
                                  (_g2638826858_ _g2639726862_))))
                           (_g2638626957_
                            (lambda (_g2639726921_)
                              (if (gx#stx-pair? _g2639726921_)
                                  (let ((_e2641126924_
                                         (gx#syntax-e _g2639726921_)))
                                    (let ((_hd2641226928_
                                           (##car _e2641126924_))
                                          (_tl2641326931_
                                           (##cdr _e2641126924_)))
                                      (if (gx#stx-datum? _hd2641226928_)
                                          (if (equal? (gx#stx-e _hd2641226928_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2641326931_)
                                                  (let ((_e2641426934_
                                                         (gx#syntax-e
                                                          _tl2641326931_)))
                                                    (let ((_hd2641526938_
                                                           (##car _e2641426934_))
                                                          (_tl2641626941_
                                                           (##cdr _e2641426934_)))
                                                      (if (gx#stx-null?
                                                           _tl2641626941_)
                                                          ((lambda (_L26944_)
                                                             (_loop26105_
                                                              _L26944_
                                                              _vars26382_
                                                              _K26383_))
                                                           _hd2641526938_)
                                                          (_g2638726917_
                                                           _g2639726921_))))
                                                  (_g2638726917_
                                                   _g2639726921_))
                                              (_g2638726917_ _g2639726921_))
                                          (_g2638726917_ _g2639726921_))))
                                  (_g2638726917_ _g2639726921_))))
                           (_g2638527056_
                            (lambda (_g2639726961_)
                              (if (gx#stx-pair? _g2639726961_)
                                  (let ((_e2640726964_
                                         (gx#syntax-e _g2639726961_)))
                                    (let ((_hd2640826968_
                                           (##car _e2640726964_))
                                          (_tl2640926971_
                                           (##cdr _e2640726964_)))
                                      ((lambda (_L26974_ _L26976_)
                                         (if (let ((_$e26987_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26976_)))
                                               (if _$e26987_
                                                   _$e26987_
                                                   (gx#stx-eq? 'or: _L26976_)))
                                             (let* ((_g2699227004_
                                                     (lambda (_g2699327000_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2699327000_)))
                                                    (_g2699127015_
                                                     (lambda (_g2699327008_)
                                                       ((lambda ()
                                                          (_K26383_
                                                           _vars26382_)))))
                                                    (_g2699027052_
                                                     (lambda (_g2699327019_)
                                                       (if (gx#stx-pair?
                                                            _g2699327019_)
                                                           (let ((_e2699627022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2699327019_)))
                     (let ((_hd2699727026_ (##car _e2699627022_))
                           (_tl2699827029_ (##cdr _e2699627022_)))
                       ((lambda (_L27032_ _L27034_)
                          (_loop26105_
                           _L27034_
                           _vars26382_
                           (lambda (_g2704627048_)
                             (_loop26105_
                              (cons _L26976_ _L27032_)
                              _g2704627048_
                              _K26383_))))
                        _tl2699827029_
                        _hd2699727026_)))
                   (_g2699127015_ _g2699327019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2699027052_ _L26974_))
                                             (_g2638626957_ _g2639726961_)))
                                       _tl2640926971_
                                       _hd2640826968_)))
                                  (_g2638626957_ _g2639726961_))))
                           (_g2638427309_
                            (lambda (_g2639727060_)
                              (if (gx#stx-pair? _g2639727060_)
                                  (let ((_e2639927063_
                                         (gx#syntax-e _g2639727060_)))
                                    (let ((_hd2640027067_
                                           (##car _e2639927063_))
                                          (_tl2640127070_
                                           (##cdr _e2639927063_)))
                                      (if (gx#stx-datum? _hd2640027067_)
                                          (if (equal? (gx#stx-e _hd2640027067_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2640127070_)
                                                  (let ((_e2640227073_
                                                         (gx#syntax-e
                                                          _tl2640127070_)))
                                                    (let ((_hd2640327077_
                                                           (##car _e2640227073_))
                                                          (_tl2640427080_
                                                           (##cdr _e2640227073_)))
                                                      ((lambda (_L27083_)
                                                         (let* ((_g2709927136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2710027132_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2710027132_)))
                        (_g2709827147_
                         (lambda (_g2710027140_)
                           ((lambda () (_K26383_ _vars26382_)))))
                        (_g2709727225_
                         (lambda (_g2710027151_)
                           (if (gx#stx-pair? _g2710027151_)
                               (let ((_e2711627154_
                                      (gx#syntax-e _g2710027151_)))
                                 (let ((_hd2711727158_ (##car _e2711627154_))
                                       (_tl2711827161_ (##cdr _e2711627154_)))
                                   (if (gx#stx-pair? _tl2711827161_)
                                       (let ((_e2711927164_
                                              (gx#syntax-e _tl2711827161_)))
                                         (let ((_hd2712027168_
                                                (##car _e2711927164_))
                                               (_tl2712127171_
                                                (##cdr _e2711927164_)))
                                           (if (gx#stx-datum? _hd2712027168_)
                                               (if (equal? (gx#stx-e
                                                            _hd2712027168_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2712127171_)
                                                       (let ((_e2712227174_
                                                              (gx#syntax-e
                                                               _tl2712127171_)))
                                                         (let ((_hd2712327178_
                                                                (##car _e2712227174_))
                                                               (_tl2712427181_
                                                                (##cdr _e2712227174_)))
                                                           (if (gx#stx-pair?
                                                                _tl2712427181_)
                                                               (let ((_e2712527184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2712427181_)))
                         (let ((_hd2712627188_ (##car _e2712527184_))
                               (_tl2712727191_ (##cdr _e2712527184_)))
                           (if (gx#stx-datum? _hd2712627188_)
                               (if (equal? (gx#stx-e _hd2712627188_) '=>:)
                                   (if (gx#stx-pair? _tl2712727191_)
                                       (let ((_e2712827194_
                                              (gx#syntax-e _tl2712727191_)))
                                         (let ((_hd2712927198_
                                                (##car _e2712827194_))
                                               (_tl2713027201_
                                                (##cdr _e2712827194_)))
                                           (if (gx#stx-null? _tl2713027201_)
                                               ((lambda (_L27204_)
                                                  (_loop26105_
                                                   _L27204_
                                                   _vars26382_
                                                   _K26383_))
                                                _hd2712927198_)
                                               (_g2709827147_ _g2710027151_))))
                                       (_g2709827147_ _g2710027151_))
                                   (_g2709827147_ _g2710027151_))
                               (_g2709827147_ _g2710027151_))))
                       (_g2709827147_ _g2710027151_))))
               (_g2709827147_ _g2710027151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2709827147_
                                                    _g2710027151_))
                                               (_g2709827147_ _g2710027151_))))
                                       (_g2709827147_ _g2710027151_))))
                               (_g2709827147_ _g2710027151_))))
                        (_g2709627277_
                         (lambda (_g2710027229_)
                           (if (gx#stx-pair? _g2710027229_)
                               (let ((_e2710627232_
                                      (gx#syntax-e _g2710027229_)))
                                 (let ((_hd2710727236_ (##car _e2710627232_))
                                       (_tl2710827239_ (##cdr _e2710627232_)))
                                   (if (gx#stx-pair? _tl2710827239_)
                                       (let ((_e2710927242_
                                              (gx#syntax-e _tl2710827239_)))
                                         (let ((_hd2711027246_
                                                (##car _e2710927242_))
                                               (_tl2711127249_
                                                (##cdr _e2710927242_)))
                                           (if (gx#stx-datum? _hd2711027246_)
                                               (if (equal? (gx#stx-e
                                                            _hd2711027246_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2711127249_)
                                                       (let ((_e2711227252_
                                                              (gx#syntax-e
                                                               _tl2711127249_)))
                                                         (let ((_hd2711327256_
                                                                (##car _e2711227252_))
                                                               (_tl2711427259_
                                                                (##cdr _e2711227252_)))
                                                           (if (gx#stx-null?
                                                                _tl2711427259_)
                                                               ((lambda (_L27262_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop26105_ _L27262_ _vars26382_ _K26383_))
                        _hd2711327256_)
                       (_g2709727225_ _g2710027229_))))
               (_g2709727225_ _g2710027229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2709727225_
                                                    _g2710027229_))
                                               (_g2709727225_ _g2710027229_))))
                                       (_g2709727225_ _g2710027229_))))
                               (_g2709727225_ _g2710027229_))))
                        (_g2709527305_
                         (lambda (_g2710027281_)
                           (if (gx#stx-pair? _g2710027281_)
                               (let ((_e2710227284_
                                      (gx#syntax-e _g2710027281_)))
                                 (let ((_hd2710327288_ (##car _e2710227284_))
                                       (_tl2710427291_ (##cdr _e2710227284_)))
                                   (if (gx#stx-null? _tl2710427291_)
                                       ((lambda (_L27294_)
                                          (_loop26105_
                                           _L27294_
                                           _vars26382_
                                           _K26383_))
                                        _hd2710327288_)
                                       (_g2709627277_ _g2710027281_))))
                               (_g2709627277_ _g2710027281_)))))
                   (_g2709527305_ _L27083_)))
               _tl2640427080_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2638527056_
                                                   _g2639727060_))
                                              (_g2638527056_ _g2639727060_))
                                          (_g2638527056_ _g2639727060_))))
                                  (_g2638527056_ _g2639727060_)))))
                      (_g2638427309_ _ptree26380_))))
                 (_loop-vector26107_
                  (lambda (_body26268_ _vars26270_ _K26271_)
                    (let* ((_g2627426295_
                            (lambda (_g2627526291_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2627526291_)))
                           (_g2627326336_
                            (lambda (_g2627526299_)
                              (if (gx#stx-pair? _g2627526299_)
                                  (let ((_e2628426302_
                                         (gx#syntax-e _g2627526299_)))
                                    (let ((_hd2628526306_
                                           (##car _e2628426302_))
                                          (_tl2628626309_
                                           (##cdr _e2628426302_)))
                                      (if (gx#stx-datum? _hd2628526306_)
                                          (if (equal? (gx#stx-e _hd2628526306_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2628626309_)
                                                  (let ((_e2628726312_
                                                         (gx#syntax-e
                                                          _tl2628626309_)))
                                                    (let ((_hd2628826316_
                                                           (##car _e2628726312_))
                                                          (_tl2628926319_
                                                           (##cdr _e2628726312_)))
                                                      (if (gx#stx-null?
                                                           _tl2628926319_)
                                                          ((lambda (_L26322_)
                                                             (_loop26105_
                                                              _L26322_
                                                              _vars26270_
                                                              _K26271_))
                                                           _hd2628826316_)
                                                          (_g2627426295_
                                                           _g2627526299_))))
                                                  (_g2627426295_
                                                   _g2627526299_))
                                              (_g2627426295_ _g2627526299_))
                                          (_g2627426295_ _g2627526299_))))
                                  (_g2627426295_ _g2627526299_))))
                           (_g2627226376_
                            (lambda (_g2627526340_)
                              (if (gx#stx-pair? _g2627526340_)
                                  (let ((_e2627726343_
                                         (gx#syntax-e _g2627526340_)))
                                    (let ((_hd2627826347_
                                           (##car _e2627726343_))
                                          (_tl2627926350_
                                           (##cdr _e2627726343_)))
                                      (if (gx#stx-datum? _hd2627826347_)
                                          (if (equal? (gx#stx-e _hd2627826347_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2627926350_)
                                                  (let ((_e2628026353_
                                                         (gx#syntax-e
                                                          _tl2627926350_)))
                                                    (let ((_hd2628126357_
                                                           (##car _e2628026353_))
                                                          (_tl2628226360_
                                                           (##cdr _e2628026353_)))
                                                      (if (gx#stx-null?
                                                           _tl2628226360_)
                                                          ((lambda (_L26363_)
                                                             (_loop-list26108_
                                                              _L26363_
                                                              _vars26270_
                                                              _K26271_))
                                                           _hd2628126357_)
                                                          (_g2627326336_
                                                           _g2627526340_))))
                                                  (_g2627326336_
                                                   _g2627526340_))
                                              (_g2627326336_ _g2627526340_))
                                          (_g2627326336_ _g2627526340_))))
                                  (_g2627326336_ _g2627526340_)))))
                      (_g2627226376_ _body26268_))))
                 (_loop-list26108_
                  (lambda (_rest26198_ _vars26200_ _K26201_)
                    (let* ((_g2620426216_
                            (lambda (_g2620526212_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2620526212_)))
                           (_g2620326227_
                            (lambda (_g2620526220_)
                              ((lambda () (_K26201_ _vars26200_)))))
                           (_g2620226264_
                            (lambda (_g2620526231_)
                              (if (gx#stx-pair? _g2620526231_)
                                  (let ((_e2620826234_
                                         (gx#syntax-e _g2620526231_)))
                                    (let ((_hd2620926238_
                                           (##car _e2620826234_))
                                          (_tl2621026241_
                                           (##cdr _e2620826234_)))
                                      ((lambda (_L26244_ _L26246_)
                                         (_loop26105_
                                          _L26246_
                                          _vars26200_
                                          (lambda (_g2625826260_)
                                            (_loop-list26108_
                                             _L26244_
                                             _g2625826260_
                                             _K26201_))))
                                       _tl2621026241_
                                       _hd2620926238_)))
                                  (_g2620326227_ _g2620526231_)))))
                      (_g2620226264_ _rest26198_))))
                 (_loop-class-list26109_
                  (lambda (_rest26111_ _vars26113_ _K26114_)
                    (let* ((_g2611726132_
                            (lambda (_g2611826128_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2611826128_)))
                           (_g2611626143_
                            (lambda (_g2611826136_)
                              ((lambda () (_K26114_ _vars26113_)))))
                           (_g2611526194_
                            (lambda (_g2611826147_)
                              (if (gx#stx-pair? _g2611826147_)
                                  (let ((_e2612126150_
                                         (gx#syntax-e _g2611826147_)))
                                    (let ((_hd2612226154_
                                           (##car _e2612126150_))
                                          (_tl2612326157_
                                           (##cdr _e2612126150_)))
                                      (if (gx#stx-pair? _tl2612326157_)
                                          (let ((_e2612426160_
                                                 (gx#syntax-e _tl2612326157_)))
                                            (let ((_hd2612526164_
                                                   (##car _e2612426160_))
                                                  (_tl2612626167_
                                                   (##cdr _e2612426160_)))
                                              ((lambda (_L26170_ _L26172_)
                                                 (_loop26105_
                                                  _L26172_
                                                  _vars26113_
                                                  (lambda (_g2618826190_)
                                                    (_loop-class-list26109_
                                                     _L26170_
                                                     _g2618826190_
                                                     _K26114_))))
                                               _tl2612626167_
                                               _hd2612526164_)))
                                          (_g2611626143_ _g2611826147_))))
                                  (_g2611626143_ _g2611826147_)))))
                      (_g2611526194_ _rest26111_)))))
          (_loop26105_ _ptree26102_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22852_ _tgt22854_ _ptree22855_ _K22856_ _E22857_)
        (letrec ((_generate122859_
                  (lambda (_tgt24451_ _ptree24453_ _K24454_ _E24455_)
                    (let* ((_g2445724465_
                            (lambda (_g2445824461_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2445824461_)))
                           (_g2445626098_
                            (lambda (_g2445824469_)
                              ((lambda (_L24472_)
                                 (let ()
                                   (let* ((_g2449924625_
                                           (lambda (_g2450024621_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2450024621_)))
                                          (_g2449824646_
                                           (lambda (_g2450024629_)
                                             (if (gx#stx-pair? _g2450024629_)
                                                 (let ((_e2461724632_
                                                        (gx#syntax-e
                                                         _g2450024629_)))
                                                   (let ((_hd2461824636_
                                                          (##car _e2461724632_))
                                                         (_tl2461924639_
                                                          (##cdr _e2461724632_)))
                                                     (if (gx#stx-datum?
                                                          _hd2461824636_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2461824636_)
                             'any:)
                     (if (gx#stx-null? _tl2461924639_)
                         ((lambda () _K24454_))
                         (_g2449924625_ _g2450024629_))
                     (_g2449924625_ _g2450024629_))
                 (_g2449924625_ _g2450024629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449924625_
                                                  _g2450024629_))))
                                          (_g2449724689_
                                           (lambda (_g2450024650_)
                                             (if (gx#stx-pair? _g2450024650_)
                                                 (let ((_e2461124653_
                                                        (gx#syntax-e
                                                         _g2450024650_)))
                                                   (let ((_hd2461224657_
                                                          (##car _e2461124653_))
                                                         (_tl2461324660_
                                                          (##cdr _e2461124653_)))
                                                     (if (gx#stx-datum?
                                                          _hd2461224657_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2461224657_)
                             'var:)
                     (if (gx#stx-pair? _tl2461324660_)
                         (let ((_e2461424663_ (gx#syntax-e _tl2461324660_)))
                           (let ((_hd2461524667_ (##car _e2461424663_))
                                 (_tl2461624670_ (##cdr _e2461424663_)))
                             (if (gx#stx-null? _tl2461624670_)
                                 ((lambda (_L24673_)
                                    (cons 'let
                                          (cons (cons (cons _L24673_
                                                            (cons _L24472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K24454_ '()))))
                                  _hd2461524667_)
                                 (_g2449824646_ _g2450024650_))))
                         (_g2449824646_ _g2450024650_))
                     (_g2449824646_ _g2450024650_))
                 (_g2449824646_ _g2450024650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449824646_
                                                  _g2450024650_))))
                                          (_g2449624774_
                                           (lambda (_g2450024693_)
                                             (if (gx#stx-pair? _g2450024693_)
                                                 (let ((_e2460124696_
                                                        (gx#syntax-e
                                                         _g2450024693_)))
                                                   (let ((_hd2460224700_
                                                          (##car _e2460124696_))
                                                         (_tl2460324703_
                                                          (##cdr _e2460124696_)))
                                                     (if (gx#stx-datum?
                                                          _hd2460224700_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2460224700_)
                             'apply:)
                     (if (gx#stx-pair? _tl2460324703_)
                         (let ((_e2460424706_ (gx#syntax-e _tl2460324703_)))
                           (let ((_hd2460524710_ (##car _e2460424706_))
                                 (_tl2460624713_ (##cdr _e2460424706_)))
                             (if (gx#stx-pair? _tl2460624713_)
                                 (let ((_e2460724716_
                                        (gx#syntax-e _tl2460624713_)))
                                   (let ((_hd2460824720_ (##car _e2460724716_))
                                         (_tl2460924723_
                                          (##cdr _e2460724716_)))
                                     (if (gx#stx-null? _tl2460924723_)
                                         ((lambda (_L24726_ _L24728_)
                                            (let* ((_g2474324751_
                                                    (lambda (_g2474424747_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2474424747_)))
                                                   (_g2474224770_
                                                    (lambda (_g2474424755_)
                                                      ((lambda (_L24758_)
                                                         (let ()
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _L24758_
                                           (cons (cons _L24728_
                                                       (cons _L24472_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122859_
                                      _L24758_
                                      _L24726_
                                      _K24454_
                                      _E24455_)
                                     '())))))
               _g2474424755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2474224770_
                                               (gx#genident 'e))))
                                          _hd2460824720_
                                          _hd2460524710_)
                                         (_g2449724689_ _g2450024693_))))
                                 (_g2449724689_ _g2450024693_))))
                         (_g2449724689_ _g2450024693_))
                     (_g2449724689_ _g2450024693_))
                 (_g2449724689_ _g2450024693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449724689_
                                                  _g2450024693_))))
                                          (_g2449524856_
                                           (lambda (_g2450024778_)
                                             (if (gx#stx-pair? _g2450024778_)
                                                 (let ((_e2459324781_
                                                        (gx#syntax-e
                                                         _g2450024778_)))
                                                   (let ((_hd2459424785_
                                                          (##car _e2459324781_))
                                                         (_tl2459524788_
                                                          (##cdr _e2459324781_)))
                                                     (if (gx#stx-datum?
                                                          _hd2459424785_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2459424785_)
                             'datum:)
                     (if (gx#stx-pair? _tl2459524788_)
                         (let ((_e2459624791_ (gx#syntax-e _tl2459524788_)))
                           (let ((_hd2459724795_ (##car _e2459624791_))
                                 (_tl2459824798_ (##cdr _e2459624791_)))
                             (if (gx#stx-null? _tl2459824798_)
                                 ((lambda (_L24801_)
                                    (let* ((_g2481424822_
                                            (lambda (_g2481524818_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2481524818_)))
                                           (_g2481324841_
                                            (lambda (_g2481524826_)
                                              ((lambda (_L24829_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons _L24829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L24472_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24801_ '()))
                                         '())))
                       (cons _K24454_ (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2481524826_))))
                                      (_g2481324841_
                                       (let ((_e24845_ (gx#stx-e _L24801_)))
                                         (if (let ((_$e24848_
                                                    (symbol? _e24845_)))
                                               (if _$e24848_
                                                   _$e24848_
                                                   (let ((_$e24852_
                                                          (keyword? _e24845_)))
                                                     (if _$e24852_
                                                         _$e24852_
                                                         (immediate?
                                                          _e24845_)))))
                                             '##eq?
                                             (if (number? _e24845_)
                                                 'eqv?
                                                 'equal?))))))
                                  _hd2459724795_)
                                 (_g2449624774_ _g2450024778_))))
                         (_g2449624774_ _g2450024778_))
                     (_g2449624774_ _g2450024778_))
                 (_g2449624774_ _g2450024778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449624774_
                                                  _g2450024778_))))
                                          (_g2449424910_
                                           (lambda (_g2450024860_)
                                             (if (gx#stx-pair? _g2450024860_)
                                                 (let ((_e2458324863_
                                                        (gx#syntax-e
                                                         _g2450024860_)))
                                                   (let ((_hd2458424867_
                                                          (##car _e2458324863_))
                                                         (_tl2458524870_
                                                          (##cdr _e2458324863_)))
                                                     (if (gx#stx-datum?
                                                          _hd2458424867_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2458424867_)
                             'class:)
                     (if (gx#stx-pair? _tl2458524870_)
                         (let ((_e2458624873_ (gx#syntax-e _tl2458524870_)))
                           (let ((_hd2458724877_ (##car _e2458624873_))
                                 (_tl2458824880_ (##cdr _e2458624873_)))
                             (if (gx#stx-pair? _tl2458824880_)
                                 (let ((_e2458924883_
                                        (gx#syntax-e _tl2458824880_)))
                                   (let ((_hd2459024887_ (##car _e2458924883_))
                                         (_tl2459124890_
                                          (##cdr _e2458924883_)))
                                     (if (gx#stx-null? _tl2459124890_)
                                         ((lambda (_L24893_ _L24895_)
                                            (_generate-class22865_
                                             (gx#stx-e _L24895_)
                                             _tgt24451_
                                             _L24893_
                                             _K24454_
                                             _E24455_))
                                          _hd2459024887_
                                          _hd2458724877_)
                                         (_g2449524856_ _g2450024860_))))
                                 (_g2449524856_ _g2450024860_))))
                         (_g2449524856_ _g2450024860_))
                     (_g2449524856_ _g2450024860_))
                 (_g2449524856_ _g2450024860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449524856_
                                                  _g2450024860_))))
                                          (_g2449324964_
                                           (lambda (_g2450024914_)
                                             (if (gx#stx-pair? _g2450024914_)
                                                 (let ((_e2457224917_
                                                        (gx#syntax-e
                                                         _g2450024914_)))
                                                   (let ((_hd2457324921_
                                                          (##car _e2457224917_))
                                                         (_tl2457424924_
                                                          (##cdr _e2457224917_)))
                                                     (if (gx#stx-datum?
                                                          _hd2457324921_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2457324921_)
                             'struct:)
                     (if (gx#stx-pair? _tl2457424924_)
                         (let ((_e2457524927_ (gx#syntax-e _tl2457424924_)))
                           (let ((_hd2457624931_ (##car _e2457524927_))
                                 (_tl2457724934_ (##cdr _e2457524927_)))
                             (if (gx#stx-pair? _tl2457724934_)
                                 (let ((_e2457824937_
                                        (gx#syntax-e _tl2457724934_)))
                                   (let ((_hd2457924941_ (##car _e2457824937_))
                                         (_tl2458024944_
                                          (##cdr _e2457824937_)))
                                     (if (gx#stx-null? _tl2458024944_)
                                         ((lambda (_L24947_ _L24949_)
                                            (_generate-struct22864_
                                             (gx#stx-e _L24949_)
                                             _tgt24451_
                                             _L24947_
                                             _K24454_
                                             _E24455_))
                                          _hd2457924941_
                                          _hd2457624931_)
                                         (_g2449424910_ _g2450024914_))))
                                 (_g2449424910_ _g2450024914_))))
                         (_g2449424910_ _g2450024914_))
                     (_g2449424910_ _g2450024914_))
                 (_g2449424910_ _g2450024914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449424910_
                                                  _g2450024914_))))
                                          (_g2449225142_
                                           (lambda (_g2450024968_)
                                             (if (gx#stx-pair? _g2450024968_)
                                                 (let ((_e2456424971_
                                                        (gx#syntax-e
                                                         _g2450024968_)))
                                                   (let ((_hd2456524975_
                                                          (##car _e2456424971_))
                                                         (_tl2456624978_
                                                          (##cdr _e2456424971_)))
                                                     (if (gx#stx-datum?
                                                          _hd2456524975_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2456524975_)
                             'vector:)
                     (if (gx#stx-pair? _tl2456624978_)
                         (let ((_e2456724981_ (gx#syntax-e _tl2456624978_)))
                           (let ((_hd2456824985_ (##car _e2456724981_))
                                 (_tl2456924988_ (##cdr _e2456724981_)))
                             (if (gx#stx-null? _tl2456924988_)
                                 ((lambda (_L24991_)
                                    (let* ((_g2500525026_
                                            (lambda (_g2500625022_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2500625022_)))
                                           (_g2500425067_
                                            (lambda (_g2500625030_)
                                              (if (gx#stx-pair? _g2500625030_)
                                                  (let ((_e2501525033_
                                                         (gx#syntax-e
                                                          _g2500625030_)))
                                                    (let ((_hd2501625037_
                                                           (##car _e2501525033_))
                                                          (_tl2501725040_
                                                           (##cdr _e2501525033_)))
                                                      (if (gx#stx-datum?
                                                           _hd2501625037_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2501625037_)
                              'list:)
                      (if (gx#stx-pair? _tl2501725040_)
                          (let ((_e2501825043_ (gx#syntax-e _tl2501725040_)))
                            (let ((_hd2501925047_ (##car _e2501825043_))
                                  (_tl2502025050_ (##cdr _e2501825043_)))
                              (if (gx#stx-null? _tl2502025050_)
                                  ((lambda (_L25053_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector?)
                                                       (cons _L24472_ '()))
                                                 (cons (_generate-list-vector22863_
                                                        _tgt24451_
                                                        _L25053_
                                                        'subvector->list
                                                        '0
                                                        _K24454_
                                                        _E24455_)
                                                       (cons _E24455_ '())))))
                                   _hd2501925047_)
                                  (_g2500525026_ _g2500625030_))))
                          (_g2500525026_ _g2500625030_))
                      (_g2500525026_ _g2500625030_))
                  (_g2500525026_ _g2500625030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2500525026_
                                                   _g2500625030_))))
                                           (_g2500325138_
                                            (lambda (_g2500625071_)
                                              (if (gx#stx-pair? _g2500625071_)
                                                  (let ((_e2500825074_
                                                         (gx#syntax-e
                                                          _g2500625071_)))
                                                    (let ((_hd2500925078_
                                                           (##car _e2500825074_))
                                                          (_tl2501025081_
                                                           (##cdr _e2500825074_)))
                                                      (if (gx#stx-datum?
                                                           _hd2500925078_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2500925078_)
                              'simple:)
                      (if (gx#stx-pair? _tl2501025081_)
                          (let ((_e2501125084_ (gx#syntax-e _tl2501025081_)))
                            (let ((_hd2501225088_ (##car _e2501125084_))
                                  (_tl2501325091_ (##cdr _e2501125084_)))
                              (if (gx#stx-null? _tl2501325091_)
                                  ((lambda (_L25094_)
                                     (let* ((_g2510725115_
                                             (lambda (_g2510825111_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2510825111_)))
                                            (_g2510625134_
                                             (lambda (_g2510825119_)
                                               ((lambda (_L25122_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##vector?)
                              (cons _L24472_ '()))
                        (cons (cons 'if
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L24472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L25122_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector22862_
                                                 _tgt24451_
                                                 _L25094_
                                                 '0
                                                 _K24454_
                                                 _E24455_)
                                                (cons _E24455_ '()))))
                              (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2510825119_))))
                                       (_g2510625134_
                                        (gx#stx-length _L25094_))))
                                   _hd2501225088_)
                                  (_g2500425067_ _g2500625071_))))
                          (_g2500425067_ _g2500625071_))
                      (_g2500425067_ _g2500625071_))
                  (_g2500425067_ _g2500625071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2500425067_
                                                   _g2500625071_)))))
                                      (_g2500325138_ _L24991_)))
                                  _hd2456824985_)
                                 (_g2449324964_ _g2450024968_))))
                         (_g2449324964_ _g2450024968_))
                     (_g2449324964_ _g2450024968_))
                 (_g2449324964_ _g2450024968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449324964_
                                                  _g2450024968_))))
                                          (_g2449125320_
                                           (lambda (_g2450025146_)
                                             (if (gx#stx-pair? _g2450025146_)
                                                 (let ((_e2455725149_
                                                        (gx#syntax-e
                                                         _g2450025146_)))
                                                   (let ((_hd2455825153_
                                                          (##car _e2455725149_))
                                                         (_tl2455925156_
                                                          (##cdr _e2455725149_)))
                                                     (if (gx#stx-datum?
                                                          _hd2455825153_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2455825153_)
                             'values:)
                     (if (gx#stx-pair? _tl2455925156_)
                         (let ((_e2456025159_ (gx#syntax-e _tl2455925156_)))
                           (let ((_hd2456125163_ (##car _e2456025159_))
                                 (_tl2456225166_ (##cdr _e2456025159_)))
                             (if (gx#stx-null? _tl2456225166_)
                                 ((lambda (_L25169_)
                                    (let* ((_g2518325204_
                                            (lambda (_g2518425200_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2518425200_)))
                                           (_g2518225245_
                                            (lambda (_g2518425208_)
                                              (if (gx#stx-pair? _g2518425208_)
                                                  (let ((_e2519325211_
                                                         (gx#syntax-e
                                                          _g2518425208_)))
                                                    (let ((_hd2519425215_
                                                           (##car _e2519325211_))
                                                          (_tl2519525218_
                                                           (##cdr _e2519325211_)))
                                                      (if (gx#stx-datum?
                                                           _hd2519425215_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2519425215_)
                              'list:)
                      (if (gx#stx-pair? _tl2519525218_)
                          (let ((_e2519625221_ (gx#syntax-e _tl2519525218_)))
                            (let ((_hd2519725225_ (##car _e2519625221_))
                                  (_tl2519825228_ (##cdr _e2519625221_)))
                              (if (gx#stx-null? _tl2519825228_)
                                  ((lambda (_L25231_)
                                     (_generate-list-vector22863_
                                      _tgt24451_
                                      _L25231_
                                      'values->list
                                      '0
                                      _K24454_
                                      _E24455_))
                                   _hd2519725225_)
                                  (_g2518325204_ _g2518425208_))))
                          (_g2518325204_ _g2518425208_))
                      (_g2518325204_ _g2518425208_))
                  (_g2518325204_ _g2518425208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518325204_
                                                   _g2518425208_))))
                                           (_g2518125316_
                                            (lambda (_g2518425249_)
                                              (if (gx#stx-pair? _g2518425249_)
                                                  (let ((_e2518625252_
                                                         (gx#syntax-e
                                                          _g2518425249_)))
                                                    (let ((_hd2518725256_
                                                           (##car _e2518625252_))
                                                          (_tl2518825259_
                                                           (##cdr _e2518625252_)))
                                                      (if (gx#stx-datum?
                                                           _hd2518725256_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2518725256_)
                              'simple:)
                      (if (gx#stx-pair? _tl2518825259_)
                          (let ((_e2518925262_ (gx#syntax-e _tl2518825259_)))
                            (let ((_hd2519025266_ (##car _e2518925262_))
                                  (_tl2519125269_ (##cdr _e2518925262_)))
                              (if (gx#stx-null? _tl2519125269_)
                                  ((lambda (_L25272_)
                                     (let* ((_g2528525293_
                                             (lambda (_g2528625289_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2528625289_)))
                                            (_g2528425312_
                                             (lambda (_g2528625297_)
                                               ((lambda (_L25300_)
                                                  (let ()
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L24472_ '()))
                                    (cons _L25300_ '())))
                        (cons (_generate-simple-vector22862_
                               _tgt24451_
                               _L25272_
                               '0
                               _K24454_
                               _E24455_)
                              (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2528625297_))))
                                       (_g2528425312_
                                        (gx#stx-length _L25272_))))
                                   _hd2519025266_)
                                  (_g2518225245_ _g2518425249_))))
                          (_g2518225245_ _g2518425249_))
                      (_g2518225245_ _g2518425249_))
                  (_g2518225245_ _g2518425249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2518225245_
                                                   _g2518425249_)))))
                                      (_g2518125316_ _L25169_)))
                                  _hd2456125163_)
                                 (_g2449225142_ _g2450025146_))))
                         (_g2449225142_ _g2450025146_))
                     (_g2449225142_ _g2450025146_))
                 (_g2449225142_ _g2450025146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449225142_
                                                  _g2450025146_))))
                                          (_g2449025391_
                                           (lambda (_g2450025324_)
                                             (if (gx#stx-pair? _g2450025324_)
                                                 (let ((_e2455025327_
                                                        (gx#syntax-e
                                                         _g2450025324_)))
                                                   (let ((_hd2455125331_
                                                          (##car _e2455025327_))
                                                         (_tl2455225334_
                                                          (##cdr _e2455025327_)))
                                                     (if (gx#stx-datum?
                                                          _hd2455125331_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2455125331_)
                             'box:)
                     (if (gx#stx-pair? _tl2455225334_)
                         (let ((_e2455325337_ (gx#syntax-e _tl2455225334_)))
                           (let ((_hd2455425341_ (##car _e2455325337_))
                                 (_tl2455525344_ (##cdr _e2455325337_)))
                             (if (gx#stx-null? _tl2455525344_)
                                 ((lambda (_L25347_)
                                    (let* ((_g2536025368_
                                            (lambda (_g2536125364_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2536125364_)))
                                           (_g2535925387_
                                            (lambda (_g2536125372_)
                                              ((lambda (_L25375_)
                                                 (let ()
                                                   (cons 'if
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L24472_ '()))
                       (cons (cons 'let
                                   (cons (cons (cons _L25375_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L24472_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122859_
                                                _L25375_
                                                _L25347_
                                                _K24454_
                                                _E24455_)
                                               '())))
                             (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2536125372_))))
                                      (_g2535925387_ (gx#genident 'e))))
                                  _hd2455425341_)
                                 (_g2449125320_ _g2450025324_))))
                         (_g2449125320_ _g2450025324_))
                     (_g2449125320_ _g2450025324_))
                 (_g2449125320_ _g2450025324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449125320_
                                                  _g2450025324_))))
                                          (_g2448925445_
                                           (lambda (_g2450025395_)
                                             (if (gx#stx-pair? _g2450025395_)
                                                 (let ((_e2454025398_
                                                        (gx#syntax-e
                                                         _g2450025395_)))
                                                   (let ((_hd2454125402_
                                                          (##car _e2454025398_))
                                                         (_tl2454225405_
                                                          (##cdr _e2454025398_)))
                                                     (if (gx#stx-datum?
                                                          _hd2454125402_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2454125402_)
                             'splice:)
                     (if (gx#stx-pair? _tl2454225405_)
                         (let ((_e2454325408_ (gx#syntax-e _tl2454225405_)))
                           (let ((_hd2454425412_ (##car _e2454325408_))
                                 (_tl2454525415_ (##cdr _e2454325408_)))
                             (if (gx#stx-pair? _tl2454525415_)
                                 (let ((_e2454625418_
                                        (gx#syntax-e _tl2454525415_)))
                                   (let ((_hd2454725422_ (##car _e2454625418_))
                                         (_tl2454825425_
                                          (##cdr _e2454625418_)))
                                     (if (gx#stx-null? _tl2454825425_)
                                         ((lambda (_L25428_ _L25430_)
                                            (_generate-splice22861_
                                             _tgt24451_
                                             _L25430_
                                             _L25428_
                                             _K24454_
                                             _E24455_))
                                          _hd2454725422_
                                          _hd2454425412_)
                                         (_g2449025391_ _g2450025395_))))
                                 (_g2449025391_ _g2450025395_))))
                         (_g2449025391_ _g2450025395_))
                     (_g2449025391_ _g2450025395_))
                 (_g2449025391_ _g2450025395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449025391_
                                                  _g2450025395_))))
                                          (_g2448825466_
                                           (lambda (_g2450025449_)
                                             (if (gx#stx-pair? _g2450025449_)
                                                 (let ((_e2453525452_
                                                        (gx#syntax-e
                                                         _g2450025449_)))
                                                   (let ((_hd2453625456_
                                                          (##car _e2453525452_))
                                                         (_tl2453725459_
                                                          (##cdr _e2453525452_)))
                                                     (if (gx#stx-datum?
                                                          _hd2453625456_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2453625456_)
                             'null:)
                     (if (gx#stx-null? _tl2453725459_)
                         ((lambda ()
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L24472_ '()))
                                        (cons _K24454_ (cons _E24455_ '()))))))
                         (_g2448925445_ _g2450025449_))
                     (_g2448925445_ _g2450025449_))
                 (_g2448925445_ _g2450025449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448925445_
                                                  _g2450025449_))))
                                          (_g2448725589_
                                           (lambda (_g2450025470_)
                                             (if (gx#stx-pair? _g2450025470_)
                                                 (let ((_e2452625473_
                                                        (gx#syntax-e
                                                         _g2450025470_)))
                                                   (let ((_hd2452725477_
                                                          (##car _e2452625473_))
                                                         (_tl2452825480_
                                                          (##cdr _e2452625473_)))
                                                     (if (gx#stx-datum?
                                                          _hd2452725477_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2452725477_)
                             'cons:)
                     (if (gx#stx-pair? _tl2452825480_)
                         (let ((_e2452925483_ (gx#syntax-e _tl2452825480_)))
                           (let ((_hd2453025487_ (##car _e2452925483_))
                                 (_tl2453125490_ (##cdr _e2452925483_)))
                             (if (gx#stx-pair? _tl2453125490_)
                                 (let ((_e2453225493_
                                        (gx#syntax-e _tl2453125490_)))
                                   (let ((_hd2453325497_ (##car _e2453225493_))
                                         (_tl2453425500_
                                          (##cdr _e2453225493_)))
                                     (if (gx#stx-null? _tl2453425500_)
                                         ((lambda (_L25503_ _L25505_)
                                            (let* ((_g2552125536_
                                                    (lambda (_g2552225532_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2552225532_)))
                                                   (_g2552025585_
                                                    (lambda (_g2552225540_)
                                                      (if (gx#stx-pair?
                                                           _g2552225540_)
                                                          (let ((_e2552525543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2552225540_)))
                    (let ((_hd2552625547_ (##car _e2552525543_))
                          (_tl2552725550_ (##cdr _e2552525543_)))
                      (if (gx#stx-pair? _tl2552725550_)
                          (let ((_e2552825553_ (gx#syntax-e _tl2552725550_)))
                            (let ((_hd2552925557_ (##car _e2552825553_))
                                  (_tl2553025560_ (##cdr _e2552825553_)))
                              (if (gx#stx-null? _tl2553025560_)
                                  ((lambda (_L25563_ _L25565_)
                                     (let ()
                                       (cons 'if
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L24472_ '()))
                                                   (cons (let ((_hd-pat25581_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25505_))
                       (_tl-pat25583_ (gx#stx-e _L25503_)))
                   (if (if (equal? _hd-pat25581_ '(any:))
                           (equal? _tl-pat25583_ '(any:))
                           '#f)
                       _K24454_
                       (if (equal? _tl-pat25583_ '(any:))
                           (cons 'let
                                 (cons (cons (cons _L25565_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##car)
                                                               (cons _L24472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())
                                       (cons (_generate122859_
                                              _L25565_
                                              _L25505_
                                              _K24454_
                                              _E24455_)
                                             '())))
                           (if (equal? _hd-pat25581_ '(any:))
                               (cons 'let
                                     (cons (cons (cons _L25563_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _L24472_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate122859_
                                                  _L25563_
                                                  _L25503_
                                                  _K24454_
                                                  _E24455_)
                                                 '())))
                               (cons 'let
                                     (cons (cons (cons _L25565_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _L24472_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L25563_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _L24472_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (_generate122859_
                                                  _L25565_
                                                  _L25505_
                                                  (_generate122859_
                                                   _L25563_
                                                   _L25503_
                                                   _K24454_
                                                   _E24455_)
                                                  _E24455_)
                                                 '())))))))
                 (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2552925557_
                                   _hd2552625547_)
                                  (_g2552125536_ _g2552225540_))))
                          (_g2552125536_ _g2552225540_))))
                  (_g2552125536_ _g2552225540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2552025585_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2453325497_
                                          _hd2453025487_)
                                         (_g2448825466_ _g2450025470_))))
                                 (_g2448825466_ _g2450025470_))))
                         (_g2448825466_ _g2450025470_))
                     (_g2448825466_ _g2450025470_))
                 (_g2448825466_ _g2450025470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448825466_
                                                  _g2450025470_))))
                                          (_g2448625629_
                                           (lambda (_g2450025593_)
                                             (if (gx#stx-pair? _g2450025593_)
                                                 (let ((_e2451825596_
                                                        (gx#syntax-e
                                                         _g2450025593_)))
                                                   (let ((_hd2451925600_
                                                          (##car _e2451825596_))
                                                         (_tl2452025603_
                                                          (##cdr _e2451825596_)))
                                                     (if (gx#stx-datum?
                                                          _hd2451925600_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2451925600_)
                             'not:)
                     (if (gx#stx-pair? _tl2452025603_)
                         (let ((_e2452125606_ (gx#syntax-e _tl2452025603_)))
                           (let ((_hd2452225610_ (##car _e2452125606_))
                                 (_tl2452325613_ (##cdr _e2452125606_)))
                             (if (gx#stx-null? _tl2452325613_)
                                 ((lambda (_L25616_)
                                    (_generate122859_
                                     _tgt24451_
                                     _L25616_
                                     _E24455_
                                     _K24454_))
                                  _hd2452225610_)
                                 (_g2448725589_ _g2450025593_))))
                         (_g2448725589_ _g2450025593_))
                     (_g2448725589_ _g2450025593_))
                 (_g2448725589_ _g2450025593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448725589_
                                                  _g2450025593_))))
                                          (_g2448525717_
                                           (lambda (_g2450025633_)
                                             (if (gx#stx-pair? _g2450025633_)
                                                 (let ((_e2451425636_
                                                        (gx#syntax-e
                                                         _g2450025633_)))
                                                   (let ((_hd2451525640_
                                                          (##car _e2451425636_))
                                                         (_tl2451625643_
                                                          (##cdr _e2451425636_)))
                                                     (if (gx#stx-datum?
                                                          _hd2451525640_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2451525640_)
                             'or:)
                     ((lambda (_L25646_)
                        (let* ((_g2565825670_
                                (lambda (_g2565925666_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2565925666_)))
                               (_g2565725681_
                                (lambda (_g2565925674_)
                                  ((lambda () _E24455_))))
                               (_g2565625713_
                                (lambda (_g2565925685_)
                                  (if (gx#stx-pair? _g2565925685_)
                                      (let ((_e2566225688_
                                             (gx#syntax-e _g2565925685_)))
                                        (let ((_hd2566325692_
                                               (##car _e2566225688_))
                                              (_tl2566425695_
                                               (##cdr _e2566225688_)))
                                          ((lambda (_L25698_ _L25700_)
                                             (_generate122859_
                                              _tgt24451_
                                              _L25700_
                                              _K24454_
                                              (_generate122859_
                                               _tgt24451_
                                               (cons 'or: _L25698_)
                                               _K24454_
                                               _E24455_)))
                                           _tl2566425695_
                                           _hd2566325692_)))
                                      (_g2565725681_ _g2565925685_)))))
                          (_g2565625713_ _L25646_)))
                      _tl2451625643_)
                     (_g2448625629_ _g2450025633_))
                 (_g2448625629_ _g2450025633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448625629_
                                                  _g2450025633_))))
                                          (_g2448425805_
                                           (lambda (_g2450025721_)
                                             (if (gx#stx-pair? _g2450025721_)
                                                 (let ((_e2451025724_
                                                        (gx#syntax-e
                                                         _g2450025721_)))
                                                   (let ((_hd2451125728_
                                                          (##car _e2451025724_))
                                                         (_tl2451225731_
                                                          (##cdr _e2451025724_)))
                                                     (if (gx#stx-datum?
                                                          _hd2451125728_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2451125728_)
                             'and:)
                     ((lambda (_L25734_)
                        (let* ((_g2574625758_
                                (lambda (_g2574725754_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2574725754_)))
                               (_g2574525769_
                                (lambda (_g2574725762_)
                                  ((lambda () _K24454_))))
                               (_g2574425801_
                                (lambda (_g2574725773_)
                                  (if (gx#stx-pair? _g2574725773_)
                                      (let ((_e2575025776_
                                             (gx#syntax-e _g2574725773_)))
                                        (let ((_hd2575125780_
                                               (##car _e2575025776_))
                                              (_tl2575225783_
                                               (##cdr _e2575025776_)))
                                          ((lambda (_L25786_ _L25788_)
                                             (_generate122859_
                                              _tgt24451_
                                              _L25788_
                                              (_generate122859_
                                               _tgt24451_
                                               (cons 'and: _L25786_)
                                               _K24454_
                                               _E24455_)
                                              _E24455_))
                                           _tl2575225783_
                                           _hd2575125780_)))
                                      (_g2574525769_ _g2574725773_)))))
                          (_g2574425801_ _L25734_)))
                      _tl2451225731_)
                     (_g2448525717_ _g2450025721_))
                 (_g2448525717_ _g2450025721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448525717_
                                                  _g2450025721_))))
                                          (_g2448326094_
                                           (lambda (_g2450025809_)
                                             (if (gx#stx-pair? _g2450025809_)
                                                 (let ((_e2450325812_
                                                        (gx#syntax-e
                                                         _g2450025809_)))
                                                   (let ((_hd2450425816_
                                                          (##car _e2450325812_))
                                                         (_tl2450525819_
                                                          (##cdr _e2450325812_)))
                                                     (if (gx#stx-datum?
                                                          _hd2450425816_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2450425816_)
                             '?:)
                     (if (gx#stx-pair? _tl2450525819_)
                         (let ((_e2450625822_ (gx#syntax-e _tl2450525819_)))
                           (let ((_hd2450725826_ (##car _e2450625822_))
                                 (_tl2450825829_ (##cdr _e2450625822_)))
                             ((lambda (_L25832_ _L25834_)
                                (let* ((_g2585025882_
                                        (lambda (_g2585125878_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2585125878_)))
                                       (_g2584925980_
                                        (lambda (_g2585125886_)
                                          (if (gx#stx-pair? _g2585125886_)
                                              (let ((_e2586525889_
                                                     (gx#syntax-e
                                                      _g2585125886_)))
                                                (let ((_hd2586625893_
                                                       (##car _e2586525889_))
                                                      (_tl2586725896_
                                                       (##cdr _e2586525889_)))
                                                  (if (gx#stx-datum?
                                                       _hd2586625893_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2586625893_)
                          '::)
                  (if (gx#stx-pair? _tl2586725896_)
                      (let ((_e2586825899_ (gx#syntax-e _tl2586725896_)))
                        (let ((_hd2586925903_ (##car _e2586825899_))
                              (_tl2587025906_ (##cdr _e2586825899_)))
                          (if (gx#stx-pair? _tl2587025906_)
                              (let ((_e2587125909_
                                     (gx#syntax-e _tl2587025906_)))
                                (let ((_hd2587225913_ (##car _e2587125909_))
                                      (_tl2587325916_ (##cdr _e2587125909_)))
                                  (if (gx#stx-datum? _hd2587225913_)
                                      (if (equal? (gx#stx-e _hd2587225913_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2587325916_)
                                              (let ((_e2587425919_
                                                     (gx#syntax-e
                                                      _tl2587325916_)))
                                                (let ((_hd2587525923_
                                                       (##car _e2587425919_))
                                                      (_tl2587625926_
                                                       (##cdr _e2587425919_)))
                                                  (if (gx#stx-null?
                                                       _tl2587625926_)
                                                      ((lambda (_L25929_
                                                                _L25931_)
                                                         (let* ((_g2594925957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2595025953_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2595025953_)))
                        (_g2594825976_
                         (lambda (_g2595025961_)
                           ((lambda (_L25964_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25834_
                                                        (cons _L24472_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L25964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25931_ (cons _L24472_ '()))
                                        '()))
                            '())
                      (cons (_generate122859_
                             _L25964_
                             _L25929_
                             _K24454_
                             _E24455_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24455_ '()))))))
                            _g2595025961_))))
                   (_g2594825976_ (gx#genident 'e))))
               _hd2587525923_
               _hd2586925903_)
              (_g2585025882_ _g2585125886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585025882_ _g2585125886_))
                                          (_g2585025882_ _g2585125886_))
                                      (_g2585025882_ _g2585125886_))))
                              (_g2585025882_ _g2585125886_))))
                      (_g2585025882_ _g2585125886_))
                  (_g2585025882_ _g2585125886_))
              (_g2585025882_ _g2585125886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2585025882_ _g2585125886_))))
                                       (_g2584826051_
                                        (lambda (_g2585125984_)
                                          (if (gx#stx-pair? _g2585125984_)
                                              (let ((_e2585725987_
                                                     (gx#syntax-e
                                                      _g2585125984_)))
                                                (let ((_hd2585825991_
                                                       (##car _e2585725987_))
                                                      (_tl2585925994_
                                                       (##cdr _e2585725987_)))
                                                  (if (gx#stx-datum?
                                                       _hd2585825991_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2585825991_)
                          '=>:)
                  (if (gx#stx-pair? _tl2585925994_)
                      (let ((_e2586025997_ (gx#syntax-e _tl2585925994_)))
                        (let ((_hd2586126001_ (##car _e2586025997_))
                              (_tl2586226004_ (##cdr _e2586025997_)))
                          (if (gx#stx-null? _tl2586226004_)
                              ((lambda (_L26007_)
                                 (let* ((_g2602026028_
                                         (lambda (_g2602126024_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2602126024_)))
                                        (_g2601926047_
                                         (lambda (_g2602126032_)
                                           ((lambda (_L26035_)
                                              (let ()
                                                (cons 'let
                                                      (cons (cons (cons _L26035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25834_ (cons _L24472_ '())) '()))
                          '())
                    (cons (cons 'if
                                (cons _L26035_
                                      (cons (_generate122859_
                                             _L26035_
                                             _L26007_
                                             _K24454_
                                             _E24455_)
                                            (cons _E24455_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2602126032_))))
                                   (_g2601926047_ (gx#genident 'e))))
                               _hd2586126001_)
                              (_g2584925980_ _g2585125984_))))
                      (_g2584925980_ _g2585125984_))
                  (_g2584925980_ _g2585125984_))
              (_g2584925980_ _g2585125984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2584925980_ _g2585125984_))))
                                       (_g2584726079_
                                        (lambda (_g2585126055_)
                                          (if (gx#stx-pair? _g2585126055_)
                                              (let ((_e2585326058_
                                                     (gx#syntax-e
                                                      _g2585126055_)))
                                                (let ((_hd2585426062_
                                                       (##car _e2585326058_))
                                                      (_tl2585526065_
                                                       (##cdr _e2585326058_)))
                                                  (if (gx#stx-null?
                                                       _tl2585526065_)
                                                      ((lambda (_L26068_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25834_ (cons _L24472_ '())))
                             (cons (_generate122859_
                                    _tgt24451_
                                    _L26068_
                                    _K24454_
                                    _E24455_)
                                   (cons _E24455_ '())))))
               _hd2585426062_)
              (_g2584826051_ _g2585126055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2584826051_ _g2585126055_))))
                                       (_g2584626090_
                                        (lambda (_g2585126083_)
                                          (if (gx#stx-null? _g2585126083_)
                                              ((lambda ()
                                                 (cons 'if
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25834_ (cons _L24472_ '())))
                     (cons _K24454_ (cons _E24455_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2584726079_ _g2585126083_)))))
                                  (_g2584626090_ _L25832_)))
                              _tl2450825829_
                              _hd2450725826_)))
                         (_g2448425805_ _g2450025809_))
                     (_g2448425805_ _g2450025809_))
                 (_g2448425805_ _g2450025809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2448425805_
                                                  _g2450025809_)))))
                                     (_g2448326094_ _ptree24453_))))
                               _g2445824469_))))
                      (_g2445626098_ _tgt24451_))))
                 (_generate-splice22861_
                  (lambda (_tgt23823_ _hd23825_ _rest23826_ _K23827_ _E23828_)
                    (let* ((_g2383023847_
                            (lambda (_g2383123843_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2383123843_)))
                           (_g2382924447_
                            (lambda (_g2383123851_)
                              (if (gx#stx-pair/null? _g2383123851_)
                                  (if (fx>= (gx#stx-length _g2383123851_) '0)
                                      (let ((_g35433_
                                             (gx#syntax-split-splice
                                              _g2383123851_
                                              '0)))
                                        (begin
                                          (let ((_g35434_
                                                 (if (##values? _g35433_)
                                                     (##vector-length _g35433_)
                                                     1)))
                                            (if (not (##fx= _g35434_ 2))
                                                (error "Context expects 2 values"
                                                       _g35434_)))
                                          (let ((_target2383323854_
                                                 (##vector-ref _g35433_ 0))
                                                (_tl2383523857_
                                                 (##vector-ref _g35433_ 1)))
                                            (if (gx#stx-null? _tl2383523857_)
                                                (letrec ((_loop2383623860_
                                                          (lambda (_hd2383423864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2384023867_)
                    (if (gx#stx-pair? _hd2383423864_)
                        (let ((_e2383723870_ (gx#syntax-e _hd2383423864_)))
                          (let ((_lp-hd2383823874_ (##car _e2383723870_))
                                (_lp-tl2383923877_ (##cdr _e2383723870_)))
                            (_loop2383623860_
                             _lp-tl2383923877_
                             (cons _lp-hd2383823874_ _var2384023867_))))
                        (let ((_var2384123880_ (reverse _var2384023867_)))
                          ((lambda (_L23884_)
                             (let ()
                               (let* ((_g2390023917_
                                       (lambda (_g2390123913_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2390123913_)))
                                      (_g2389924435_
                                       (lambda (_g2390123921_)
                                         (if (gx#stx-pair/null? _g2390123921_)
                                             (if (fx>= (gx#stx-length
                                                        _g2390123921_)
                                                       '0)
                                                 (let ((_g35435_
                                                        (gx#syntax-split-splice
                                                         _g2390123921_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35436_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35435_)
                        (##vector-length _g35435_)
                        1)))
               (if (not (##fx= _g35436_ 2))
                   (error "Context expects 2 values" _g35436_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2390323924_
                                                            (##vector-ref
                                                             _g35435_
                                                             0))
                                                           (_tl2390523927_
                                                            (##vector-ref
                                                             _g35435_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2390523927_)
                                                           (letrec ((_loop2390623930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2390423934_ _var-r2391023937_)
                               (if (gx#stx-pair? _hd2390423934_)
                                   (let ((_e2390723940_
                                          (gx#syntax-e _hd2390423934_)))
                                     (let ((_lp-hd2390823944_
                                            (##car _e2390723940_))
                                           (_lp-tl2390923947_
                                            (##cdr _e2390723940_)))
                                       (_loop2390623930_
                                        _lp-tl2390923947_
                                        (cons _lp-hd2390823944_
                                              _var-r2391023937_))))
                                   (let ((_var-r2391123950_
                                          (reverse _var-r2391023937_)))
                                     ((lambda (_L23954_)
                                        (let ()
                                          (let* ((_g2397123988_
                                                  (lambda (_g2397223984_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2397223984_)))
                                                 (_g2397024423_
                                                  (lambda (_g2397223992_)
                                                    (if (gx#stx-pair/null?
                                                         _g2397223992_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2397223992_)
                          '0)
                    (let ((_g35437_ (gx#syntax-split-splice _g2397223992_ '0)))
                      (begin
                        (let ((_g35438_
                               (if (##values? _g35437_)
                                   (##vector-length _g35437_)
                                   1)))
                          (if (not (##fx= _g35438_ 2))
                              (error "Context expects 2 values" _g35438_)))
                        (let ((_target2397423995_ (##vector-ref _g35437_ 0))
                              (_tl2397623998_ (##vector-ref _g35437_ 1)))
                          (if (gx#stx-null? _tl2397623998_)
                              (letrec ((_loop2397724001_
                                        (lambda (_hd2397524005_
                                                 _init2398124008_)
                                          (if (gx#stx-pair? _hd2397524005_)
                                              (let ((_e2397824011_
                                                     (gx#syntax-e
                                                      _hd2397524005_)))
                                                (let ((_lp-hd2397924015_
                                                       (##car _e2397824011_))
                                                      (_lp-tl2398024018_
                                                       (##cdr _e2397824011_)))
                                                  (_loop2397724001_
                                                   _lp-tl2398024018_
                                                   (cons _lp-hd2397924015_
                                                         _init2398124008_))))
                                              (let ((_init2398224021_
                                                     (reverse _init2398124008_)))
                                                ((lambda (_L24025_)
                                                   (let ()
                                                     (let* ((_g2404224050_
                                                             (lambda (_g2404324046_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2404324046_)))
                                                            (_g2404124419_
                                                             (lambda (_g2404324054_)
                                                               ((lambda (_L24057_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2407024078_
                                    (lambda (_g2407124074_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2407124074_)))
                                   (_g2406924415_
                                    (lambda (_g2407124082_)
                                      ((lambda (_L24085_)
                                         (let ()
                                           (let* ((_g2409824106_
                                                   (lambda (_g2409924102_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2409924102_)))
                                                  (_g2409724411_
                                                   (lambda (_g2409924110_)
                                                     ((lambda (_L24113_)
                                                        (let ()
                                                          (let* ((_g2412624134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2412724130_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2412724130_)))
                         (_g2412524407_
                          (lambda (_g2412724138_)
                            ((lambda (_L24141_)
                               (let ()
                                 (let* ((_g2415424162_
                                         (lambda (_g2415524158_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2415524158_)))
                                        (_g2415324403_
                                         (lambda (_g2415524166_)
                                           ((lambda (_L24169_)
                                              (let ()
                                                (let* ((_g2418224190_
                                                        (lambda (_g2418324186_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2418324186_)))
                                                       (_g2418124399_
                                                        (lambda (_g2418324194_)
                                                          ((lambda (_L24197_)
                                                             (let ()
                                                               (let* ((_g2421024218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2421124214_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2421124214_)))
                              (_g2420924395_
                               (lambda (_g2421124222_)
                                 ((lambda (_L24225_)
                                    (let ()
                                      (let* ((_g2423824246_
                                              (lambda (_g2423924242_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2423924242_)))
                                             (_g2423724380_
                                              (lambda (_g2423924250_)
                                                ((lambda (_L24253_)
                                                   (let ()
                                                     (let* ((_g2426624274_
                                                             (lambda (_g2426724270_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2426724270_)))
                                                            (_g2426524368_
                                                             (lambda (_g2426724278_)
                                                               ((lambda (_L24281_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2429424302_
                                    (lambda (_g2429524298_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2429524298_)))
                                   (_g2429324364_
                                    (lambda (_g2429524306_)
                                      ((lambda (_L24309_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L24085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24197_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2432324334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2432424337_)
                        (cons _g2432324334_ _g2432424337_))
                      '()
                      _L23884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L24225_ '())))
                                   '()))
                       (cons (cons _L24141_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L24169_
                                                           (cons _L24197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2432524340_ _g2432624343_)
                                    (cons _g2432524340_ _g2432624343_))
                                  '()
                                  _L23954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L24309_ '())))
                                         '()))
                             (cons (cons _L24113_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L24197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2432724346_ _g2432824349_)
                                    (cons _g2432724346_ _g2432824349_))
                                  '()
                                  _L23954_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L24197_ '()))
                                     (cons (cons _L24141_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L24197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L24197_
                     (begin
                       '#!void
                       (foldr (lambda (_g2432924352_ _g2433024355_)
                                (cons _g2432924352_ _g2433024355_))
                              '()
                              _L23954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L24281_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L24113_
                             (cons _L24057_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2433124358_
                                                     _g2433224361_)
                                              (cons _g2433124358_
                                                    _g2433224361_))
                                            '()
                                            _L24025_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2429524306_))))
                              (_g2429324364_
                               (_generate122859_
                                _L24169_
                                _hd23825_
                                _L24253_
                                _L24281_)))))
                        _g2426724278_))))
               (_g2426524368_
                (cons _L24085_
                      (cons _L24197_
                            (begin
                              '#!void
                              (foldr (lambda (_g2437124374_ _g2437224377_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2437124374_ '()))
                                             _g2437224377_))
                                     '()
                                     _L23954_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2423924250_))))
                                        (_g2423724380_
                                         (cons _L24113_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24197_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23954_
                                                        _L23884_)
                                                       (foldr (lambda (_g2438324387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2438424390_
                               _g2438524392_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2438424390_
                                          (cons _g2438324387_ '())))
                              _g2438524392_))
                      '()
                      _L23954_
                      _L23884_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2421124222_))))
                         (_g2420924395_
                          (_generate122859_
                           _L24197_
                           _rest23826_
                           _K23827_
                           _E23828_)))))
                   _g2418324194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2418124399_
                                                   (gx#genident 'rest)))))
                                            _g2415524166_))))
                                   (_g2415324403_ (gx#genident 'hd)))))
                             _g2412724138_))))
                    (_g2412524407_ (gx#genident 'splice-try)))))
              _g2409924110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2409724411_
                                              (gx#genident 'splice-loop)))))
                                       _g2407124082_))))
                              (_g2406924415_ (gx#genident 'splice-rest)))))
                        _g2404324054_))))
               (_g2404124419_ _tgt23823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2398224021_))))))
                                (_loop2397724001_ _target2397423995_ '()))
                              (_g2397123988_ _g2397223992_)))))
                    (_g2397123988_ _g2397223992_))
                (_g2397123988_ _g2397223992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2397024423_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2442624429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2442724432_)
                  (cons _g2442624429_ _g2442724432_))
                '()
                _L23884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2391123950_))))))
                     (_loop2390623930_ _target2390323924_ '()))
                   (_g2390023917_ _g2390123921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2390023917_ _g2390123921_))
                                             (_g2390023917_ _g2390123921_)))))
                                 (_g2389924435_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2443824441_
                                                     _g2443924444_)
                                              (cons _g2443824441_
                                                    _g2443924444_))
                                            '()
                                            _L23884_)))))))
                           _var2384123880_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2383623860_
                                                   _target2383323854_
                                                   '()))
                                                (_g2383023847_
                                                 _g2383123851_)))))
                                      (_g2383023847_ _g2383123851_))
                                  (_g2383023847_ _g2383123851_)))))
                      (_g2382924447_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23825_)))))
                 (_generate-simple-vector22862_
                  (lambda (_tgt23665_
                           _body23667_
                           _start23668_
                           _K23669_
                           _E23670_)
                    (let _recur23672_ ((_rest23675_ _body23667_)
                                       (_off23677_ _start23668_))
                      (let* ((_g2368023692_
                              (lambda (_g2368123688_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2368123688_)))
                             (_g2367923703_
                              (lambda (_g2368123696_) ((lambda () _K23669_))))
                             (_g2367823819_
                              (lambda (_g2368123707_)
                                (if (gx#stx-pair? _g2368123707_)
                                    (let ((_e2368423710_
                                           (gx#syntax-e _g2368123707_)))
                                      (let ((_hd2368523714_
                                             (##car _e2368423710_))
                                            (_tl2368623717_
                                             (##cdr _e2368423710_)))
                                        ((lambda (_L23720_ _L23722_)
                                           (let* ((_g2373723756_
                                                   (lambda (_g2373823752_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2373823752_)))
                                                  (_g2373623815_
                                                   (lambda (_g2373823760_)
                                                     (if (gx#stx-pair?
                                                          _g2373823760_)
                                                         (let ((_e2374223763_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2373823760_)))
                   (let ((_hd2374323767_ (##car _e2374223763_))
                         (_tl2374423770_ (##cdr _e2374223763_)))
                     (if (gx#stx-pair? _tl2374423770_)
                         (let ((_e2374523773_ (gx#syntax-e _tl2374423770_)))
                           (let ((_hd2374623777_ (##car _e2374523773_))
                                 (_tl2374723780_ (##cdr _e2374523773_)))
                             (if (gx#stx-pair? _tl2374723780_)
                                 (let ((_e2374823783_
                                        (gx#syntax-e _tl2374723780_)))
                                   (let ((_hd2374923787_ (##car _e2374823783_))
                                         (_tl2375023790_
                                          (##cdr _e2374823783_)))
                                     (if (gx#stx-null? _tl2375023790_)
                                         ((lambda (_L23793_ _L23795_ _L23796_)
                                            (let ()
                                              (cons 'let
                                                    (cons (cons (cons _L23796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23795_ (cons _L23793_ '())))
                                    '()))
                        '())
                  (cons (_generate122859_
                         _L23796_
                         _L23722_
                         (_recur23672_ _L23720_ (fx1+ _off23677_))
                         _E23670_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2374923787_
                                          _hd2374623777_
                                          _hd2374323767_)
                                         (_g2373723756_ _g2373823760_))))
                                 (_g2373723756_ _g2373823760_))))
                         (_g2373723756_ _g2373823760_))))
                 (_g2373723756_ _g2373823760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2373623815_
                                              (list (gx#genident 'e)
                                                    _tgt23665_
                                                    _off23677_))))
                                         _tl2368623717_
                                         _hd2368523714_)))
                                    (_g2367923703_ _g2368123707_)))))
                        (_g2367823819_ _rest23675_)))))
                 (_generate-list-vector22863_
                  (lambda (_tgt23575_
                           _body23577_
                           _tgt->list23578_
                           _start23579_
                           _K23580_
                           _E23581_)
                    (let* ((_g2358323602_
                            (lambda (_g2358423598_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2358423598_)))
                           (_g2358223661_
                            (lambda (_g2358423606_)
                              (if (gx#stx-pair? _g2358423606_)
                                  (let ((_e2358823609_
                                         (gx#syntax-e _g2358423606_)))
                                    (let ((_hd2358923613_
                                           (##car _e2358823609_))
                                          (_tl2359023616_
                                           (##cdr _e2358823609_)))
                                      (if (gx#stx-pair? _tl2359023616_)
                                          (let ((_e2359123619_
                                                 (gx#syntax-e _tl2359023616_)))
                                            (let ((_hd2359223623_
                                                   (##car _e2359123619_))
                                                  (_tl2359323626_
                                                   (##cdr _e2359123619_)))
                                              (if (gx#stx-pair? _tl2359323626_)
                                                  (let ((_e2359423629_
                                                         (gx#syntax-e
                                                          _tl2359323626_)))
                                                    (let ((_hd2359523633_
                                                           (##car _e2359423629_))
                                                          (_tl2359623636_
                                                           (##cdr _e2359423629_)))
                                                      (if (gx#stx-null?
                                                           _tl2359623636_)
                                                          ((lambda (_L23639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23641_
                            _L23642_)
                     (let ()
                       (cons 'let
                             (cons (cons (cons _L23642_
                                               (cons (cons _L23639_
                                                           (cons _L23641_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122859_
                                          _L23642_
                                          _body23577_
                                          _K23580_
                                          _E23581_)
                                         '())))))
                   _hd2359523633_
                   _hd2359223623_
                   _hd2358923613_)
                  (_g2358323602_ _g2358423606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2358323602_
                                                   _g2358423606_))))
                                          (_g2358323602_ _g2358423606_))))
                                  (_g2358323602_ _g2358423606_)))))
                      (_g2358223661_
                       (list (gx#genident 'e) _tgt23575_ _tgt->list23578_)))))
                 (_generate-struct22864_
                  (lambda (_info23246_
                           _tgt23248_
                           _body23249_
                           _K23250_
                           _E23251_)
                    (let* ((_rtd23253_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23246_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23246_)
                                '#f))
                           (_fields23263_
                            (let _lp23256_ ((_rtd23259_ _rtd23253_)
                                            (_k23261_ '0))
                              (if _rtd23259_
                                  (_lp23256_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd23259_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd23259_))
                                        _k23261_))
                                  _k23261_)))
                           (_final?23266_
                            (if _rtd23253_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd23253_))
                                '#f))
                           (_g2326923277_
                            (lambda (_g2327023273_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2327023273_)))
                           (_g2326823571_
                            (lambda (_g2327023281_)
                              ((lambda (_L23284_)
                                 (let ()
                                   (let* ((_g2329923307_
                                           (lambda (_g2330023303_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2330023303_)))
                                          (_g2329823473_
                                           (lambda (_g2330023311_)
                                             ((lambda (_L23314_)
                                                (let ()
                                                  (let ()
                                                    (let* ((_g2333023351_
                                                            (lambda (_g2333123347_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2333123347_)))
                                                           (_g2332923394_
                                                            (lambda (_g2333123355_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2333123355_)
                          (let ((_e2334023358_ (gx#syntax-e _g2333123355_)))
                            (let ((_hd2334123362_ (##car _e2334023358_))
                                  (_tl2334223365_ (##cdr _e2334023358_)))
                              (if (gx#stx-datum? _hd2334123362_)
                                  (if (equal? (gx#stx-e _hd2334123362_) 'list:)
                                      (if (gx#stx-pair? _tl2334223365_)
                                          (let ((_e2334323368_
                                                 (gx#syntax-e _tl2334223365_)))
                                            (let ((_hd2334423372_
                                                   (##car _e2334323368_))
                                                  (_tl2334523375_
                                                   (##cdr _e2334323368_)))
                                              (if (gx#stx-null? _tl2334523375_)
                                                  ((lambda (_L23378_)
                                                     (cons 'if
                                                           (cons _L23314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (_generate-list-vector22863_
                                _tgt23248_
                                _L23378_
                                (gx#datum->syntax '#f 'struct->list)
                                '1
                                _K23250_
                                _E23251_)
                               (cons _E23251_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2334423372_)
                                                  (_g2333023351_
                                                   _g2333123355_))))
                                          (_g2333023351_ _g2333123355_))
                                      (_g2333023351_ _g2333123355_))
                                  (_g2333023351_ _g2333123355_))))
                          (_g2333023351_ _g2333123355_))))
                   (_g2332823469_
                    (lambda (_g2333123398_)
                      (if (gx#stx-pair? _g2333123398_)
                          (let ((_e2333323401_ (gx#syntax-e _g2333123398_)))
                            (let ((_hd2333423405_ (##car _e2333323401_))
                                  (_tl2333523408_ (##cdr _e2333323401_)))
                              (if (gx#stx-datum? _hd2333423405_)
                                  (if (equal? (gx#stx-e _hd2333423405_)
                                              'simple:)
                                      (if (gx#stx-pair? _tl2333523408_)
                                          (let ((_e2333623411_
                                                 (gx#syntax-e _tl2333523408_)))
                                            (let ((_hd2333723415_
                                                   (##car _e2333623411_))
                                                  (_tl2333823418_
                                                   (##cdr _e2333623411_)))
                                              (if (gx#stx-null? _tl2333823418_)
                                                  ((lambda (_L23421_)
                                                     (let ((_K23434_
                                                            (_generate-simple-vector22862_
                                                             _tgt23248_
                                                             _L23421_
                                                             '1
                                                             _K23250_
                                                             _E23251_)))
                                                       (if _rtd23253_
                                                           (if (fx<= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23421_)
                             _fields23263_)
                       (cons 'if
                             (cons _L23314_
                                   (cons _K23434_ (cons _E23251_ '()))))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad struct pattern; too many elements to match"
                        _stx22852_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                         _info23246_)))
                   (let* ((_g2343723445_
                           (lambda (_g2343823441_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2343823441_)))
                          (_g2343623465_
                           (lambda (_g2343823449_)
                             ((lambda (_L23452_)
                                (let ()
                                  (cons 'if
                                        (cons _L23314_
                                              (cons (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx<)
                              (cons _L23452_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##vector-length)
                                                (cons _L23284_ '()))
                                          '())))
                        (cons _K23434_ (cons _E23251_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _E23251_ '()))))))
                              _g2343823449_))))
                     (_g2343623465_ (gx#stx-length _L23421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2333723415_)
                                                  (_g2332923394_
                                                   _g2333123398_))))
                                          (_g2332923394_ _g2333123398_))
                                      (_g2332923394_ _g2333123398_))
                                  (_g2332923394_ _g2333123398_))))
                          (_g2332923394_ _g2333123398_)))))
              (_g2332823469_ _body23249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2330023311_))))
                                     (_g2329823473_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info23246_)
                                          (let* ((_g2347723485_
                                                  (lambda (_g2347823481_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2347823481_)))
                                                 (_g2347623504_
                                                  (lambda (_g2347823489_)
                                                    ((lambda (_L23492_)
                                                       (let ()
                                                         (cons _L23492_
                                                               (cons _L23284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2347823489_))))
                                            (_g2347623504_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info23246_))))
                                          (let* ((_g2350823523_
                                                  (lambda (_g2350923519_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2350923519_)))
                                                 (_g2350723567_
                                                  (lambda (_g2350923527_)
                                                    (if (gx#stx-pair?
                                                         _g2350923527_)
                                                        (let ((_e2351223530_
                                                               (gx#syntax-e
                                                                _g2350923527_)))
                                                          (let ((_hd2351323534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2351223530_))
                        (_tl2351423537_ (##cdr _e2351223530_)))
                    (if (gx#stx-pair? _tl2351423537_)
                        (let ((_e2351523540_ (gx#syntax-e _tl2351423537_)))
                          (let ((_hd2351623544_ (##car _e2351523540_))
                                (_tl2351723547_ (##cdr _e2351523540_)))
                            (if (gx#stx-null? _tl2351723547_)
                                ((lambda (_L23550_ _L23552_)
                                   (let ()
                                     (cons _L23550_
                                           (cons _L23552_
                                                 (cons _L23284_ '())))))
                                 _hd2351623544_
                                 _hd2351323534_)
                                (_g2350823523_ _g2350923527_))))
                        (_g2350823523_ _g2350923527_))))
                (_g2350823523_ _g2350923527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2350723567_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info23246_)
                                                   (if _final?23266_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2327023281_))))
                      (_g2326823571_ _tgt23248_))))
                 (_generate-class22865_
                  (lambda (_info22867_
                           _tgt22869_
                           _body22870_
                           _K22871_
                           _E22872_)
                    (letrec* ((_rtd22874_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22867_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22867_)
                                   '#f))
                              (_known-slot?22876_
                               (if _rtd22874_
                                   (lambda (_key23240_)
                                     (let ((_slot23243_
                                            (keyword->symbol
                                             (gx#stx-e _key23240_))))
                                       (_rtd-known-slot?22878_
                                        _rtd22874_
                                        _slot23243_)))
                                   false))
                              (_final?22877_
                               (if _rtd22874_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22874_))
                                   '#f))
                              (_rtd-known-slot?22878_
                               (lambda (_rtd23227_ _slot23229_)
                                 (if _rtd23227_
                                     (let ((_$e23231_
                                            (memq _slot23229_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd23227_))))
                                       (if _$e23231_
                                           _$e23231_
                                           (ormap (lambda (_g2323423236_)
                                                    (_rtd-known-slot?22878_
                                                     _g2323423236_
                                                     _slot23229_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd23227_)))))
                                     '#f)))
                              (_recur22879_
                               (lambda (_klass23013_ _rest23015_)
                                 (let* ((_g2301823034_
                                         (lambda (_g2301923030_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2301923030_)))
                                        (_g2301723045_
                                         (lambda (_g2301923038_)
                                           ((lambda () _K22871_))))
                                        (_g2301623223_
                                         (lambda (_g2301923049_)
                                           (if (gx#stx-pair? _g2301923049_)
                                               (let ((_e2302323052_
                                                      (gx#syntax-e
                                                       _g2301923049_)))
                                                 (let ((_hd2302423056_
                                                        (##car _e2302323052_))
                                                       (_tl2302523059_
                                                        (##cdr _e2302323052_)))
                                                   (if (gx#stx-pair?
                                                        _tl2302523059_)
                                                       (let ((_e2302623062_
                                                              (gx#syntax-e
                                                               _tl2302523059_)))
                                                         (let ((_hd2302723066_
                                                                (##car _e2302623062_))
                                                               (_tl2302823069_
                                                                (##cdr _e2302623062_)))
                                                           ((lambda (_L23072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L23074_
                             _L23075_)
                      (let* ((_g2309123099_
                              (lambda (_g2309223095_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2309223095_)))
                             (_g2309023219_
                              (lambda (_g2309223103_)
                                ((lambda (_L23106_)
                                   (let ()
                                     (let* ((_g2311823126_
                                             (lambda (_g2311923122_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2311923122_)))
                                            (_g2311723215_
                                             (lambda (_g2311923130_)
                                               ((lambda (_L23133_)
                                                  (let ()
                                                    (let* ((_g2314623154_
                                                            (lambda (_g2314723150_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2314723150_)))
                                                           (_g2314523211_
                                                            (lambda (_g2314723158_)
                                                              ((lambda (_L23161_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2317423182_
                                   (lambda (_g2317523178_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2317523178_)))
                                  (_g2317323207_
                                   (lambda (_g2317523186_)
                                     ((lambda (_L23189_)
                                        (let ()
                                          (let ((_K23202_
                                                 (cons 'let
                                                       (cons (cons (cons _L23189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L23106_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L23161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122859_
                            _L23189_
                            _L23074_
                            (_recur22879_ _klass23013_ _L23072_)
                            _E22872_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22876_ _L23075_)
                                                (cons 'let
                                                      (cons (cons (cons _L23161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23133_
                                                  (cons _L23075_ '())))
                                      '()))
                          '())
                    (cons _K23202_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'let
                                                      (cons (cons (cons _L23161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L23133_
                                                  (cons _L23075_ '())))
                                      '()))
                          '())
                    (cons (cons 'if
                                (cons _L23161_
                                      (cons _K23202_ (cons _E22872_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2317523186_))))
                             (_g2317323207_ (gx#genident 'e)))))
                       _g2314723158_))))
              (_g2314523211_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2311923130_))))
                                       (_g2311723215_ _klass23013_))))
                                 _g2309223103_))))
                        (_g2309023219_ _tgt22869_)))
                    _tl2302823069_
                    _hd2302723066_
                    _hd2302423056_)))
               (_g2301723045_ _g2301923049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2301723045_
                                                _g2301923049_)))))
                                   (_g2301623223_ _rest23015_)))))
                      (let* ((_g2288122889_
                              (lambda (_g2288222885_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2288222885_)))
                             (_g2288023009_
                              (lambda (_g2288222893_)
                                ((lambda (_L22896_)
                                   (let ()
                                     (let* ((_g2291122919_
                                             (lambda (_g2291222915_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2291222915_)))
                                            (_g2291023005_
                                             (lambda (_g2291222923_)
                                               ((lambda (_L22926_)
                                                  (let ()
                                                    (let* ((_g2293922947_
                                                            (lambda (_g2294022943_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2294022943_)))
                                                           (_g2293823001_
                                                            (lambda (_g2294022951_)
                                                              ((lambda (_L22954_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2296722975_
                                   (lambda (_g2296822971_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2296822971_)))
                                  (_g2296622997_
                                   (lambda (_g2296822979_)
                                     ((lambda (_L22982_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L22982_
                                                              (cons _L22954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22926_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L22896_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22926_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22879_ _L22896_ _body22870_)
                                        '())))
                      (cons _E22872_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2296822979_))))
                             (_g2296622997_
                              (if _final?22877_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2294022951_))))
              (_g2293823001_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2291222923_))))
                                       (_g2291023005_ _tgt22869_))))
                                 _g2288222893_))))
                        (_g2288023009_ (gx#genident 'class)))))))
          (_generate122859_ _tgt22854_ _ptree22855_ _K22856_ _E22857_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21789_ _tgt-lst21791_ _clauses21792_)
        (letrec ((_parse-body21794_
                  (lambda (_hd-len22674_)
                    (let _lp22677_ ((_rest22680_ _clauses21792_)
                                    (_r22682_ '()))
                      (let* ((_g2268522697_
                              (lambda (_g2268622693_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2268622693_)))
                             (_g2268422708_
                              (lambda (_g2268622701_) ((lambda () _r22682_))))
                             (_g2268322848_
                              (lambda (_g2268622712_)
                                (if (gx#stx-pair? _g2268622712_)
                                    (let ((_e2268922715_
                                           (gx#syntax-e _g2268622712_)))
                                      (let ((_hd2269022719_
                                             (##car _e2268922715_))
                                            (_tl2269122722_
                                             (##cdr _e2268922715_)))
                                        ((lambda (_L22725_ _L22727_)
                                           (let* ((_g2274422760_
                                                   (lambda (_g2274522756_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2274522756_)))
                                                  (_g2274322771_
                                                   (lambda (_g2274522764_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21789_
                                                         _L22727_)))))
                                                  (_g2274222812_
                                                   (lambda (_g2274522775_)
                                                     (if (gx#stx-pair?
                                                          _g2274522775_)
                                                         (let ((_e2275222778_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2274522775_)))
                   (let ((_hd2275322782_ (##car _e2275222778_))
                         (_tl2275422785_ (##cdr _e2275222778_)))
                     ((lambda (_L22788_ _L22790_)
                        (if (if (gx#stx-list? _L22790_)
                                (if (fx= (gx#stx-length _L22790_)
                                         _hd-len22674_)
                                    (if (gx#stx-list? _L22788_)
                                        (not (gx#stx-null? _L22788_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22677_
                             _L22725_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2280222804_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2280222804_
                                                   _stx21789_))
                                                _L22790_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22788_)
                                                      (let ((_$e22808_
                                                             (gx#stx-source
                                                              _L22727_)))
                                                        (if _$e22808_
                                                            _$e22808_
                                                            (gx#stx-source
                                                             _stx21789_))))
                                                     '())))
                                   _r22682_))
                            (_g2274322771_ _g2274522775_)))
                      _tl2275422785_
                      _hd2275322782_)))
                 (_g2274322771_ _g2274522775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2274122844_
                                                   (lambda (_g2274522816_)
                                                     (if (gx#stx-pair?
                                                          _g2274522816_)
                                                         (let ((_e2274722819_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2274522816_)))
                   (let ((_hd2274822823_ (##car _e2274722819_))
                         (_tl2274922826_ (##cdr _e2274722819_)))
                     (if (gx#identifier? _hd2274822823_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g35439_|
                              _hd2274822823_)
                             ((lambda (_L22829_)
                                (if (if (gx#stx-list? _L22829_)
                                        (not (gx#stx-null? _L22829_))
                                        '#f)
                                    (if (gx#stx-null? _L22725_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22829_)
                         (let ((_$e22840_ (gx#stx-source _L22727_)))
                           (if _$e22840_
                               _$e22840_
                               (gx#stx-source _stx21789_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22682_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21789_
                                         _L22727_))
                                    (_g2274222812_ _g2274522816_)))
                              _tl2274922826_)
                             (_g2274222812_ _g2274522816_))
                         (_g2274222812_ _g2274522816_))))
                 (_g2274222812_ _g2274522816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2274122844_ _L22727_)))
                                         _tl2269122722_
                                         _hd2269022719_)))
                                    (_g2268422708_ _g2268622712_)))))
                        (_g2268322848_ _rest22680_)))))
                 (_generate-body21796_
                  (lambda (_body22459_)
                    (let* ((_g2246222470_
                            (lambda (_g2246322466_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2246322466_)))
                           (_g2246122670_
                            (lambda (_g2246322474_)
                              ((lambda (_L22477_)
                                 (let ()
                                   (let* ((_g2248922506_
                                           (lambda (_g2249022502_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2249022502_)))
                                          (_g2248822666_
                                           (lambda (_g2249022510_)
                                             (if (gx#stx-pair/null?
                                                  _g2249022510_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2249022510_)
                                                           '0)
                                                     (let ((_g35440_
                                                            (gx#syntax-split-splice
                                                             _g2249022510_
                                                             '0)))
                                                       (begin
                                                         (let ((_g35441_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g35440_)
                            (##vector-length _g35440_)
                            1)))
                   (if (not (##fx= _g35441_ 2))
                       (error "Context expects 2 values" _g35441_)))
                 (let ((_target2249222513_ (##vector-ref _g35440_ 0))
                       (_tl2249422516_ (##vector-ref _g35440_ 1)))
                   (if (gx#stx-null? _tl2249422516_)
                       (letrec ((_loop2249522519_
                                 (lambda (_hd2249322523_ _target2249922526_)
                                   (if (gx#stx-pair? _hd2249322523_)
                                       (let ((_e2249622529_
                                              (gx#syntax-e _hd2249322523_)))
                                         (let ((_lp-hd2249722533_
                                                (##car _e2249622529_))
                                               (_lp-tl2249822536_
                                                (##cdr _e2249622529_)))
                                           (_loop2249522519_
                                            _lp-tl2249822536_
                                            (cons _lp-hd2249722533_
                                                  _target2249922526_))))
                                       (let ((_target2250022539_
                                              (reverse _target2249922526_)))
                                         ((lambda (_L22543_)
                                            (let ()
                                              (let* ((_g2256022568_
                                                      (lambda (_g2256122564_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2256122564_)))
                                                     (_g2255922654_
                                                      (lambda (_g2256122572_)
                                                        ((lambda (_L22575_)
                                                           (let ()
                                                             (let* ((_g2258822596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2258922592_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2258922592_)))
                            (_g2258722650_
                             (lambda (_g2258922600_)
                               ((lambda (_L22603_)
                                  (let ()
                                    (let* ((_g2261622624_
                                            (lambda (_g2261722620_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2261722620_)))
                                           (_g2261522646_
                                            (lambda (_g2261722628_)
                                              ((lambda (_L22631_)
                                                 (let ()
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'begin-annotation)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@match)
                         (cons _L22631_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2261722628_))))
                                      (_g2261522646_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L22477_
                                                                (cons _L22575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L22603_ '())))
                                        (gx#stx-source _stx21789_))))))
                                _g2258922600_))))
                       (_g2258722650_
                        (_generate-clauses21797_
                         _body22459_
                         (cons _L22477_ '()))))))
                 _g2256122572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2255922654_
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
                                          (foldr (lambda (_g2265722660_
                                                          _g2265822663_)
                                                   (cons _g2265722660_
                                                         _g2265822663_))
                                                 '()
                                                 _L22543_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21789_))))))
                                          _target2250022539_))))))
                         (_loop2249522519_ _target2249222513_ '()))
                       (_g2248922506_ _g2249022510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2248922506_
                                                      _g2249022510_))
                                                 (_g2248922506_
                                                  _g2249022510_)))))
                                     (_g2248822666_ _tgt-lst21791_))))
                               _g2246322474_))))
                      (_g2246122670_ (gx#genident 'E)))))
                 (_generate-clauses21797_
                  (lambda (_rest22111_ _E22113_)
                    (let* ((_g2211722133_
                            (lambda (_g2211822129_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2211822129_)))
                           (_g2211622144_
                            (lambda (_g2211822137_)
                              ((lambda ()
                                 (cons 'begin-annotation
                                       (cons '@match-body
                                             (cons _E22113_ '())))))))
                           (_g2211522350_
                            (lambda (_g2211822148_)
                              (if (gx#stx-pair? _g2211822148_)
                                  (let ((_e2212522151_
                                         (gx#syntax-e _g2211822148_)))
                                    (let ((_hd2212622155_
                                           (##car _e2212522151_))
                                          (_tl2212722158_
                                           (##cdr _e2212522151_)))
                                      ((lambda (_L22161_ _L22163_)
                                         (let* ((_g2217622195_
                                                 (lambda (_g2217722191_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2217722191_)))
                                                (_g2217522346_
                                                 (lambda (_g2217722199_)
                                                   (if (gx#stx-pair?
                                                        _g2217722199_)
                                                       (let ((_e2218122202_
                                                              (gx#syntax-e
                                                               _g2217722199_)))
                                                         (let ((_hd2218222206_
                                                                (##car _e2218122202_))
                                                               (_tl2218322209_
                                                                (##cdr _e2218122202_)))
                                                           (if (gx#stx-pair?
                                                                _tl2218322209_)
                                                               (let ((_e2218422212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2218322209_)))
                         (let ((_hd2218522216_ (##car _e2218422212_))
                               (_tl2218622219_ (##cdr _e2218422212_)))
                           (if (gx#stx-pair? _tl2218622219_)
                               (let ((_e2218722222_
                                      (gx#syntax-e _tl2218622219_)))
                                 (let ((_hd2218822226_ (##car _e2218722222_))
                                       (_tl2218922229_ (##cdr _e2218722222_)))
                                   (if (gx#stx-null? _tl2218922229_)
                                       ((lambda (_L22232_ _L22234_ _L22235_)
                                          (if (gx#stx-e _L22234_)
                                              (let* ((_g2225222267_
                                                      (lambda (_g2225322263_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2225322263_)))
                                                     (_g2225122312_
                                                      (lambda (_g2225322271_)
                                                        (if (gx#stx-pair?
                                                             _g2225322271_)
                                                            (let ((_e2225622274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2225322271_)))
                      (let ((_hd2225722278_ (##car _e2225622274_))
                            (_tl2225822281_ (##cdr _e2225622274_)))
                        (if (gx#stx-pair? _tl2225822281_)
                            (let ((_e2225922284_ (gx#syntax-e _tl2225822281_)))
                              (let ((_hd2226022288_ (##car _e2225922284_))
                                    (_tl2226122291_ (##cdr _e2225922284_)))
                                (if (gx#stx-null? _tl2226122291_)
                                    ((lambda (_L22294_ _L22296_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L22235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '() (cons _L22296_ '())))
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22294_ '())))))
                                     _hd2226022288_
                                     _hd2225722278_)
                                    (_g2225222267_ _g2225322271_))))
                            (_g2225222267_ _g2225322271_))))
                    (_g2225222267_ _g2225322271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2225122312_
                                                 (list (_generate121798_
                                                        _L22234_
                                                        _L22232_
                                                        _E22113_)
                                                       (_generate-clauses21797_
                                                        _L22161_
                                                        (cons _L22235_ '())))))
                                              (let* ((_g2231622324_
                                                      (lambda (_g2231722320_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2231722320_)))
                                                     (_g2231522342_
                                                      (lambda (_g2231722328_)
                                                        ((lambda (_L22331_)
                                                           (let ()
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let)
                           (cons (cons (cons _L22235_
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
                                   (cons '() (cons _L22232_ '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons _L22331_ '())))))
                 _g2231722328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2231522342_
                                                 (_generate-clauses21797_
                                                  _L22161_
                                                  (cons _L22235_ '()))))))
                                        _hd2218822226_
                                        _hd2218522216_
                                        _hd2218222206_)
                                       (_g2217622195_ _g2217722199_))))
                               (_g2217622195_ _g2217722199_))))
                       (_g2217622195_ _g2217722199_))))
               (_g2217622195_ _g2217722199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2217522346_ _L22163_)))
                                       _tl2212722158_
                                       _hd2212622155_)))
                                  (_g2211622144_ _g2211822148_))))
                           (_g2211422455_
                            (lambda (_g2211822354_)
                              (if (gx#stx-pair? _g2211822354_)
                                  (let ((_e2212022357_
                                         (gx#syntax-e _g2211822354_)))
                                    (let ((_hd2212122361_
                                           (##car _e2212022357_))
                                          (_tl2212222364_
                                           (##cdr _e2212022357_)))
                                      (if (gx#stx-null? _tl2212222364_)
                                          ((lambda (_L22367_)
                                             (let* ((_g2237822396_
                                                     (lambda (_g2237922392_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2237922392_)))
                                                    (_g2237722451_
                                                     (lambda (_g2237922400_)
                                                       (if (gx#stx-pair?
                                                            _g2237922400_)
                                                           (let ((_e2238222403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2237922400_)))
                     (let ((_hd2238322407_ (##car _e2238222403_))
                           (_tl2238422410_ (##cdr _e2238222403_)))
                       (if (gx#stx-pair? _tl2238422410_)
                           (let ((_e2238522413_ (gx#syntax-e _tl2238422410_)))
                             (let ((_hd2238622417_ (##car _e2238522413_))
                                   (_tl2238722420_ (##cdr _e2238522413_)))
                               (if (gx#stx-pair? _tl2238722420_)
                                   (let ((_e2238822423_
                                          (gx#syntax-e _tl2238722420_)))
                                     (let ((_hd2238922427_
                                            (##car _e2238822423_))
                                           (_tl2239022430_
                                            (##cdr _e2238822423_)))
                                       (if (gx#stx-null? _tl2239022430_)
                                           ((lambda (_L22433_ _L22435_)
                                              (cons 'begin-annotation
                                                    (cons '@match-body
                                                          (cons (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22435_)
                            (_generate121798_ _L22435_ _L22433_ _E22113_)
                            _L22433_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2238922427_
                                            _hd2238622417_)
                                           (_g2237822396_ _g2237922400_))))
                                   (_g2237822396_ _g2237922400_))))
                           (_g2237822396_ _g2237922400_))))
                   (_g2237822396_ _g2237922400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2237722451_ _L22367_)))
                                           _hd2212122361_)
                                          (_g2211522350_ _g2211822354_))))
                                  (_g2211522350_ _g2211822354_)))))
                      (_g2211422455_ _rest22111_))))
                 (_generate121798_
                  (lambda (_clause21800_ _body21802_ _E21803_)
                    (let _recur21805_ ((_rest21808_ _clause21800_)
                                       (_rest-targets21810_ _tgt-lst21791_))
                      (let* ((_g2181321825_
                              (lambda (_g2181421821_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2181421821_)))
                             (_g2181221836_
                              (lambda (_g2181421829_)
                                ((lambda () _body21802_))))
                             (_g2181122107_
                              (lambda (_g2181421840_)
                                (if (gx#stx-pair? _g2181421840_)
                                    (let ((_e2181721843_
                                           (gx#syntax-e _g2181421840_)))
                                      (let ((_hd2181821847_
                                             (##car _e2181721843_))
                                            (_tl2181921850_
                                             (##cdr _e2181721843_)))
                                        ((lambda (_L21853_ _L21855_)
                                           (let* ((_g2187221884_
                                                   (lambda (_g2187321880_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2187321880_)))
                                                  (_g2187122103_
                                                   (lambda (_g2187321888_)
                                                     (if (gx#stx-pair?
                                                          _g2187321888_)
                                                         (let ((_e2187621891_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2187321888_)))
                   (let ((_hd2187721895_ (##car _e2187621891_))
                         (_tl2187821898_ (##cdr _e2187621891_)))
                     ((lambda (_L21901_ _L21903_)
                        (let* ((_g2191521923_
                                (lambda (_g2191621919_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2191621919_)))
                               (_g2191422099_
                                (lambda (_g2191621927_)
                                  ((lambda (_L21930_)
                                     (let ()
                                       (let* ((_g2194221959_
                                               (lambda (_g2194321955_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2194321955_)))
                                              (_g2194122095_
                                               (lambda (_g2194321963_)
                                                 (if (gx#stx-pair/null?
                                                      _g2194321963_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2194321963_)
                                                               '0)
                                                         (let ((_g35442_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2194321963_
                         '0)))
                   (begin
                     (let ((_g35443_
                            (if (##values? _g35442_)
                                (##vector-length _g35442_)
                                1)))
                       (if (not (##fx= _g35443_ 2))
                           (error "Context expects 2 values" _g35443_)))
                     (let ((_target2194521966_ (##vector-ref _g35442_ 0))
                           (_tl2194721969_ (##vector-ref _g35442_ 1)))
                       (if (gx#stx-null? _tl2194721969_)
                           (letrec ((_loop2194821972_
                                     (lambda (_hd2194621976_ _var2195221979_)
                                       (if (gx#stx-pair? _hd2194621976_)
                                           (let ((_e2194921982_
                                                  (gx#syntax-e
                                                   _hd2194621976_)))
                                             (let ((_lp-hd2195021986_
                                                    (##car _e2194921982_))
                                                   (_lp-tl2195121989_
                                                    (##cdr _e2194921982_)))
                                               (_loop2194821972_
                                                _lp-tl2195121989_
                                                (cons _lp-hd2195021986_
                                                      _var2195221979_))))
                                           (let ((_var2195321992_
                                                  (reverse _var2195221979_)))
                                             ((lambda (_L21996_)
                                                (let ()
                                                  (let* ((_g2201322021_
                                                          (lambda (_g2201422017_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2201422017_)))
                                                         (_g2201222091_
                                                          (lambda (_g2201422025_)
                                                            ((lambda (_L22028_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2204122049_
                                 (lambda (_g2204222045_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2204222045_)))
                                (_g2204022079_
                                 (lambda (_g2204222053_)
                                   ((lambda (_L22056_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2207022073_
                                                              _g2207122076_)
                                                       (cons _g2207022073_
                                                             _g2207122076_))
                                                     '()
                                                     _L21996_))
                                            (cons _L22028_ '())))
                                '()))
                    '())
              (cons _L22056_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2204222053_))))
                           (_g2204022079_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21789_
                             _L21903_
                             _L21855_
                             (cons _L21930_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2208222085_
                                                     _g2208322088_)
                                              (cons _g2208222085_
                                                    _g2208322088_))
                                            '()
                                            _L21996_)))
                             _E21803_)))))
                     _g2201422025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2201222091_
                                                     (_recur21805_
                                                      _L21853_
                                                      _L21901_)))))
                                              _var2195321992_))))))
                             (_loop2194821972_ _target2194521966_ '()))
                           (_g2194221959_ _g2194321963_)))))
                 (_g2194221959_ _g2194321963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2194221959_
                                                      _g2194321963_)))))
                                         (_g2194122095_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21855_)))))
                                   _g2191621927_))))
                          (_g2191422099_ (gx#genident 'K))))
                      _tl2187821898_
                      _hd2187721895_)))
                 (_g2187221884_ _g2187321888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2187122103_
                                              _rest-targets21810_)))
                                         _tl2181921850_
                                         _hd2181821847_)))
                                    (_g2181221836_ _g2181421840_)))))
                        (_g2181122107_ _rest21808_))))))
          (_generate-body21796_
           (_parse-body21794_ (gx#stx-length _tgt-lst21791_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21691_ _tgt21693_ _clauses21694_)
        (letrec ((_reclause21696_
                  (lambda (_clause21699_)
                    (let* ((_g2170421719_
                            (lambda (_g2170521715_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2170521715_)))
                           (_g2170321730_
                            (lambda (_g2170521723_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21691_
                                  _clause21699_)))))
                           (_g2170221764_
                            (lambda (_g2170521734_)
                              (if (gx#stx-pair? _g2170521734_)
                                  (let ((_e2171121737_
                                         (gx#syntax-e _g2170521734_)))
                                    (let ((_hd2171221741_
                                           (##car _e2171121737_))
                                          (_tl2171321744_
                                           (##cdr _e2171121737_)))
                                      ((lambda (_L21747_ _L21749_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21749_ '()) _L21747_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2171321744_
                                       _hd2171221741_)))
                                  (_g2170321730_ _g2170521734_))))
                           (_g2170121785_
                            (lambda (_g2170521768_)
                              (if (gx#stx-pair? _g2170521768_)
                                  (let ((_e2170621771_
                                         (gx#syntax-e _g2170521768_)))
                                    (let ((_hd2170721775_
                                           (##car _e2170621771_))
                                          (_tl2170821778_
                                           (##cdr _e2170621771_)))
                                      (if (gx#identifier? _hd2170721775_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g35444_|
                                               _hd2170721775_)
                                              ((lambda () _clause21699_))
                                              (_g2170221764_ _g2170521768_))
                                          (_g2170221764_ _g2170521768_))))
                                  (_g2170221764_ _g2170521768_)))))
                      (_g2170121785_ _clause21699_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21691_
           (cons _tgt21693_ '())
           (gx#stx-map _reclause21696_ _clauses21694_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29026_)
        (let* ((_g2903129060_
                (lambda (_g2903229056_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2903229056_)))
               (_g2903029168_
                (lambda (_g2903229064_)
                  (if (gx#stx-pair? _g2903229064_)
                      (let ((_e2904929067_ (gx#syntax-e _g2903229064_)))
                        (let ((_hd2905029071_ (##car _e2904929067_))
                              (_tl2905129074_ (##cdr _e2904929067_)))
                          (if (gx#stx-pair? _tl2905129074_)
                              (let ((_e2905229077_
                                     (gx#syntax-e _tl2905129074_)))
                                (let ((_hd2905329081_ (##car _e2905229077_))
                                      (_tl2905429084_ (##cdr _e2905229077_)))
                                  ((lambda (_L29087_ _L29089_)
                                     (if (gx#stx-list? _L29087_)
                                         (let* ((_g2910329111_
                                                 (lambda (_g2910429107_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2910429107_)))
                                                (_g2910229164_
                                                 (lambda (_g2910429115_)
                                                   ((lambda (_L29118_)
                                                      (let ()
                                                        (let* ((_g2913029138_
                                                                (lambda (_g2913129134_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2913129134_)))
                       (_g2912929160_
                        (lambda (_g2913129142_)
                          ((lambda (_L29145_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L29118_
                                                         (cons _L29089_ '()))
                                                   '())
                                             (cons _L29145_ '()))))))
                           _g2913129142_))))
                  (_g2912929160_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx29026_
                    _L29118_
                    _L29087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2910429115_))))
                                           (_g2910229164_
                                            (gx#genident _L29089_)))
                                         (_g2903129060_ _g2903229064_)))
                                   _tl2905429084_
                                   _hd2905329081_)))
                              (_g2903129060_ _g2903229064_))))
                      (_g2903129060_ _g2903229064_))))
               (_g2902929273_
                (lambda (_g2903229172_)
                  (if (gx#stx-pair? _g2903229172_)
                      (let ((_e2904129175_ (gx#syntax-e _g2903229172_)))
                        (let ((_hd2904229179_ (##car _e2904129175_))
                              (_tl2904329182_ (##cdr _e2904129175_)))
                          (if (gx#stx-pair? _tl2904329182_)
                              (let ((_e2904429185_
                                     (gx#syntax-e _tl2904329182_)))
                                (let ((_hd2904529189_ (##car _e2904429185_))
                                      (_tl2904629192_ (##cdr _e2904429185_)))
                                  (if (gx#identifier? _hd2904529189_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35445_|
                                           _hd2904529189_)
                                          ((lambda (_L29195_)
                                             (if (gx#stx-list? _L29195_)
                                                 (let* ((_g2920829216_
                                                         (lambda (_g2920929212_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2920929212_)))
                                                        (_g2920729269_
                                                         (lambda (_g2920929220_)
                                                           ((lambda (_L29223_)
                                                              (let ()
                                                                (let* ((_g2923529243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2923629239_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2923629239_)))
                               (_g2923429265_
                                (lambda (_g2923629247_)
                                  ((lambda (_L29250_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L29223_
                                                     (cons _L29250_ '()))))))
                                   _g2923629247_))))
                          (_g2923429265_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29223_ _L29195_))
                            (gx#stx-source _stx29026_))))))
                    _g2920929220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2920729269_
                                                    (gx#genident 'args)))
                                                 (_g2903029168_
                                                  _g2903229172_)))
                                           _tl2904629192_)
                                          (_g2903029168_ _g2903229172_))
                                      (_g2903029168_ _g2903229172_))))
                              (_g2903029168_ _g2903229172_))))
                      (_g2903029168_ _g2903229172_))))
               (_g2902829378_
                (lambda (_g2903229277_)
                  (if (gx#stx-pair? _g2903229277_)
                      (let ((_e2903429280_ (gx#syntax-e _g2903229277_)))
                        (let ((_hd2903529284_ (##car _e2903429280_))
                              (_tl2903629287_ (##cdr _e2903429280_)))
                          (if (gx#stx-pair? _tl2903629287_)
                              (let ((_e2903729290_
                                     (gx#syntax-e _tl2903629287_)))
                                (let ((_hd2903829294_ (##car _e2903729290_))
                                      (_tl2903929297_ (##cdr _e2903729290_)))
                                  (if (gx#identifier? _hd2903829294_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35446_|
                                           _hd2903829294_)
                                          ((lambda (_L29300_)
                                             (if (gx#stx-list? _L29300_)
                                                 (let* ((_g2931329321_
                                                         (lambda (_g2931429317_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2931429317_)))
                                                        (_g2931229374_
                                                         (lambda (_g2931429325_)
                                                           ((lambda (_L29328_)
                                                              (let ()
                                                                (let* ((_g2934029348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2934129344_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2934129344_)))
                               (_g2933929370_
                                (lambda (_g2934129352_)
                                  ((lambda (_L29355_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L29328_ '())
                                                     (cons _L29355_ '()))))))
                                   _g2934129352_))))
                          (_g2933929370_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L29328_ _L29300_))
                            (gx#stx-source _stx29026_))))))
                    _g2931429325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2931229374_
                                                    (gx#genident 'e)))
                                                 (_g2902929273_
                                                  _g2903229277_)))
                                           _tl2903929297_)
                                          (_g2902929273_ _g2903229277_))
                                      (_g2902929273_ _g2903229277_))))
                              (_g2902929273_ _g2903229277_))))
                      (_g2902929273_ _g2903229277_)))))
          (_g2902829378_ _stx29026_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29382_)
        (let* ((_g2938529409_
                (lambda (_g2938629405_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2938629405_)))
               (_g2938429621_
                (lambda (_g2938629413_)
                  (if (gx#stx-pair? _g2938629413_)
                      (let ((_e2938929416_ (gx#syntax-e _g2938629413_)))
                        (let ((_hd2939029420_ (##car _e2938929416_))
                              (_tl2939129423_ (##cdr _e2938929416_)))
                          (if (gx#stx-pair? _tl2939129423_)
                              (let ((_e2939229426_
                                     (gx#syntax-e _tl2939129423_)))
                                (let ((_hd2939329430_ (##car _e2939229426_))
                                      (_tl2939429433_ (##cdr _e2939229426_)))
                                  (if (gx#stx-pair/null? _hd2939329430_)
                                      (if (fx>= (gx#stx-length _hd2939329430_)
                                                '0)
                                          (let ((_g35447_
                                                 (gx#syntax-split-splice
                                                  _hd2939329430_
                                                  '0)))
                                            (begin
                                              (let ((_g35448_
                                                     (if (##values? _g35447_)
                                                         (##vector-length
                                                          _g35447_)
                                                         1)))
                                                (if (not (##fx= _g35448_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35448_)))
                                              (let ((_target2939529436_
                                                     (##vector-ref _g35447_ 0))
                                                    (_tl2939729439_
                                                     (##vector-ref
                                                      _g35447_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2939729439_)
                                                    (letrec ((_loop2939829442_
                                                              (lambda (_hd2939629446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2940229449_)
                        (if (gx#stx-pair? _hd2939629446_)
                            (let ((_e2939929452_ (gx#syntax-e _hd2939629446_)))
                              (let ((_lp-hd2940029456_ (##car _e2939929452_))
                                    (_lp-tl2940129459_ (##cdr _e2939929452_)))
                                (_loop2939829442_
                                 _lp-tl2940129459_
                                 (cons _lp-hd2940029456_ _e2940229449_))))
                            (let ((_e2940329462_ (reverse _e2940229449_)))
                              ((lambda (_L29466_ _L29468_)
                                 (if (gx#stx-list? _L29466_)
                                     (let* ((_g2948629503_
                                             (lambda (_g2948729499_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2948729499_)))
                                            (_g2948529609_
                                             (lambda (_g2948729507_)
                                               (if (gx#stx-pair/null?
                                                    _g2948729507_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2948729507_)
                                                             '0)
                                                       (let ((_g35449_
                                                              (gx#syntax-split-splice
                                                               _g2948729507_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35449_)
                              (##vector-length _g35449_)
                              1)))
                     (if (not (##fx= _g35450_ 2))
                         (error "Context expects 2 values" _g35450_)))
                   (let ((_target2948929510_ (##vector-ref _g35449_ 0))
                         (_tl2949129513_ (##vector-ref _g35449_ 1)))
                     (if (gx#stx-null? _tl2949129513_)
                         (letrec ((_loop2949229516_
                                   (lambda (_hd2949029520_ _$e2949629523_)
                                     (if (gx#stx-pair? _hd2949029520_)
                                         (let ((_e2949329526_
                                                (gx#syntax-e _hd2949029520_)))
                                           (let ((_lp-hd2949429530_
                                                  (##car _e2949329526_))
                                                 (_lp-tl2949529533_
                                                  (##cdr _e2949329526_)))
                                             (_loop2949229516_
                                              _lp-tl2949529533_
                                              (cons _lp-hd2949429530_
                                                    _$e2949629523_))))
                                         (let ((_$e2949729536_
                                                (reverse _$e2949629523_)))
                                           ((lambda (_L29540_)
                                              (let ()
                                                (let* ((_g2955629564_
                                                        (lambda (_g2955729560_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2955729560_)))
                                                       (_g2955529597_
                                                        (lambda (_g2955729568_)
                                                          ((lambda (_L29571_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29468_
                                        _L29540_)
                                       (foldr (lambda (_g2958529589_
                                                       _g2958629592_
                                                       _g2958729594_)
                                                (cons (cons _g2958629592_
                                                            (cons _g2958529589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2958729594_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29468_
                                              _L29540_))
                                     (cons _L29571_ '()))))))
                   _g2955729568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2955529597_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx29382_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2960029603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2960129606_)
                       (cons _g2960029603_ _g2960129606_))
                     '()
                     _L29540_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L29466_)))))
                                            _$e2949729536_))))))
                           (_loop2949229516_ _target2948929510_ '()))
                         (_g2948629503_ _g2948729507_)))))
               (_g2948629503_ _g2948729507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2948629503_
                                                    _g2948729507_)))))
                                       (_g2948529609_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2961229615_
                                                           _g2961329618_)
                                                    (cons _g2961229615_
                                                          _g2961329618_))
                                                  '()
                                                  _L29468_)))))
                                     (_g2938529409_ _g2938629413_)))
                               _tl2939429433_
                               _e2940329462_))))))
              (_loop2939829442_ _target2939529436_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2938529409_
                                                     _g2938629413_)))))
                                          (_g2938529409_ _g2938629413_))
                                      (_g2938529409_ _g2938629413_))))
                              (_g2938529409_ _g2938629413_))))
                      (_g2938529409_ _g2938629413_)))))
          (_g2938429621_ _stx29382_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29627_)
        (let* ((_g2963329716_
                (lambda (_g2963429712_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2963429712_)))
               (_g2963229877_
                (lambda (_g2963429720_)
                  (if (gx#stx-pair? _g2963429720_)
                      (let ((_e2967929723_ (gx#syntax-e _g2963429720_)))
                        (let ((_hd2968029727_ (##car _e2967929723_))
                              (_tl2968129730_ (##cdr _e2967929723_)))
                          (if (gx#stx-pair? _tl2968129730_)
                              (let ((_e2968229733_
                                     (gx#syntax-e _tl2968129730_)))
                                (let ((_hd2968329737_ (##car _e2968229733_))
                                      (_tl2968429740_ (##cdr _e2968229733_)))
                                  (if (gx#stx-pair/null? _hd2968329737_)
                                      (if (fx>= (gx#stx-length _hd2968329737_)
                                                '0)
                                          (let ((_g35451_
                                                 (gx#syntax-split-splice
                                                  _hd2968329737_
                                                  '0)))
                                            (begin
                                              (let ((_g35452_
                                                     (if (##values? _g35451_)
                                                         (##vector-length
                                                          _g35451_)
                                                         1)))
                                                (if (not (##fx= _g35452_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35452_)))
                                              (let ((_target2968529743_
                                                     (##vector-ref _g35451_ 0))
                                                    (_tl2968729746_
                                                     (##vector-ref
                                                      _g35451_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2968729746_)
                                                    (letrec ((_loop2968829749_
                                                              (lambda (_hd2968629753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2969229756_
                               _hd2969329758_)
                        (if (gx#stx-pair? _hd2968629753_)
                            (let ((_e2968929761_ (gx#syntax-e _hd2968629753_)))
                              (let ((_lp-hd2969029765_ (##car _e2968929761_))
                                    (_lp-tl2969129768_ (##cdr _e2968929761_)))
                                (if (gx#stx-pair? _lp-hd2969029765_)
                                    (let ((_e2969629771_
                                           (gx#syntax-e _lp-hd2969029765_)))
                                      (let ((_hd2969729775_
                                             (##car _e2969629771_))
                                            (_tl2969829778_
                                             (##cdr _e2969629771_)))
                                        (if (gx#stx-pair? _tl2969829778_)
                                            (let ((_e2969929781_
                                                   (gx#syntax-e
                                                    _tl2969829778_)))
                                              (let ((_hd2970029785_
                                                     (##car _e2969929781_))
                                                    (_tl2970129788_
                                                     (##cdr _e2969929781_)))
                                                (if (gx#stx-null?
                                                     _tl2970129788_)
                                                    (_loop2968829749_
                                                     _lp-tl2969129768_
                                                     (cons _hd2970029785_
                                                           _expr2969229756_)
                                                     (cons _hd2969729775_
                                                           _hd2969329758_))
                                                    (_g2963329716_
                                                     _g2963429720_))))
                                            (_g2963329716_ _g2963429720_))))
                                    (_g2963329716_ _g2963429720_))))
                            (let ((_expr2969429791_ (reverse _expr2969229756_))
                                  (_hd2969529794_ (reverse _hd2969329758_)))
                              (if (gx#stx-pair/null? _tl2968429740_)
                                  (if (fx>= (gx#stx-length _tl2968429740_) '0)
                                      (let ((_g35453_
                                             (gx#syntax-split-splice
                                              _tl2968429740_
                                              '0)))
                                        (begin
                                          (let ((_g35454_
                                                 (if (##values? _g35453_)
                                                     (##vector-length _g35453_)
                                                     1)))
                                            (if (not (##fx= _g35454_ 2))
                                                (error "Context expects 2 values"
                                                       _g35454_)))
                                          (let ((_target2970229797_
                                                 (##vector-ref _g35453_ 0))
                                                (_tl2970429800_
                                                 (##vector-ref _g35453_ 1)))
                                            (if (gx#stx-null? _tl2970429800_)
                                                (letrec ((_loop2970529803_
                                                          (lambda (_hd2970329807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2970929810_)
                    (if (gx#stx-pair? _hd2970329807_)
                        (let ((_e2970629813_ (gx#syntax-e _hd2970329807_)))
                          (let ((_lp-hd2970729817_ (##car _e2970629813_))
                                (_lp-tl2970829820_ (##cdr _e2970629813_)))
                            (_loop2970529803_
                             _lp-tl2970829820_
                             (cons _lp-hd2970729817_ _body2970929810_))))
                        (let ((_body2971029823_ (reverse _body2970929810_)))
                          ((lambda (_L29827_ _L29829_ _L29830_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2985229859_
                                                           _g2985329862_)
                                                    (cons _g2985229859_
                                                          _g2985329862_))
                                                  '()
                                                  _L29829_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2985429865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2985529868_)
                        (cons _g2985429865_ _g2985529868_))
                      '()
                      _L29830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2985629871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2985729874_)
                        (cons _g2985629871_ _g2985729874_))
                      '()
                      _L29827_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2971029823_
                           _expr2969429791_
                           _hd2969529794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2970529803_
                                                   _target2970229797_
                                                   '()))
                                                (_g2963329716_
                                                 _g2963429720_)))))
                                      (_g2963329716_ _g2963429720_))
                                  (_g2963329716_ _g2963429720_)))))))
              (_loop2968829749_ _target2968529743_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2963329716_
                                                     _g2963429720_)))))
                                          (_g2963329716_ _g2963429720_))
                                      (_g2963329716_ _g2963429720_))))
                              (_g2963329716_ _g2963429720_))))
                      (_g2963329716_ _g2963429720_))))
               (_g2963129989_
                (lambda (_g2963429881_)
                  (if (gx#stx-pair? _g2963429881_)
                      (let ((_e2965529884_ (gx#syntax-e _g2963429881_)))
                        (let ((_hd2965629888_ (##car _e2965529884_))
                              (_tl2965729891_ (##cdr _e2965529884_)))
                          (if (gx#stx-pair? _tl2965729891_)
                              (let ((_e2965829894_
                                     (gx#syntax-e _tl2965729891_)))
                                (let ((_hd2965929898_ (##car _e2965829894_))
                                      (_tl2966029901_ (##cdr _e2965829894_)))
                                  (if (gx#stx-pair? _hd2965929898_)
                                      (let ((_e2966129904_
                                             (gx#syntax-e _hd2965929898_)))
                                        (let ((_hd2966229908_
                                               (##car _e2966129904_))
                                              (_tl2966329911_
                                               (##cdr _e2966129904_)))
                                          (if (gx#stx-pair? _tl2966329911_)
                                              (let ((_e2966429914_
                                                     (gx#syntax-e
                                                      _tl2966329911_)))
                                                (let ((_hd2966529918_
                                                       (##car _e2966429914_))
                                                      (_tl2966629921_
                                                       (##cdr _e2966429914_)))
                                                  (if (gx#stx-null?
                                                       _tl2966629921_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2966029901_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2966029901_)
                            '0)
                      (let ((_g35455_
                             (gx#syntax-split-splice _tl2966029901_ '0)))
                        (begin
                          (let ((_g35456_
                                 (if (##values? _g35455_)
                                     (##vector-length _g35455_)
                                     1)))
                            (if (not (##fx= _g35456_ 2))
                                (error "Context expects 2 values" _g35456_)))
                          (let ((_target2966729924_ (##vector-ref _g35455_ 0))
                                (_tl2966929927_ (##vector-ref _g35455_ 1)))
                            (if (gx#stx-null? _tl2966929927_)
                                (letrec ((_loop2967029930_
                                          (lambda (_hd2966829934_
                                                   _body2967429937_)
                                            (if (gx#stx-pair? _hd2966829934_)
                                                (let ((_e2967129940_
                                                       (gx#syntax-e
                                                        _hd2966829934_)))
                                                  (let ((_lp-hd2967229944_
                                                         (##car _e2967129940_))
                                                        (_lp-tl2967329947_
                                                         (##cdr _e2967129940_)))
                                                    (_loop2967029930_
                                                     _lp-tl2967329947_
                                                     (cons _lp-hd2967229944_
                                                           _body2967429937_))))
                                                (let ((_body2967529950_
                                                       (reverse _body2967429937_)))
                                                  ((lambda (_L29954_
                                                            _L29956_
                                                            _L29957_
                                                            _L29958_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29957_)
                                                         (cons _L29958_
                                                               (cons (cons (cons _L29957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29956_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2998029983_ _g2998129986_)
                                        (cons _g2998029983_ _g2998129986_))
                                      '()
                                      _L29954_))))
                 (_g2963229877_ _g2963429881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2967529950_
                                                   _hd2966529918_
                                                   _hd2966229908_
                                                   _hd2965629888_))))))
                                  (_loop2967029930_ _target2966729924_ '()))
                                (_g2963229877_ _g2963429881_)))))
                      (_g2963229877_ _g2963429881_))
                  (_g2963229877_ _g2963429881_))
              (_g2963229877_ _g2963429881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2963229877_ _g2963429881_))))
                                      (_g2963229877_ _g2963429881_))))
                              (_g2963229877_ _g2963429881_))))
                      (_g2963229877_ _g2963429881_))))
               (_g2963030071_
                (lambda (_g2963429993_)
                  (if (gx#stx-pair? _g2963429993_)
                      (let ((_e2963629996_ (gx#syntax-e _g2963429993_)))
                        (let ((_hd2963730000_ (##car _e2963629996_))
                              (_tl2963830003_ (##cdr _e2963629996_)))
                          (if (gx#stx-pair? _tl2963830003_)
                              (let ((_e2963930006_
                                     (gx#syntax-e _tl2963830003_)))
                                (let ((_hd2964030010_ (##car _e2963930006_))
                                      (_tl2964130013_ (##cdr _e2963930006_)))
                                  (if (gx#stx-null? _hd2964030010_)
                                      (if (gx#stx-pair/null? _tl2964130013_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2964130013_)
                                                    '0)
                                              (let ((_g35457_
                                                     (gx#syntax-split-splice
                                                      _tl2964130013_
                                                      '0)))
                                                (begin
                                                  (let ((_g35458_
                                                         (if (##values?
                                                              _g35457_)
                                                             (##vector-length
                                                              _g35457_)
                                                             1)))
                                                    (if (not (##fx= _g35458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2964230016_
                                                         (##vector-ref
                                                          _g35457_
                                                          0))
                                                        (_tl2964430019_
                                                         (##vector-ref
                                                          _g35457_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2964430019_)
                                                        (letrec ((_loop2964530022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2964330026_ _body2964930029_)
                            (if (gx#stx-pair? _hd2964330026_)
                                (let ((_e2964630032_
                                       (gx#syntax-e _hd2964330026_)))
                                  (let ((_lp-hd2964730036_
                                         (##car _e2964630032_))
                                        (_lp-tl2964830039_
                                         (##cdr _e2964630032_)))
                                    (_loop2964530022_
                                     _lp-tl2964830039_
                                     (cons _lp-hd2964730036_
                                           _body2964930029_))))
                                (let ((_body2965030042_
                                       (reverse _body2964930029_)))
                                  ((lambda (_L30046_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3006230065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3006330068_)
                    (cons _g3006230065_ _g3006330068_))
                  '()
                  _L30046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2965030042_))))))
                  (_loop2964530022_ _target2964230016_ '()))
                (_g2963129989_ _g2963429993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2963129989_ _g2963429993_))
                                          (_g2963129989_ _g2963429993_))
                                      (_g2963129989_ _g2963429993_))))
                              (_g2963129989_ _g2963429993_))))
                      (_g2963129989_ _g2963429993_)))))
          (_g2963030071_ _$stx29627_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx30079_)
        (let* ((_g3008430136_
                (lambda (_g3008530132_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3008530132_)))
               (_g3008330219_
                (lambda (_g3008530140_)
                  (if (gx#stx-pair? _g3008530140_)
                      (let ((_e3011630143_ (gx#syntax-e _g3008530140_)))
                        (let ((_hd3011730147_ (##car _e3011630143_))
                              (_tl3011830150_ (##cdr _e3011630143_)))
                          (if (gx#stx-pair? _tl3011830150_)
                              (let ((_e3011930153_
                                     (gx#syntax-e _tl3011830150_)))
                                (let ((_hd3012030157_ (##car _e3011930153_))
                                      (_tl3012130160_ (##cdr _e3011930153_)))
                                  (if (gx#stx-null? _hd3012030157_)
                                      (if (gx#stx-pair/null? _tl3012130160_)
                                          (if (fx>= (gx#stx-length
                                                     _tl3012130160_)
                                                    '0)
                                              (let ((_g35459_
                                                     (gx#syntax-split-splice
                                                      _tl3012130160_
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
                                                  (let ((_target3012230163_
                                                         (##vector-ref
                                                          _g35459_
                                                          0))
                                                        (_tl3012430166_
                                                         (##vector-ref
                                                          _g35459_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3012430166_)
                                                        (letrec ((_loop3012530169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3012330173_ _body3012930176_)
                            (if (gx#stx-pair? _hd3012330173_)
                                (let ((_e3012630179_
                                       (gx#syntax-e _hd3012330173_)))
                                  (let ((_lp-hd3012730183_
                                         (##car _e3012630179_))
                                        (_lp-tl3012830186_
                                         (##cdr _e3012630179_)))
                                    (_loop3012530169_
                                     _lp-tl3012830186_
                                     (cons _lp-hd3012730183_
                                           _body3012930176_))))
                                (let ((_body3013030189_
                                       (reverse _body3012930176_)))
                                  ((lambda (_L30193_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3021030213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3021130216_)
                    (cons _g3021030213_ _g3021130216_))
                  '()
                  _L30193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body3013030189_))))))
                  (_loop3012530169_ _target3012230163_ '()))
                (_g3008430136_ _g3008530140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3008430136_ _g3008530140_))
                                          (_g3008430136_ _g3008530140_))
                                      (_g3008430136_ _g3008530140_))))
                              (_g3008430136_ _g3008530140_))))
                      (_g3008430136_ _g3008530140_))))
               (_g3008230345_
                (lambda (_g3008530223_)
                  (if (gx#stx-pair? _g3008530223_)
                      (let ((_e3009130226_ (gx#syntax-e _g3008530223_)))
                        (let ((_hd3009230230_ (##car _e3009130226_))
                              (_tl3009330233_ (##cdr _e3009130226_)))
                          (if (gx#stx-pair? _tl3009330233_)
                              (let ((_e3009430236_
                                     (gx#syntax-e _tl3009330233_)))
                                (let ((_hd3009530240_ (##car _e3009430236_))
                                      (_tl3009630243_ (##cdr _e3009430236_)))
                                  (if (gx#stx-pair? _hd3009530240_)
                                      (let ((_e3009730246_
                                             (gx#syntax-e _hd3009530240_)))
                                        (let ((_hd3009830250_
                                               (##car _e3009730246_))
                                              (_tl3009930253_
                                               (##cdr _e3009730246_)))
                                          (if (gx#stx-pair? _hd3009830250_)
                                              (let ((_e3010030256_
                                                     (gx#syntax-e
                                                      _hd3009830250_)))
                                                (let ((_hd3010130260_
                                                       (##car _e3010030256_))
                                                      (_tl3010230263_
                                                       (##cdr _e3010030256_)))
                                                  (if (gx#stx-pair?
                                                       _tl3010230263_)
                                                      (let ((_e3010330266_
                                                             (gx#syntax-e
                                                              _tl3010230263_)))
                                                        (let ((_hd3010430270_
                                                               (##car _e3010330266_))
                                                              (_tl3010530273_
                                                               (##cdr _e3010330266_)))
                                                          (if (gx#stx-null?
                                                               _tl3010530273_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3009630243_)
                          (if (fx>= (gx#stx-length _tl3009630243_) '0)
                              (let ((_g35461_
                                     (gx#syntax-split-splice
                                      _tl3009630243_
                                      '0)))
                                (begin
                                  (let ((_g35462_
                                         (if (##values? _g35461_)
                                             (##vector-length _g35461_)
                                             1)))
                                    (if (not (##fx= _g35462_ 2))
                                        (error "Context expects 2 values"
                                               _g35462_)))
                                  (let ((_target3010630276_
                                         (##vector-ref _g35461_ 0))
                                        (_tl3010830279_
                                         (##vector-ref _g35461_ 1)))
                                    (if (gx#stx-null? _tl3010830279_)
                                        (letrec ((_loop3010930282_
                                                  (lambda (_hd3010730286_
                                                           _body3011330289_)
                                                    (if (gx#stx-pair?
                                                         _hd3010730286_)
                                                        (let ((_e3011030292_
                                                               (gx#syntax-e
                                                                _hd3010730286_)))
                                                          (let ((_lp-hd3011130296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3011030292_))
                        (_lp-tl3011230299_ (##cdr _e3011030292_)))
                    (_loop3010930282_
                     _lp-tl3011230299_
                     (cons _lp-hd3011130296_ _body3011330289_))))
                (let ((_body3011430302_ (reverse _body3011330289_)))
                  ((lambda (_L30306_ _L30308_ _L30309_ _L30310_ _L30311_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L30310_ (cons _L30309_ '())) '())
                                 (cons (cons _L30311_
                                             (cons _L30308_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g3033630339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3033730342_)
                      (cons _g3033630339_ _g3033730342_))
                    '()
                    _L30306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body3011430302_
                   _tl3009930253_
                   _hd3010430270_
                   _hd3010130260_
                   _hd3009230230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop3010930282_
                                           _target3010630276_
                                           '()))
                                        (_g3008330219_ _g3008530223_)))))
                              (_g3008330219_ _g3008530223_))
                          (_g3008330219_ _g3008530223_))
                      (_g3008330219_ _g3008530223_))))
              (_g3008330219_ _g3008530223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3008330219_ _g3008530223_))))
                                      (_g3008330219_ _g3008530223_))))
                              (_g3008330219_ _g3008530223_))))
                      (_g3008330219_ _g3008530223_)))))
          (_g3008230345_ _$stx30079_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx30351_)
        (let* ((_g3036230506_
                (lambda (_g3036330502_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3036330502_)))
               (_g3036130601_
                (lambda (_g3036330510_)
                  (if (gx#stx-pair? _g3036330510_)
                      (let ((_e3048330513_ (gx#syntax-e _g3036330510_)))
                        (let ((_hd3048430517_ (##car _e3048330513_))
                              (_tl3048530520_ (##cdr _e3048330513_)))
                          (if (gx#stx-pair? _tl3048530520_)
                              (let ((_e3048630523_
                                     (gx#syntax-e _tl3048530520_)))
                                (let ((_hd3048730527_ (##car _e3048630523_))
                                      (_tl3048830530_ (##cdr _e3048630523_)))
                                  (if (gx#stx-pair? _tl3048830530_)
                                      (let ((_e3048930533_
                                             (gx#syntax-e _tl3048830530_)))
                                        (let ((_hd3049030537_
                                               (##car _e3048930533_))
                                              (_tl3049130540_
                                               (##cdr _e3048930533_)))
                                          (if (gx#stx-datum? _hd3049030537_)
                                              (if (equal? (gx#stx-e
                                                           _hd3049030537_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3049130540_)
                                                      (let ((_e3049230543_
                                                             (gx#syntax-e
                                                              _tl3049130540_)))
                                                        (let ((_hd3049330547_
                                                               (##car _e3049230543_))
                                                              (_tl3049430550_
                                                               (##cdr _e3049230543_)))
                                                          (if (gx#stx-pair?
                                                               _tl3049430550_)
                                                              (let ((_e3049530553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3049430550_)))
                        (let ((_hd3049630557_ (##car _e3049530553_))
                              (_tl3049730560_ (##cdr _e3049530553_)))
                          (if (gx#identifier? _hd3049630557_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35463_|
                                   _hd3049630557_)
                                  (if (gx#stx-pair? _tl3049730560_)
                                      (let ((_e3049830563_
                                             (gx#syntax-e _tl3049730560_)))
                                        (let ((_hd3049930567_
                                               (##car _e3049830563_))
                                              (_tl3050030570_
                                               (##cdr _e3049830563_)))
                                          (if (gx#stx-null? _tl3050030570_)
                                              ((lambda (_L30573_
                                                        _L30575_
                                                        _L30576_
                                                        _L30577_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30577_
                                             (cons _L30576_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30573_
                                                   (cons (cons _L30575_
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
                                               _hd3049930567_
                                               _hd3049330547_
                                               _hd3048730527_
                                               _hd3048430517_)
                                              (_g3036230506_ _g3036330510_))))
                                      (_g3036230506_ _g3036330510_))
                                  (_g3036230506_ _g3036330510_))
                              (_g3036230506_ _g3036330510_))))
                      (_g3036230506_ _g3036330510_))))
              (_g3036230506_ _g3036330510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036230506_
                                                   _g3036330510_))
                                              (_g3036230506_ _g3036330510_))))
                                      (_g3036230506_ _g3036330510_))))
                              (_g3036230506_ _g3036330510_))))
                      (_g3036230506_ _g3036330510_))))
               (_g3036030669_
                (lambda (_g3036330605_)
                  (if (gx#stx-pair? _g3036330605_)
                      (let ((_e3046730608_ (gx#syntax-e _g3036330605_)))
                        (let ((_hd3046830612_ (##car _e3046730608_))
                              (_tl3046930615_ (##cdr _e3046730608_)))
                          (if (gx#stx-pair? _tl3046930615_)
                              (let ((_e3047030618_
                                     (gx#syntax-e _tl3046930615_)))
                                (let ((_hd3047130622_ (##car _e3047030618_))
                                      (_tl3047230625_ (##cdr _e3047030618_)))
                                  (if (gx#stx-pair? _tl3047230625_)
                                      (let ((_e3047330628_
                                             (gx#syntax-e _tl3047230625_)))
                                        (let ((_hd3047430632_
                                               (##car _e3047330628_))
                                              (_tl3047530635_
                                               (##cdr _e3047330628_)))
                                          (if (gx#stx-datum? _hd3047430632_)
                                              (if (equal? (gx#stx-e
                                                           _hd3047430632_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3047530635_)
                                                      (let ((_e3047630638_
                                                             (gx#syntax-e
                                                              _tl3047530635_)))
                                                        (let ((_hd3047730642_
                                                               (##car _e3047630638_))
                                                              (_tl3047830645_
                                                               (##cdr _e3047630638_)))
                                                          (if (gx#stx-null?
                                                               _tl3047830645_)
                                                              ((lambda (_L30648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30650_
                                _L30651_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30650_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30648_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3047730642_
                       _hd3047130622_
                       _hd3046830612_)
                      (_g3036130601_ _g3036330605_))))
              (_g3036130601_ _g3036330605_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036130601_
                                                   _g3036330605_))
                                              (_g3036130601_ _g3036330605_))))
                                      (_g3036130601_ _g3036330605_))))
                              (_g3036130601_ _g3036330605_))))
                      (_g3036130601_ _g3036330605_))))
               (_g3035930737_
                (lambda (_g3036330673_)
                  (if (gx#stx-pair? _g3036330673_)
                      (let ((_e3045230676_ (gx#syntax-e _g3036330673_)))
                        (let ((_hd3045330680_ (##car _e3045230676_))
                              (_tl3045430683_ (##cdr _e3045230676_)))
                          (if (gx#stx-pair? _tl3045430683_)
                              (let ((_e3045530686_
                                     (gx#syntax-e _tl3045430683_)))
                                (let ((_hd3045630690_ (##car _e3045530686_))
                                      (_tl3045730693_ (##cdr _e3045530686_)))
                                  (if (gx#stx-pair? _tl3045730693_)
                                      (let ((_e3045830696_
                                             (gx#syntax-e _tl3045730693_)))
                                        (let ((_hd3045930700_
                                               (##car _e3045830696_))
                                              (_tl3046030703_
                                               (##cdr _e3045830696_)))
                                          (if (gx#identifier? _hd3045930700_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35464_|
                                                   _hd3045930700_)
                                                  (if (gx#stx-pair?
                                                       _tl3046030703_)
                                                      (let ((_e3046130706_
                                                             (gx#syntax-e
                                                              _tl3046030703_)))
                                                        (let ((_hd3046230710_
                                                               (##car _e3046130706_))
                                                              (_tl3046330713_
                                                               (##cdr _e3046130706_)))
                                                          (if (gx#stx-null?
                                                               _tl3046330713_)
                                                              ((lambda (_L30716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30718_
                                _L30719_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30719_
                                                             (cons _L30718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30716_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3046230710_
                       _hd3045630690_
                       _hd3045330680_)
                      (_g3036030669_ _g3036330673_))))
              (_g3036030669_ _g3036330673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3036030669_
                                                   _g3036330673_))
                                              (_g3036030669_ _g3036330673_))))
                                      (_g3036030669_ _g3036330673_))))
                              (_g3036030669_ _g3036330673_))))
                      (_g3036030669_ _g3036330673_))))
               (_g3035830779_
                (lambda (_g3036330741_)
                  (if (gx#stx-pair? _g3036330741_)
                      (let ((_e3044330744_ (gx#syntax-e _g3036330741_)))
                        (let ((_hd3044430748_ (##car _e3044330744_))
                              (_tl3044530751_ (##cdr _e3044330744_)))
                          (if (gx#stx-pair? _tl3044530751_)
                              (let ((_e3044630754_
                                     (gx#syntax-e _tl3044530751_)))
                                (let ((_hd3044730758_ (##car _e3044630754_))
                                      (_tl3044830761_ (##cdr _e3044630754_)))
                                  (if (gx#stx-null? _tl3044830761_)
                                      ((lambda (_L30764_ _L30766_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30764_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd3044730758_
                                       _hd3044430748_)
                                      (_g3035930737_ _g3036330741_))))
                              (_g3035930737_ _g3036330741_))))
                      (_g3035930737_ _g3036330741_))))
               (_g3035730833_
                (lambda (_g3036330783_)
                  (if (gx#stx-pair? _g3036330783_)
                      (let ((_e3043230786_ (gx#syntax-e _g3036330783_)))
                        (let ((_hd3043330790_ (##car _e3043230786_))
                              (_tl3043430793_ (##cdr _e3043230786_)))
                          (if (gx#stx-pair? _tl3043430793_)
                              (let ((_e3043530796_
                                     (gx#syntax-e _tl3043430793_)))
                                (let ((_hd3043630800_ (##car _e3043530796_))
                                      (_tl3043730803_ (##cdr _e3043530796_)))
                                  (if (gx#stx-pair? _tl3043730803_)
                                      (let ((_e3043830806_
                                             (gx#syntax-e _tl3043730803_)))
                                        (let ((_hd3043930810_
                                               (##car _e3043830806_))
                                              (_tl3044030813_
                                               (##cdr _e3043830806_)))
                                          (if (gx#stx-null? _tl3044030813_)
                                              ((lambda (_L30816_ _L30818_)
                                                 (cons _L30818_
                                                       (cons _L30816_ '())))
                                               _hd3043930810_
                                               _hd3043630800_)
                                              (_g3035830779_ _g3036330783_))))
                                      (_g3035830779_ _g3036330783_))))
                              (_g3035830779_ _g3036330783_))))
                      (_g3035830779_ _g3036330783_))))
               (_g3035630913_
                (lambda (_g3036330837_)
                  (if (gx#stx-pair? _g3036330837_)
                      (let ((_e3041530840_ (gx#syntax-e _g3036330837_)))
                        (let ((_hd3041630844_ (##car _e3041530840_))
                              (_tl3041730847_ (##cdr _e3041530840_)))
                          (if (gx#stx-pair? _tl3041730847_)
                              (let ((_e3041830850_
                                     (gx#syntax-e _tl3041730847_)))
                                (let ((_hd3041930854_ (##car _e3041830850_))
                                      (_tl3042030857_ (##cdr _e3041830850_)))
                                  (if (gx#stx-pair? _hd3041930854_)
                                      (let ((_e3042130860_
                                             (gx#syntax-e _hd3041930854_)))
                                        (let ((_hd3042230864_
                                               (##car _e3042130860_))
                                              (_tl3042330867_
                                               (##cdr _e3042130860_)))
                                          (if (gx#identifier? _hd3042230864_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35465_|
                                                   _hd3042230864_)
                                                  (if (gx#stx-pair?
                                                       _tl3042330867_)
                                                      (let ((_e3042430870_
                                                             (gx#syntax-e
                                                              _tl3042330867_)))
                                                        (let ((_hd3042530874_
                                                               (##car _e3042430870_))
                                                              (_tl3042630877_
                                                               (##cdr _e3042430870_)))
                                                          (if (gx#stx-null?
                                                               _tl3042630877_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3042030857_)
                          (let ((_e3042730880_ (gx#syntax-e _tl3042030857_)))
                            (let ((_hd3042830884_ (##car _e3042730880_))
                                  (_tl3042930887_ (##cdr _e3042730880_)))
                              (if (gx#stx-null? _tl3042930887_)
                                  ((lambda (_L30890_ _L30892_ _L30893_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30893_
                                                       (cons _L30892_
                                                             (cons _L30890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd3042830884_
                                   _hd3042530874_
                                   _hd3041630844_)
                                  (_g3035730833_ _g3036330837_))))
                          (_g3035730833_ _g3036330837_))
                      (_g3035730833_ _g3036330837_))))
              (_g3035730833_ _g3036330837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035730833_
                                                   _g3036330837_))
                                              (_g3035730833_ _g3036330837_))))
                                      (_g3035730833_ _g3036330837_))))
                              (_g3035730833_ _g3036330837_))))
                      (_g3035730833_ _g3036330837_))))
               (_g3035531023_
                (lambda (_g3036330917_)
                  (if (gx#stx-pair? _g3036330917_)
                      (let ((_e3039130920_ (gx#syntax-e _g3036330917_)))
                        (let ((_hd3039230924_ (##car _e3039130920_))
                              (_tl3039330927_ (##cdr _e3039130920_)))
                          (if (gx#stx-pair? _tl3039330927_)
                              (let ((_e3039430930_
                                     (gx#syntax-e _tl3039330927_)))
                                (let ((_hd3039530934_ (##car _e3039430930_))
                                      (_tl3039630937_ (##cdr _e3039430930_)))
                                  (if (gx#stx-pair? _hd3039530934_)
                                      (let ((_e3039730940_
                                             (gx#syntax-e _hd3039530934_)))
                                        (let ((_hd3039830944_
                                               (##car _e3039730940_))
                                              (_tl3039930947_
                                               (##cdr _e3039730940_)))
                                          (if (gx#identifier? _hd3039830944_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35466_|
                                                   _hd3039830944_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3039930947_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3039930947_)
                        '0)
                  (let ((_g35467_ (gx#syntax-split-splice _tl3039930947_ '0)))
                    (begin
                      (let ((_g35468_
                             (if (##values? _g35467_)
                                 (##vector-length _g35467_)
                                 1)))
                        (if (not (##fx= _g35468_ 2))
                            (error "Context expects 2 values" _g35468_)))
                      (let ((_target3040030950_ (##vector-ref _g35467_ 0))
                            (_tl3040230953_ (##vector-ref _g35467_ 1)))
                        (if (gx#stx-null? _tl3040230953_)
                            (letrec ((_loop3040330956_
                                      (lambda (_hd3040130960_ _pred3040730963_)
                                        (if (gx#stx-pair? _hd3040130960_)
                                            (let ((_e3040430966_
                                                   (gx#syntax-e
                                                    _hd3040130960_)))
                                              (let ((_lp-hd3040530970_
                                                     (##car _e3040430966_))
                                                    (_lp-tl3040630973_
                                                     (##cdr _e3040430966_)))
                                                (_loop3040330956_
                                                 _lp-tl3040630973_
                                                 (cons _lp-hd3040530970_
                                                       _pred3040730963_))))
                                            (let ((_pred3040830976_
                                                   (reverse _pred3040730963_)))
                                              (if (gx#stx-pair? _tl3039630937_)
                                                  (let ((_e3040930980_
                                                         (gx#syntax-e
                                                          _tl3039630937_)))
                                                    (let ((_hd3041030984_
                                                           (##car _e3040930980_))
                                                          (_tl3041130987_
                                                           (##cdr _e3040930980_)))
                                                      (if (gx#stx-null?
                                                           _tl3041130987_)
                                                          ((lambda (_L30990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30992_
                            _L30993_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3101431017_ _g3101531020_)
                                      (cons (cons _L30993_
                                                  (cons _g3101431017_
                                                        (cons _L30990_ '())))
                                            _g3101531020_))
                                    '()
                                    _L30992_))))
                   _hd3041030984_
                   _pred3040830976_
                   _hd3039230924_)
                  (_g3035630913_ _g3036330917_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035630913_
                                                   _g3036330917_)))))))
                              (_loop3040330956_ _target3040030950_ '()))
                            (_g3035630913_ _g3036330917_)))))
                  (_g3035630913_ _g3036330917_))
              (_g3035630913_ _g3036330917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035630913_
                                                   _g3036330917_))
                                              (_g3035630913_ _g3036330917_))))
                                      (_g3035630913_ _g3036330917_))))
                              (_g3035630913_ _g3036330917_))))
                      (_g3035630913_ _g3036330917_))))
               (_g3035431133_
                (lambda (_g3036331027_)
                  (if (gx#stx-pair? _g3036331027_)
                      (let ((_e3036731030_ (gx#syntax-e _g3036331027_)))
                        (let ((_hd3036831034_ (##car _e3036731030_))
                              (_tl3036931037_ (##cdr _e3036731030_)))
                          (if (gx#stx-pair? _tl3036931037_)
                              (let ((_e3037031040_
                                     (gx#syntax-e _tl3036931037_)))
                                (let ((_hd3037131044_ (##car _e3037031040_))
                                      (_tl3037231047_ (##cdr _e3037031040_)))
                                  (if (gx#stx-pair? _hd3037131044_)
                                      (let ((_e3037331050_
                                             (gx#syntax-e _hd3037131044_)))
                                        (let ((_hd3037431054_
                                               (##car _e3037331050_))
                                              (_tl3037531057_
                                               (##cdr _e3037331050_)))
                                          (if (gx#identifier? _hd3037431054_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35469_|
                                                   _hd3037431054_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3037531057_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3037531057_)
                        '0)
                  (let ((_g35470_ (gx#syntax-split-splice _tl3037531057_ '0)))
                    (begin
                      (let ((_g35471_
                             (if (##values? _g35470_)
                                 (##vector-length _g35470_)
                                 1)))
                        (if (not (##fx= _g35471_ 2))
                            (error "Context expects 2 values" _g35471_)))
                      (let ((_target3037631060_ (##vector-ref _g35470_ 0))
                            (_tl3037831063_ (##vector-ref _g35470_ 1)))
                        (if (gx#stx-null? _tl3037831063_)
                            (letrec ((_loop3037931066_
                                      (lambda (_hd3037731070_ _pred3038331073_)
                                        (if (gx#stx-pair? _hd3037731070_)
                                            (let ((_e3038031076_
                                                   (gx#syntax-e
                                                    _hd3037731070_)))
                                              (let ((_lp-hd3038131080_
                                                     (##car _e3038031076_))
                                                    (_lp-tl3038231083_
                                                     (##cdr _e3038031076_)))
                                                (_loop3037931066_
                                                 _lp-tl3038231083_
                                                 (cons _lp-hd3038131080_
                                                       _pred3038331073_))))
                                            (let ((_pred3038431086_
                                                   (reverse _pred3038331073_)))
                                              (if (gx#stx-pair? _tl3037231047_)
                                                  (let ((_e3038531090_
                                                         (gx#syntax-e
                                                          _tl3037231047_)))
                                                    (let ((_hd3038631094_
                                                           (##car _e3038531090_))
                                                          (_tl3038731097_
                                                           (##cdr _e3038531090_)))
                                                      (if (gx#stx-null?
                                                           _tl3038731097_)
                                                          ((lambda (_L31100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L31102_
                            _L31103_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3112431127_ _g3112531130_)
                                      (cons (cons _L31103_
                                                  (cons _g3112431127_
                                                        (cons _L31100_ '())))
                                            _g3112531130_))
                                    '()
                                    _L31102_))))
                   _hd3038631094_
                   _pred3038431086_
                   _hd3036831034_)
                  (_g3035531023_ _g3036331027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035531023_
                                                   _g3036331027_)))))))
                              (_loop3037931066_ _target3037631060_ '()))
                            (_g3035531023_ _g3036331027_)))))
                  (_g3035531023_ _g3036331027_))
              (_g3035531023_ _g3036331027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3035531023_
                                                   _g3036331027_))
                                              (_g3035531023_ _g3036331027_))))
                                      (_g3035531023_ _g3036331027_))))
                              (_g3035531023_ _g3036331027_))))
                      (_g3035531023_ _g3036331027_)))))
          (_g3035431133_ _$stx30351_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx31139_)
        (let* ((_g3114431178_
                (lambda (_g3114531174_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3114531174_)))
               (_g3114331235_
                (lambda (_g3114531182_)
                  (if (gx#stx-pair? _g3114531182_)
                      (let ((_e3116431185_ (gx#syntax-e _g3114531182_)))
                        (let ((_hd3116531189_ (##car _e3116431185_))
                              (_tl3116631192_ (##cdr _e3116431185_)))
                          (if (gx#stx-pair? _tl3116631192_)
                              (let ((_e3116731195_
                                     (gx#syntax-e _tl3116631192_)))
                                (let ((_hd3116831199_ (##car _e3116731195_))
                                      (_tl3116931202_ (##cdr _e3116731195_)))
                                  (if (gx#stx-pair? _tl3116931202_)
                                      (let ((_e3117031205_
                                             (gx#syntax-e _tl3116931202_)))
                                        (let ((_hd3117131209_
                                               (##car _e3117031205_))
                                              (_tl3117231212_
                                               (##cdr _e3117031205_)))
                                          (if (gx#stx-null? _tl3117231212_)
                                              ((lambda (_L31215_
                                                        _L31217_
                                                        _L31218_)
                                                 (cons _L31218_
                                                       (cons _L31217_
                                                             (cons _L31215_
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
                                               _hd3117131209_
                                               _hd3116831199_
                                               _hd3116531189_)
                                              (_g3114431178_ _g3114531182_))))
                                      (_g3114431178_ _g3114531182_))))
                              (_g3114431178_ _g3114531182_))))
                      (_g3114431178_ _g3114531182_))))
               (_g3114231303_
                (lambda (_g3114531239_)
                  (if (gx#stx-pair? _g3114531239_)
                      (let ((_e3114931242_ (gx#syntax-e _g3114531239_)))
                        (let ((_hd3115031246_ (##car _e3114931242_))
                              (_tl3115131249_ (##cdr _e3114931242_)))
                          (if (gx#stx-pair? _tl3115131249_)
                              (let ((_e3115231252_
                                     (gx#syntax-e _tl3115131249_)))
                                (let ((_hd3115331256_ (##car _e3115231252_))
                                      (_tl3115431259_ (##cdr _e3115231252_)))
                                  (if (gx#stx-pair? _tl3115431259_)
                                      (let ((_e3115531262_
                                             (gx#syntax-e _tl3115431259_)))
                                        (let ((_hd3115631266_
                                               (##car _e3115531262_))
                                              (_tl3115731269_
                                               (##cdr _e3115531262_)))
                                          (if (gx#stx-pair? _tl3115731269_)
                                              (let ((_e3115831272_
                                                     (gx#syntax-e
                                                      _tl3115731269_)))
                                                (let ((_hd3115931276_
                                                       (##car _e3115831272_))
                                                      (_tl3116031279_
                                                       (##cdr _e3115831272_)))
                                                  (if (gx#stx-null?
                                                       _tl3116031279_)
                                                      ((lambda (_L31282_
                                                                _L31284_
                                                                _L31285_)
                                                         (if (gx#identifier?
                                                              _L31285_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L31285_
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
                                         (cons _L31284_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L31282_ '()))
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
                     (_g3114331235_ _g3114531239_)))
               _hd3115931276_
               _hd3115631266_
               _hd3115331256_)
              (_g3114331235_ _g3114531239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3114331235_ _g3114531239_))))
                                      (_g3114331235_ _g3114531239_))))
                              (_g3114331235_ _g3114531239_))))
                      (_g3114331235_ _g3114531239_)))))
          (_g3114231303_ _$stx31139_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx31307_)
        (let* ((_g3131131326_
                (lambda (_g3131231322_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3131231322_)))
               (_g3131031369_
                (lambda (_g3131231330_)
                  (if (gx#stx-pair? _g3131231330_)
                      (let ((_e3131531333_ (gx#syntax-e _g3131231330_)))
                        (let ((_hd3131631337_ (##car _e3131531333_))
                              (_tl3131731340_ (##cdr _e3131531333_)))
                          (if (gx#stx-pair? _tl3131731340_)
                              (let ((_e3131831343_
                                     (gx#syntax-e _tl3131731340_)))
                                (let ((_hd3131931347_ (##car _e3131831343_))
                                      (_tl3132031350_ (##cdr _e3131831343_)))
                                  ((lambda (_L31353_ _L31355_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L31355_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L31353_)
                                                       '()))))
                                   _tl3132031350_
                                   _hd3131931347_)))
                              (_g3131131326_ _g3131231330_))))
                      (_g3131131326_ _g3131231330_)))))
          (_g3131031369_ _$stx31307_))))))
