(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g41729_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41730_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41731_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41732_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41733_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41734_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41735_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41736_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41737_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41738_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41739_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41740_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41741_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41742_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41743_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41752_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41757_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41758_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41759_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41764_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41765_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41766_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41767_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41768_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
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
      (lambda _$args29906_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29906_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29903_)
        (if (gx#identifier? _stx29903_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx29903_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28209_ _match-stx28211_)
        (letrec ((_parse128213_
                  (lambda (_hd28566_)
                    (let* ((___stx3899838999_ _hd28566_)
                           (_g2859228734_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3899838999_))))
                      (let ((___kont3900139002_
                             (lambda (_L29666_ _L29668_)
                               (let* ((___stx3891838919_ _L29666_)
                                      (_g2968529718_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3891838919_))))
                                 (let ((___kont3892138922_
                                        (lambda ()
                                          (cons '?: (cons _L29668_ '()))))
                                       (___kont3892338924_
                                        (lambda (_L29859_)
                                          (cons '?:
                                                (cons _L29668_
                                                      (cons (_parse128213_
                                                             _L29859_)
                                                            '())))))
                                       (___kont3892538926_
                                        (lambda (_L29829_)
                                          (cons '?:
                                                (cons _L29668_
                                                      (cons '=>:
                                                            (cons (_parse128213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L29829_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3892738928_
                                        (lambda (_L29780_ _L29782_)
                                          (cons '?:
                                                (cons _L29668_
                                                      (cons '::
                                                            (cons _L29782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse128213_ _L29780_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3892938930_
                                        (lambda ()
                                          (_parse-error28220_ _hd28566_))))
                                   (let ((_g2968129870_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3891838919_)
                                                (let ((_e2968829849_
                                                       (gx#syntax-e
                                                        ___stx3891838919_)))
                                                  (let ((_tl2969029856_
                                                         (##cdr _e2968829849_))
                                                        (_hd2968929853_
                                                         (##car _e2968829849_)))
                                                    (if (gx#stx-null?
                                                         _tl2969029856_)
                                                        (___kont3892338924_
                                                         _hd2968929853_)
                                                        (if (gx#identifier?
                                                             _hd2968929853_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41729_|
                         _hd2968929853_)
                        (if (gx#stx-pair? _tl2969029856_)
                            (let ((_e2969529819_ (gx#syntax-e _tl2969029856_)))
                              (let ((_tl2969729826_ (##cdr _e2969529819_))
                                    (_hd2969629823_ (##car _e2969529819_)))
                                (if (gx#stx-null? _tl2969729826_)
                                    (___kont3892538926_ _hd2969629823_)
                                    (___kont3892938930_))))
                            (___kont3892938930_))
                        (___kont3892938930_))
                    (if (gx#stx-datum? _hd2968929853_)
                        (let ((_e2970329746_ (gx#stx-e _hd2968929853_)))
                          (if (equal? _e2970329746_ '::)
                              (if (gx#stx-pair? _tl2969029856_)
                                  (let ((_e2970429750_
                                         (gx#syntax-e _tl2969029856_)))
                                    (let ((_tl2970629757_
                                           (##cdr _e2970429750_))
                                          (_hd2970529754_
                                           (##car _e2970429750_)))
                                      (if (gx#stx-pair? _tl2970629757_)
                                          (let ((_e2970729760_
                                                 (gx#syntax-e _tl2970629757_)))
                                            (let ((_tl2970929767_
                                                   (##cdr _e2970729760_))
                                                  (_hd2970829764_
                                                   (##car _e2970729760_)))
                                              (if (gx#identifier?
                                                   _hd2970829764_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41730_|
                                                       _hd2970829764_)
                                                      (if (gx#stx-pair?
                                                           _tl2970929767_)
                                                          (let ((_e2971029770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2970929767_)))
                    (let ((_tl2971229777_ (##cdr _e2971029770_))
                          (_hd2971129774_ (##car _e2971029770_)))
                      (if (gx#stx-null? _tl2971229777_)
                          (___kont3892738928_ _hd2971129774_ _hd2970529754_)
                          (___kont3892938930_))))
                  (___kont3892938930_))
              (___kont3892938930_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3892938930_))))
                                          (___kont3892938930_))))
                                  (___kont3892938930_))
                              (___kont3892938930_)))
                        (___kont3892938930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3892938930_)))))
                                     (if (gx#stx-null? ___stx3891838919_)
                                         (___kont3892138922_)
                                         (_g2968129870_)))))))
                            (___kont3900339004_
                             (lambda (_L29571_)
                               (let* ((___stx3890038901_ _L29571_)
                                      (_g2958329594_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3890038901_))))
                                 (let ((___kont3890338904_
                                        (lambda (_L29622_)
                                          (_parse128213_ _L29622_)))
                                       (___kont3890538906_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128213_
                                                 _L29571_)))))
                                   (if (gx#stx-pair? ___stx3890038901_)
                                       (let ((_e2958629612_
                                              (gx#syntax-e ___stx3890038901_)))
                                         (let ((_tl2958829619_
                                                (##cdr _e2958629612_))
                                               (_hd2958729616_
                                                (##car _e2958629612_)))
                                           (if (gx#stx-null? _tl2958829619_)
                                               (___kont3890338904_
                                                _hd2958729616_)
                                               (___kont3890538906_))))
                                       (___kont3890538906_))))))
                            (___kont3900539006_
                             (lambda (_L29486_)
                               (let* ((___stx3888238883_ _L29486_)
                                      (_g2949829509_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3888238883_))))
                                 (let ((___kont3888538886_
                                        (lambda (_L29537_)
                                          (_parse128213_ _L29537_)))
                                       (___kont3888738888_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128213_
                                                 _L29486_)))))
                                   (if (gx#stx-pair? ___stx3888238883_)
                                       (let ((_e2950129527_
                                              (gx#syntax-e ___stx3888238883_)))
                                         (let ((_tl2950329534_
                                                (##cdr _e2950129527_))
                                               (_hd2950229531_
                                                (##car _e2950129527_)))
                                           (if (gx#stx-null? _tl2950329534_)
                                               (___kont3888538886_
                                                _hd2950229531_)
                                               (___kont3888738888_))))
                                       (___kont3888738888_))))))
                            (___kont3900739008_
                             (lambda (_L29456_)
                               (cons 'not:
                                     (cons (_parse128213_ _L29456_) '()))))
                            (___kont3900939010_
                             (lambda (_L29412_ _L29414_)
                               (cons 'cons:
                                     (cons (_parse128213_ _L29414_)
                                           (cons (_parse128213_ _L29412_)
                                                 '())))))
                            (___kont3901139012_
                             (lambda (_L29356_ _L29358_ _L29359_)
                               (if (gx#stx-null? _L29356_)
                                   (cons 'cons:
                                         (cons (_parse128213_ _L29359_)
                                               (cons (_parse128213_ _L29358_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse128213_ _L29359_)
                                               (cons (_parse128213_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3901339014_
                             (lambda (_L29308_) (_parse-list28215_ _L29308_)))
                            (___kont3901539016_
                             (lambda (_L29278_)
                               (cons 'box:
                                     (cons (_parse128213_ _L29278_) '()))))
                            (___kont3901739018_
                             (lambda (_L29241_)
                               (cons 'box:
                                     (cons (_parse128213_ _L29241_) '()))))
                            (___kont3901939020_
                             (lambda (_L29217_) (_parse128213_ _L29217_)))
                            (___kont3902139022_
                             (lambda (_L29179_)
                               (cons 'values:
                                     (cons (_parse-vector28216_ _L29179_)
                                           '()))))
                            (___kont3902339024_
                             (lambda (_L29151_)
                               (cons 'vector:
                                     (cons (_parse-vector28216_ _L29151_)
                                           '()))))
                            (___kont3902539026_
                             (lambda (_L29112_)
                               (cons 'vector:
                                     (cons (_parse-vector28216_
                                            (foldr (lambda (_g2912529128_
                                                            _g2912629131_)
                                                     (cons _g2912529128_
                                                           _g2912629131_))
                                                   '()
                                                   _L29112_))
                                           '()))))
                            (___kont3902939030_
                             (lambda (_L29058_ _L29060_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29060_)
                                           (cons (_parse-vector28216_ _L29058_)
                                                 '())))))
                            (___kont3903139032_
                             (lambda (_L29028_ _L29030_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29030_)
                                           (cons (_parse-class-body28218_
                                                  _L29028_)
                                                 '())))))
                            (___kont3903339034_
                             (lambda (_L28988_ _L28990_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L28990_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L28988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3903539036_
                             (lambda (_L28948_)
                               (cons 'datum: (cons (gx#stx-e _L28948_) '()))))
                            (___kont3903739038_
                             (lambda (_L28908_) (_parse-qq28219_ _L28908_)))
                            (___kont3903939040_
                             (lambda (_L28864_ _L28866_)
                               (cons 'apply:
                                     (cons _L28866_
                                           (cons (_parse128213_ _L28864_)
                                                 '())))))
                            (___kont3904139042_
                             (lambda (_L28812_)
                               (_parse128213_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L28812_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28566_)
                                  (let ((_$e28823_ (gx#stx-source _hd28566_)))
                                    (if _$e28823_
                                        _$e28823_
                                        (gx#stx-source _stx28209_))))))))
                            (___kont3904339044_
                             (lambda (_L28786_) (cons 'any: '())))
                            (___kont3904539046_
                             (lambda (_L28770_)
                               (cons 'var: (cons _L28770_ '()))))
                            (___kont3904739048_
                             (lambda (_L28752_)
                               (cons 'datum: (cons (gx#stx-e _L28752_) '()))))
                            (___kont3904939050_
                             (lambda () (_parse-error28220_ _hd28566_))))
                        (let* ((_g2859028763_
                                (lambda ()
                                  (let ((_L28752_ ___stx3899838999_))
                                    (if (gx#stx-datum? _L28752_)
                                        (___kont3904739048_ _L28752_)
                                        (___kont3904939050_)))))
                               (_g2858928779_
                                (lambda ()
                                  (let ((_L28770_ ___stx3899838999_))
                                    (if (and (gx#identifier? _L28770_)
                                             (not (gx#ellipsis? _L28770_)))
                                        (___kont3904539046_ _L28770_)
                                        (_g2859028763_)))))
                               (_g2858828795_
                                (lambda ()
                                  (let ((_L28786_ ___stx3899838999_))
                                    (if (gx#underscore? _L28786_)
                                        (___kont3904339044_ _L28786_)
                                        (_g2858928779_)))))
                               (___match3932539326_
                                (lambda (_e2872328802_
                                         _hd2872428806_
                                         _tl2872528809_)
                                  (let ((_L28812_ _hd2872428806_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L28812_)
                                        (___kont3904139042_ _L28812_)
                                        (_g2858828795_)))))
                               (___match3925939260_
                                (lambda (_e2869128968_
                                         _hd2869228972_
                                         _tl2869328975_
                                         _e2869428978_
                                         _hd2869528982_
                                         _tl2869628985_)
                                  (let ((_L28988_ _hd2869528982_)
                                        (_L28990_ _hd2869228972_))
                                    (if (and (gx#identifier? _L28990_)
                                             (or (gx#free-identifier=?
                                                  _L28990_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L28990_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L28990_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3903339034_ _L28988_ _L28990_)
                                        (if (gx#identifier? _hd2869228972_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41731_|
                                                 _hd2869228972_)
                                                (___kont3903539036_
                                                 _hd2869528982_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g41732_|
                                                     _hd2869228972_)
                                                    (___kont3903739038_
                                                     _hd2869528982_)
                                                    (___match3932539326_
                                                     _e2869128968_
                                                     _hd2869228972_
                                                     _tl2869328975_)))
                                            (___match3932539326_
                                             _e2869128968_
                                             _hd2869228972_
                                             _tl2869328975_))))))
                               (___match3924539246_
                                (lambda (_e2868629018_
                                         _hd2868729022_
                                         _tl2868829025_)
                                  (let ((_L29028_ _tl2868829025_)
                                        (_L29030_ _hd2868729022_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L29030_)
                                        (___kont3903139032_ _L29028_ _L29030_)
                                        (if (gx#stx-pair? _tl2868829025_)
                                            (let ((_e2869428978_
                                                   (gx#syntax-e
                                                    _tl2868829025_)))
                                              (let ((_tl2869628985_
                                                     (##cdr _e2869428978_))
                                                    (_hd2869528982_
                                                     (##car _e2869428978_)))
                                                (if (gx#stx-null?
                                                     _tl2869628985_)
                                                    (___match3925939260_
                                                     _e2868629018_
                                                     _hd2868729022_
                                                     _tl2868829025_
                                                     _e2869428978_
                                                     _hd2869528982_
                                                     _tl2869628985_)
                                                    (if (gx#identifier?
                                                         _hd2868729022_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g41731_|
                                                             _hd2868729022_)
                                                            (___match3932539326_
                                                             _e2868629018_
                                                             _hd2868729022_
                                                             _tl2868829025_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41732_|
                         _hd2868729022_)
                        (___match3932539326_
                         _e2868629018_
                         _hd2868729022_
                         _tl2868829025_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41733_|
                             _hd2868729022_)
                            (if (gx#stx-pair? _tl2869628985_)
                                (let ((_e2871928854_
                                       (gx#syntax-e _tl2869628985_)))
                                  (let ((_tl2872128861_ (##cdr _e2871928854_))
                                        (_hd2872028858_ (##car _e2871928854_)))
                                    (if (gx#stx-null? _tl2872128861_)
                                        (___kont3903939040_
                                         _hd2872028858_
                                         _hd2869528982_)
                                        (___match3932539326_
                                         _e2868629018_
                                         _hd2868729022_
                                         _tl2868829025_))))
                                (___match3932539326_
                                 _e2868629018_
                                 _hd2868729022_
                                 _tl2868829025_))
                            (___match3932539326_
                             _e2868629018_
                             _hd2868729022_
                             _tl2868829025_))))
                (___match3932539326_
                 _e2868629018_
                 _hd2868729022_
                 _tl2868829025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3932539326_
                                             _e2868629018_
                                             _hd2868729022_
                                             _tl2868829025_))))))
                               (___match3923939240_
                                (lambda (_e2868129048_
                                         _hd2868229052_
                                         _tl2868329055_)
                                  (let ((_L29058_ _tl2868329055_)
                                        (_L29060_ _hd2868229052_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L29060_)
                                        (___kont3902939030_ _L29058_ _L29060_)
                                        (___match3924539246_
                                         _e2868129048_
                                         _hd2868229052_
                                         _tl2868329055_)))))
                               (___match3923339234_
                                (lambda (_e2866929078_
                                         ___splice3902739028_
                                         _target2867029082_
                                         _tl2867229085_)
                                  (letrec ((_loop2867329088_
                                            (lambda (_hd2867129092_
                                                     _body2867729095_)
                                              (if (gx#stx-pair? _hd2867129092_)
                                                  (let ((_e2867429098_
                                                         (gx#syntax-e
                                                          _hd2867129092_)))
                                                    (let ((_lp-tl2867629105_
                                                           (##cdr _e2867429098_))
                                                          (_lp-hd2867529102_
                                                           (##car _e2867429098_)))
                                                      (_loop2867329088_
                                                       _lp-tl2867629105_
                                                       (cons _lp-hd2867529102_
                                                             _body2867729095_))))
                                                  (let ((_body2867829108_
                                                         (reverse _body2867729095_)))
                                                    (___kont3902539026_
                                                     _body2867829108_))))))
                                    (_loop2867329088_
                                     _target2867029082_
                                     '()))))
                               (_g2858029134_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3899838999_)
                                      (let ((_e2866929078_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3899838999_))))
                                        (if (gx#stx-pair/null? _e2866929078_)
                                            (let ((___splice3902739028_
                                                   (gx#syntax-split-splice
                                                    _e2866929078_
                                                    '0)))
                                              (let ((_tl2867229085_
                                                     (##vector-ref
                                                      ___splice3902739028_
                                                      '1))
                                                    (_target2867029082_
                                                     (##vector-ref
                                                      ___splice3902739028_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2867229085_)
                                                    (___match3923339234_
                                                     _e2866929078_
                                                     ___splice3902739028_
                                                     _target2867029082_
                                                     _tl2867229085_)
                                                    (_g2858828795_))))
                                            (_g2858828795_)))
                                      (_g2858828795_))))
                               (_g2857629251_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3899838999_)
                                      (let ((_e2865229237_
                                             (unbox (gx#syntax-e
                                                     ___stx3899838999_))))
                                        (___kont3901739018_ _e2865229237_))
                                      (_g2858029134_))))
                               (___match3908739088_
                                (lambda (_e2860729476_
                                         _hd2860829480_
                                         _tl2860929483_)
                                  (let ((_L29486_ _tl2860929483_))
                                    (if (gx#stx-list? _L29486_)
                                        (___kont3900539006_ _L29486_)
                                        (___match3923939240_
                                         _e2860729476_
                                         _hd2860829480_
                                         _tl2860929483_)))))
                               (___match3907739078_
                                (lambda (_e2860329561_
                                         _hd2860429565_
                                         _tl2860529568_)
                                  (let ((_L29571_ _tl2860529568_))
                                    (if (gx#stx-list? _L29571_)
                                        (___kont3900339004_ _L29571_)
                                        (___match3923939240_
                                         _e2860329561_
                                         _hd2860429565_
                                         _tl2860529568_))))))
                          (if (gx#stx-pair? ___stx3899838999_)
                              (let ((_e2859629646_
                                     (gx#syntax-e ___stx3899838999_)))
                                (let ((_tl2859829653_ (##cdr _e2859629646_))
                                      (_hd2859729650_ (##car _e2859629646_)))
                                  (if (gx#identifier? _hd2859729650_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41734_|
                                           _hd2859729650_)
                                          (if (gx#stx-pair? _tl2859829653_)
                                              (let ((_e2859929656_
                                                     (gx#syntax-e
                                                      _tl2859829653_)))
                                                (let ((_tl2860129663_
                                                       (##cdr _e2859929656_))
                                                      (_hd2860029660_
                                                       (##car _e2859929656_)))
                                                  (___kont3900139002_
                                                   _tl2860129663_
                                                   _hd2860029660_)))
                                              (___match3923939240_
                                               _e2859629646_
                                               _hd2859729650_
                                               _tl2859829653_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41735_|
                                               _hd2859729650_)
                                              (___match3907739078_
                                               _e2859629646_
                                               _hd2859729650_
                                               _tl2859829653_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41736_|
                                                   _hd2859729650_)
                                                  (___match3908739088_
                                                   _e2859629646_
                                                   _hd2859729650_
                                                   _tl2859829653_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41737_|
                                                       _hd2859729650_)
                                                      (if (gx#stx-pair?
                                                           _tl2859829653_)
                                                          (let ((_e2861429446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2859829653_)))
                    (let ((_tl2861629453_ (##cdr _e2861429446_))
                          (_hd2861529450_ (##car _e2861429446_)))
                      (if (gx#stx-null? _tl2861629453_)
                          (___kont3900739008_ _hd2861529450_)
                          (___match3923939240_
                           _e2859629646_
                           _hd2859729650_
                           _tl2859829653_))))
                  (___match3923939240_
                   _e2859629646_
                   _hd2859729650_
                   _tl2859829653_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g41738_|
                   _hd2859729650_)
                  (if (gx#stx-pair? _tl2859829653_)
                      (let ((_e2862229392_ (gx#syntax-e _tl2859829653_)))
                        (let ((_tl2862429399_ (##cdr _e2862229392_))
                              (_hd2862329396_ (##car _e2862229392_)))
                          (if (gx#stx-pair? _tl2862429399_)
                              (let ((_e2862529402_
                                     (gx#syntax-e _tl2862429399_)))
                                (let ((_tl2862729409_ (##cdr _e2862529402_))
                                      (_hd2862629406_ (##car _e2862529402_)))
                                  (if (gx#stx-null? _tl2862729409_)
                                      (___kont3900939010_
                                       _hd2862629406_
                                       _hd2862329396_)
                                      (___match3923939240_
                                       _e2859629646_
                                       _hd2859729650_
                                       _tl2859829653_))))
                              (___match3923939240_
                               _e2859629646_
                               _hd2859729650_
                               _tl2859829653_))))
                      (___match3923939240_
                       _e2859629646_
                       _hd2859729650_
                       _tl2859829653_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g41739_|
                       _hd2859729650_)
                      (if (gx#stx-pair? _tl2859829653_)
                          (let ((_e2863429336_ (gx#syntax-e _tl2859829653_)))
                            (let ((_tl2863629343_ (##cdr _e2863429336_))
                                  (_hd2863529340_ (##car _e2863429336_)))
                              (if (gx#stx-pair? _tl2863629343_)
                                  (let ((_e2863729346_
                                         (gx#syntax-e _tl2863629343_)))
                                    (let ((_tl2863929353_
                                           (##cdr _e2863729346_))
                                          (_hd2863829350_
                                           (##car _e2863729346_)))
                                      (___kont3901139012_
                                       _tl2863929353_
                                       _hd2863829350_
                                       _hd2863529340_)))
                                  (___match3923939240_
                                   _e2859629646_
                                   _hd2859729650_
                                   _tl2859829653_))))
                          (___match3923939240_
                           _e2859629646_
                           _hd2859729650_
                           _tl2859829653_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g41740_|
                           _hd2859729650_)
                          (___kont3901339014_ _tl2859829653_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41741_|
                               _hd2859729650_)
                              (if (gx#stx-pair? _tl2859829653_)
                                  (let ((_e2864829268_
                                         (gx#syntax-e _tl2859829653_)))
                                    (let ((_tl2865029275_
                                           (##cdr _e2864829268_))
                                          (_hd2864929272_
                                           (##car _e2864829268_)))
                                      (if (gx#stx-null? _tl2865029275_)
                                          (___kont3901539016_ _hd2864929272_)
                                          (___match3923939240_
                                           _e2859629646_
                                           _hd2859729650_
                                           _tl2859829653_))))
                                  (___match3923939240_
                                   _e2859629646_
                                   _hd2859729650_
                                   _tl2859829653_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41742_|
                                   _hd2859729650_)
                                  (if (gx#stx-pair? _tl2859829653_)
                                      (let ((_e2865729207_
                                             (gx#syntax-e _tl2859829653_)))
                                        (let ((_tl2865929214_
                                               (##cdr _e2865729207_))
                                              (_hd2865829211_
                                               (##car _e2865729207_)))
                                          (if (gx#stx-null? _tl2865929214_)
                                              (___kont3901939020_
                                               _hd2865829211_)
                                              (___kont3902139022_
                                               _tl2859829653_))))
                                      (___kont3902139022_ _tl2859829653_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41743_|
                                       _hd2859729650_)
                                      (___kont3902339024_ _tl2859829653_)
                                      (___match3923939240_
                                       _e2859629646_
                                       _hd2859729650_
                                       _tl2859829653_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3923939240_
                                       _e2859629646_
                                       _hd2859729650_
                                       _tl2859829653_))))
                              (_g2857629251_)))))))
                 (_parse-list28215_
                  (lambda (_body28395_)
                    (let* ((___stx3932839329_ _body28395_)
                           (_g2840128430_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3932839329_))))
                      (let ((___kont3933139332_
                             (lambda (_L28548_) (_parse128213_ _L28548_)))
                            (___kont3933339334_
                             (lambda (_L28500_ _L28502_ _L28503_)
                               (cons 'splice:
                                     (cons (_parse128213_ _L28503_)
                                           (cons (_parse-list28215_ _L28500_)
                                                 '())))))
                            (___kont3933539336_
                             (lambda (_L28458_ _L28460_)
                               (cons 'cons:
                                     (cons (_parse128213_ _L28460_)
                                           (cons (_parse-list28215_ _L28458_)
                                                 '())))))
                            (___kont3933739338_
                             (lambda ()
                               (if (gx#stx-null? _body28395_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28395_))
                                       (_parse128213_ _body28395_)
                                       (_parse-error28220_ _body28395_))))))
                        (let* ((___match3937739378_
                                (lambda (_e2842228448_
                                         _hd2842328452_
                                         _tl2842428455_)
                                  (let ((_L28458_ _tl2842428455_)
                                        (_L28460_ _hd2842328452_))
                                    (if (not (gx#ellipsis? _L28460_))
                                        (___kont3933539336_ _L28458_ _L28460_)
                                        (___kont3933739338_)))))
                               (___match3937139372_
                                (lambda (_e2841428480_
                                         _hd2841528484_
                                         _tl2841628487_
                                         _e2841728490_
                                         _hd2841828494_
                                         _tl2841928497_)
                                  (let ((_L28500_ _tl2841928497_)
                                        (_L28502_ _hd2841828494_)
                                        (_L28503_ _hd2841528484_))
                                    (if (gx#ellipsis? _L28502_)
                                        (___kont3933339334_
                                         _L28500_
                                         _L28502_
                                         _L28503_)
                                        (___match3937739378_
                                         _e2841428480_
                                         _hd2841528484_
                                         _tl2841628487_))))))
                          (if (gx#stx-pair? ___stx3932839329_)
                              (let ((_e2840428524_
                                     (gx#syntax-e ___stx3932839329_)))
                                (let ((_tl2840628531_ (##cdr _e2840428524_))
                                      (_hd2840528528_ (##car _e2840428524_)))
                                  (if (gx#stx-datum? _hd2840528528_)
                                      (let ((_e2840728534_
                                             (gx#stx-e _hd2840528528_)))
                                        (if (equal? _e2840728534_ '::)
                                            (if (gx#stx-pair? _tl2840628531_)
                                                (let ((_e2840828538_
                                                       (gx#syntax-e
                                                        _tl2840628531_)))
                                                  (let ((_tl2841028545_
                                                         (##cdr _e2840828538_))
                                                        (_hd2840928542_
                                                         (##car _e2840828538_)))
                                                    (if (gx#stx-null?
                                                         _tl2841028545_)
                                                        (___kont3933139332_
                                                         _hd2840928542_)
                                                        (___match3937139372_
                                                         _e2840428524_
                                                         _hd2840528528_
                                                         _tl2840628531_
                                                         _e2840828538_
                                                         _hd2840928542_
                                                         _tl2841028545_))))
                                                (___match3937739378_
                                                 _e2840428524_
                                                 _hd2840528528_
                                                 _tl2840628531_))
                                            (if (gx#stx-pair? _tl2840628531_)
                                                (let ((_e2841728490_
                                                       (gx#syntax-e
                                                        _tl2840628531_)))
                                                  (let ((_tl2841928497_
                                                         (##cdr _e2841728490_))
                                                        (_hd2841828494_
                                                         (##car _e2841728490_)))
                                                    (___match3937139372_
                                                     _e2840428524_
                                                     _hd2840528528_
                                                     _tl2840628531_
                                                     _e2841728490_
                                                     _hd2841828494_
                                                     _tl2841928497_)))
                                                (___match3937739378_
                                                 _e2840428524_
                                                 _hd2840528528_
                                                 _tl2840628531_))))
                                      (if (gx#stx-pair? _tl2840628531_)
                                          (let ((_e2841728490_
                                                 (gx#syntax-e _tl2840628531_)))
                                            (let ((_tl2841928497_
                                                   (##cdr _e2841728490_))
                                                  (_hd2841828494_
                                                   (##car _e2841728490_)))
                                              (___match3937139372_
                                               _e2840428524_
                                               _hd2840528528_
                                               _tl2840628531_
                                               _e2841728490_
                                               _hd2841828494_
                                               _tl2841928497_)))
                                          (___match3937739378_
                                           _e2840428524_
                                           _hd2840528528_
                                           _tl2840628531_)))))
                              (___kont3933739338_)))))))
                 (_parse-vector28216_
                  (lambda (_body28392_)
                    (if (_simple-vector?28217_ _body28392_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse128213_ _body28392_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list28215_ _body28392_) '())))))
                 (_simple-vector?28217_
                  (lambda (_body28329_)
                    (let* ((___stx3938039381_ _body28329_)
                           (_g2833328345_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3938039381_))))
                      (let ((___kont3938339384_
                             (lambda (_L28373_ _L28375_)
                               (if (not (gx#ellipsis? _L28375_))
                                   (_simple-vector?28217_ _L28373_)
                                   '#f)))
                            (___kont3938539386_
                             (lambda () (gx#stx-null? _body28329_))))
                        (if (gx#stx-pair? ___stx3938039381_)
                            (let ((_e2833728363_
                                   (gx#syntax-e ___stx3938039381_)))
                              (let ((_tl2833928370_ (##cdr _e2833728363_))
                                    (_hd2833828367_ (##car _e2833728363_)))
                                (___kont3938339384_
                                 _tl2833928370_
                                 _hd2833828367_)))
                            (___kont3938539386_))))))
                 (_parse-class-body28218_
                  (lambda (_body28238_)
                    (let _recur28241_ ((_rest28244_ _body28238_))
                      (let* ((___stx3939639397_ _rest28244_)
                             (_g2824828264_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3939639397_))))
                        (let ((___kont3939939400_
                               (lambda (_L28302_ _L28304_ _L28305_)
                                 (cons* _L28305_
                                        (_parse128213_ _L28304_)
                                        (_recur28241_ _L28302_))))
                              (___kont3940139402_
                               (lambda ()
                                 (if (gx#stx-null? _rest28244_)
                                     '()
                                     (_parse-error28220_ _rest28244_)))))
                          (let ((___match3941539416_
                                 (lambda (_e2825328282_
                                          _hd2825428286_
                                          _tl2825528289_
                                          _e2825628292_
                                          _hd2825728296_
                                          _tl2825828299_)
                                   (let ((_L28302_ _tl2825828299_)
                                         (_L28304_ _hd2825728296_)
                                         (_L28305_ _hd2825428286_))
                                     (if (gx#stx-keyword? _L28305_)
                                         (___kont3939939400_
                                          _L28302_
                                          _L28304_
                                          _L28305_)
                                         (___kont3940139402_))))))
                            (if (gx#stx-pair? ___stx3939639397_)
                                (let ((_e2825328282_
                                       (gx#syntax-e ___stx3939639397_)))
                                  (let ((_tl2825528289_ (##cdr _e2825328282_))
                                        (_hd2825428286_ (##car _e2825328282_)))
                                    (if (gx#stx-pair? _tl2825528289_)
                                        (let ((_e2825628292_
                                               (gx#syntax-e _tl2825528289_)))
                                          (let ((_tl2825828299_
                                                 (##cdr _e2825628292_))
                                                (_hd2825728296_
                                                 (##car _e2825628292_)))
                                            (___match3941539416_
                                             _e2825328282_
                                             _hd2825428286_
                                             _tl2825528289_
                                             _e2825628292_
                                             _hd2825728296_
                                             _tl2825828299_)))
                                        (___kont3940139402_))))
                                (___kont3940139402_))))))))
                 (_parse-qq28219_
                  (lambda (_hd28225_)
                    (let ((_g2822728234_
                           (lambda (_g2822828230_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2822828230_))))
                      (_g2822728234_ _hd28225_))))
                 (_parse-error28220_
                  (lambda (_hd28222_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28211_
                               (cons _match-stx28211_
                                     (cons _stx28209_ (cons _hd28222_ '())))
                               (cons _stx28209_ (cons _hd28222_ '())))))))
          (_parse128213_ _stx28209_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx29893_)
        (let ((_match-stx29896_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx29893_
           _match-stx29896_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g41745_
        (let ((_g41744_ (length _g41745_)))
          (cond ((##fx= _g41744_ 1)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g41745_))
                ((##fx= _g41744_ 2)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g41745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g41745_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28193_)
        (call-with-escape
         (lambda (_E28197_)
           (with-exception-handler
            (let ((_E!28200_ (current-exception-handler)))
              (lambda (_e28203_)
                (if (gx#syntax-error? _e28203_)
                    (_E28197_ '#f)
                    (_E!28200_ _e28203_))))
            (lambda ()
              (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28193_)
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26898_)
        (letrec ((_loop26901_
                  (lambda (_ptree27188_ _vars27190_ _K27191_)
                    (let* ((___stx3952639527_ _ptree27188_)
                           (_g2720427314_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3952639527_))))
                      (let ((___kont3952939530_
                             (lambda (_L27944_)
                               (let* ((___stx3943439435_ _L27944_)
                                      (_g2796128001_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3943439435_))))
                                 (let ((___kont3943739438_
                                        (lambda (_L28174_)
                                          (_loop26901_
                                           _L28174_
                                           _vars27190_
                                           _K27191_)))
                                       (___kont3943939440_
                                        (lambda (_L28141_)
                                          (_loop26901_
                                           _L28141_
                                           _vars27190_
                                           _K27191_)))
                                       (___kont3944139442_
                                        (lambda (_L28077_)
                                          (_loop26901_
                                           _L28077_
                                           _vars27190_
                                           _K27191_)))
                                       (___kont3944339444_
                                        (lambda () (_K27191_ _vars27190_))))
                                   (if (gx#stx-pair? ___stx3943439435_)
                                       (let ((_e2796428164_
                                              (gx#syntax-e ___stx3943439435_)))
                                         (let ((_tl2796628171_
                                                (##cdr _e2796428164_))
                                               (_hd2796528168_
                                                (##car _e2796428164_)))
                                           (if (gx#stx-null? _tl2796628171_)
                                               (___kont3943739438_
                                                _hd2796528168_)
                                               (if (gx#stx-pair?
                                                    _tl2796628171_)
                                                   (let ((_e2797128117_
                                                          (gx#syntax-e
                                                           _tl2796628171_)))
                                                     (let ((_tl2797328124_
                                                            (##cdr _e2797128117_))
                                                           (_hd2797228121_
                                                            (##car _e2797128117_)))
                                                       (if (gx#stx-datum?
                                                            _hd2797228121_)
                                                           (let ((_e2797428127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2797228121_)))
                     (if (equal? _e2797428127_ '=>:)
                         (if (gx#stx-pair? _tl2797328124_)
                             (let ((_e2797528131_
                                    (gx#syntax-e _tl2797328124_)))
                               (let ((_tl2797728138_ (##cdr _e2797528131_))
                                     (_hd2797628135_ (##car _e2797528131_)))
                                 (if (gx#stx-null? _tl2797728138_)
                                     (___kont3943939440_ _hd2797628135_)
                                     (___kont3944339444_))))
                             (___kont3944339444_))
                         (if (equal? _e2797428127_ '::)
                             (if (gx#stx-pair? _tl2797328124_)
                                 (let ((_e2798628043_
                                        (gx#syntax-e _tl2797328124_)))
                                   (let ((_tl2798828050_ (##cdr _e2798628043_))
                                         (_hd2798728047_
                                          (##car _e2798628043_)))
                                     (if (gx#stx-pair? _tl2798828050_)
                                         (let ((_e2798928053_
                                                (gx#syntax-e _tl2798828050_)))
                                           (let ((_tl2799128060_
                                                  (##cdr _e2798928053_))
                                                 (_hd2799028057_
                                                  (##car _e2798928053_)))
                                             (if (gx#stx-datum? _hd2799028057_)
                                                 (let ((_e2799228063_
                                                        (gx#stx-e
                                                         _hd2799028057_)))
                                                   (if (equal? _e2799228063_
                                                               '=>:)
                                                       (if (gx#stx-pair?
                                                            _tl2799128060_)
                                                           (let ((_e2799328067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2799128060_)))
                     (let ((_tl2799528074_ (##cdr _e2799328067_))
                           (_hd2799428071_ (##car _e2799328067_)))
                       (if (gx#stx-null? _tl2799528074_)
                           (___kont3944139442_ _hd2799428071_)
                           (___kont3944339444_))))
                   (___kont3944339444_))
               (___kont3944339444_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3944339444_))))
                                         (___kont3944339444_))))
                                 (___kont3944339444_))
                             (___kont3944339444_))))
                   (___kont3944339444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3944339444_)))))
                                       (___kont3944339444_))))))
                            (___kont3953139532_
                             (lambda (_L27831_ _L27833_)
                               (let* ((___stx3941839419_ _L27831_)
                                      (_g2784927861_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3941839419_))))
                                 (let ((___kont3942139422_
                                        (lambda (_L27889_ _L27891_)
                                          (_loop26901_
                                           _L27891_
                                           _vars27190_
                                           (lambda (_g2790327905_)
                                             (_loop26901_
                                              (cons _L27833_ _L27889_)
                                              _g2790327905_
                                              _K27191_)))))
                                       (___kont3942339424_
                                        (lambda () (_K27191_ _vars27190_))))
                                   (if (gx#stx-pair? ___stx3941839419_)
                                       (let ((_e2785327879_
                                              (gx#syntax-e ___stx3941839419_)))
                                         (let ((_tl2785527886_
                                                (##cdr _e2785327879_))
                                               (_hd2785427883_
                                                (##car _e2785327879_)))
                                           (___kont3942139422_
                                            _tl2785527886_
                                            _hd2785427883_)))
                                       (___kont3942339424_))))))
                            (___kont3953339534_
                             (lambda (_L27800_)
                               (_loop26901_ _L27800_ _vars27190_ _K27191_)))
                            (___kont3953539536_
                             (lambda (_L27746_ _L27748_)
                               (_loop26901_
                                _L27748_
                                _vars27190_
                                (lambda (_g2776327765_)
                                  (_loop26901_
                                   _L27746_
                                   _g2776327765_
                                   _K27191_)))))
                            (___kont3953739538_
                             (lambda (_L27682_ _L27684_)
                               (_loop26901_
                                _L27684_
                                _vars27190_
                                (lambda (_g2769927701_)
                                  (_loop26901_
                                   _L27682_
                                   _g2769927701_
                                   _K27191_)))))
                            (___kont3953939540_
                             (lambda (_L27627_)
                               (_loop26901_ _L27627_ _vars27190_ _K27191_)))
                            (___kont3954139542_
                             (lambda (_L27577_ _L27579_)
                               (_loop-vector26903_
                                _L27577_
                                _vars27190_
                                _K27191_)))
                            (___kont3954339544_
                             (lambda (_L27534_)
                               (_loop-vector26903_
                                _L27534_
                                _vars27190_
                                _K27191_)))
                            (___kont3954539546_
                             (lambda (_L27477_)
                               (_loop-class-list26905_
                                _L27477_
                                _vars27190_
                                _K27191_)))
                            (___kont3954739548_
                             (lambda (_L27418_ _L27420_)
                               (_loop26901_ _L27418_ _vars27190_ _K27191_)))
                            (___kont3954939550_
                             (lambda (_L27356_)
                               (if (find (lambda (_g2737127373_)
                                           (gx#bound-identifier=?
                                            _g2737127373_
                                            _L27356_))
                                         _vars27190_)
                                   (_K27191_ _vars27190_)
                                   (_K27191_ (cons _L27356_ _vars27190_)))))
                            (___kont3955139552_
                             (lambda () (_K27191_ _vars27190_))))
                        (let* ((___match3968339684_
                                (lambda (_e2726127557_
                                         _hd2726227561_
                                         _tl2726327564_
                                         _e2726427567_
                                         _hd2726527571_
                                         _tl2726627574_)
                                  (let ((_L27577_ _hd2726527571_)
                                        (_L27579_ _hd2726227561_))
                                    (if (or (gx#stx-eq? 'values: _L27579_)
                                            (gx#stx-eq? 'vector: _L27579_))
                                        (___kont3954139542_ _L27577_ _L27579_)
                                        (if (gx#stx-datum? _hd2726227561_)
                                            (let ((_e2727127510_
                                                   (gx#stx-e _hd2726227561_)))
                                              (if (equal? _e2727127510_
                                                          'struct:)
                                                  (___kont3955139552_)
                                                  (if (equal? _e2727127510_
                                                              'class:)
                                                      (___kont3955139552_)
                                                      (if (equal? _e2727127510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont3955139552_)
                  (if (equal? _e2727127510_ 'var:)
                      (___kont3954939550_ _hd2726527571_)
                      (___kont3955139552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont3955139552_))))))
                               (___match3957739578_
                                (lambda (_e2721627821_
                                         _hd2721727825_
                                         _tl2721827828_)
                                  (let ((_L27831_ _tl2721827828_)
                                        (_L27833_ _hd2721727825_))
                                    (if (or (gx#stx-eq? 'and: _L27833_)
                                            (gx#stx-eq? 'or: _L27833_))
                                        (___kont3953139532_ _L27831_ _L27833_)
                                        (if (gx#stx-datum? _hd2721727825_)
                                            (let ((_e2722327786_
                                                   (gx#stx-e _hd2721727825_)))
                                              (if (equal? _e2722327786_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2721827828_)
                                                      (let ((_e2722427790_
                                                             (gx#syntax-e
                                                              _tl2721827828_)))
                                                        (let ((_tl2722627797_
                                                               (##cdr _e2722427790_))
                                                              (_hd2722527794_
                                                               (##car _e2722427790_)))
                                                          (if (gx#stx-null?
                                                               _tl2722627797_)
                                                              (___kont3953339534_
                                                               _hd2722527794_)
                                                              (___kont3955139552_))))
                                                      (___kont3955139552_))
                                                  (if (equal? _e2722327786_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2721827828_)
                                                          (let ((_e2723327726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2721827828_)))
                    (let ((_tl2723527733_ (##cdr _e2723327726_))
                          (_hd2723427730_ (##car _e2723327726_)))
                      (if (gx#stx-pair? _tl2723527733_)
                          (let ((_e2723627736_ (gx#syntax-e _tl2723527733_)))
                            (let ((_tl2723827743_ (##cdr _e2723627736_))
                                  (_hd2723727740_ (##car _e2723627736_)))
                              (if (gx#stx-null? _tl2723827743_)
                                  (___kont3953539536_
                                   _hd2723727740_
                                   _hd2723427730_)
                                  (___kont3955139552_))))
                          (if (gx#stx-null? _tl2723527733_)
                              (___match3968339684_
                               _e2721627821_
                               _hd2721727825_
                               _tl2721827828_
                               _e2723327726_
                               _hd2723427730_
                               _tl2723527733_)
                              (___kont3955139552_)))))
                  (___kont3955139552_))
              (if (equal? _e2722327786_ 'splice:)
                  (if (gx#stx-pair? _tl2721827828_)
                      (let ((_e2724527662_ (gx#syntax-e _tl2721827828_)))
                        (let ((_tl2724727669_ (##cdr _e2724527662_))
                              (_hd2724627666_ (##car _e2724527662_)))
                          (if (gx#stx-pair? _tl2724727669_)
                              (let ((_e2724827672_
                                     (gx#syntax-e _tl2724727669_)))
                                (let ((_tl2725027679_ (##cdr _e2724827672_))
                                      (_hd2724927676_ (##car _e2724827672_)))
                                  (if (gx#stx-null? _tl2725027679_)
                                      (___kont3953739538_
                                       _hd2724927676_
                                       _hd2724627666_)
                                      (___kont3955139552_))))
                              (if (gx#stx-null? _tl2724727669_)
                                  (___match3968339684_
                                   _e2721627821_
                                   _hd2721727825_
                                   _tl2721827828_
                                   _e2724527662_
                                   _hd2724627666_
                                   _tl2724727669_)
                                  (___kont3955139552_)))))
                      (___kont3955139552_))
                  (if (equal? _e2722327786_ 'box:)
                      (if (gx#stx-pair? _tl2721827828_)
                          (let ((_e2725627617_ (gx#syntax-e _tl2721827828_)))
                            (let ((_tl2725827624_ (##cdr _e2725627617_))
                                  (_hd2725727621_ (##car _e2725627617_)))
                              (if (gx#stx-null? _tl2725827624_)
                                  (___kont3953939540_ _hd2725727621_)
                                  (___kont3955139552_))))
                          (___kont3955139552_))
                      (if (gx#stx-pair? _tl2721827828_)
                          (let ((_e2726427567_ (gx#syntax-e _tl2721827828_)))
                            (let ((_tl2726627574_ (##cdr _e2726427567_))
                                  (_hd2726527571_ (##car _e2726427567_)))
                              (if (gx#stx-null? _tl2726627574_)
                                  (___match3968339684_
                                   _e2721627821_
                                   _hd2721727825_
                                   _tl2721827828_
                                   _e2726427567_
                                   _hd2726527571_
                                   _tl2726627574_)
                                  (if (equal? _e2722327786_ 'struct:)
                                      (if (gx#stx-pair? _tl2726627574_)
                                          (let ((_e2727527524_
                                                 (gx#syntax-e _tl2726627574_)))
                                            (let ((_tl2727727531_
                                                   (##cdr _e2727527524_))
                                                  (_hd2727627528_
                                                   (##car _e2727527524_)))
                                              (if (gx#stx-null? _tl2727727531_)
                                                  (___kont3954339544_
                                                   _hd2727627528_)
                                                  (___kont3955139552_))))
                                          (___kont3955139552_))
                                      (if (equal? _e2722327786_ 'class:)
                                          (if (gx#stx-pair? _tl2726627574_)
                                              (let ((_e2728627467_
                                                     (gx#syntax-e
                                                      _tl2726627574_)))
                                                (let ((_tl2728827474_
                                                       (##cdr _e2728627467_))
                                                      (_hd2728727471_
                                                       (##car _e2728627467_)))
                                                  (if (gx#stx-null?
                                                       _tl2728827474_)
                                                      (___kont3954539546_
                                                       _hd2728727471_)
                                                      (___kont3955139552_))))
                                              (___kont3955139552_))
                                          (if (equal? _e2722327786_ 'apply:)
                                              (if (gx#stx-pair? _tl2726627574_)
                                                  (let ((_e2729827408_
                                                         (gx#syntax-e
                                                          _tl2726627574_)))
                                                    (let ((_tl2730027415_
                                                           (##cdr _e2729827408_))
                                                          (_hd2729927412_
                                                           (##car _e2729827408_)))
                                                      (if (gx#stx-null?
                                                           _tl2730027415_)
                                                          (___kont3954739548_
                                                           _hd2729927412_
                                                           _hd2726527571_)
                                                          (___kont3955139552_))))
                                                  (___kont3955139552_))
                                              (___kont3955139552_)))))))
                          (___kont3955139552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2721827828_)
                                                (let ((_e2726427567_
                                                       (gx#syntax-e
                                                        _tl2721827828_)))
                                                  (let ((_tl2726627574_
                                                         (##cdr _e2726427567_))
                                                        (_hd2726527571_
                                                         (##car _e2726427567_)))
                                                    (if (gx#stx-null?
                                                         _tl2726627574_)
                                                        (___match3968339684_
                                                         _e2721627821_
                                                         _hd2721727825_
                                                         _tl2721827828_
                                                         _e2726427567_
                                                         _hd2726527571_
                                                         _tl2726627574_)
                                                        (___kont3955139552_))))
                                                (___kont3955139552_))))))))
                          (if (gx#stx-pair? ___stx3952639527_)
                              (let ((_e2720727920_
                                     (gx#syntax-e ___stx3952639527_)))
                                (let ((_tl2720927927_ (##cdr _e2720727920_))
                                      (_hd2720827924_ (##car _e2720727920_)))
                                  (if (gx#stx-datum? _hd2720827924_)
                                      (let ((_e2721027930_
                                             (gx#stx-e _hd2720827924_)))
                                        (if (equal? _e2721027930_ '?:)
                                            (if (gx#stx-pair? _tl2720927927_)
                                                (let ((_e2721127934_
                                                       (gx#syntax-e
                                                        _tl2720927927_)))
                                                  (let ((_tl2721327941_
                                                         (##cdr _e2721127934_))
                                                        (_hd2721227938_
                                                         (##car _e2721127934_)))
                                                    (___kont3952939530_
                                                     _tl2721327941_)))
                                                (___match3957739578_
                                                 _e2720727920_
                                                 _hd2720827924_
                                                 _tl2720927927_))
                                            (___match3957739578_
                                             _e2720727920_
                                             _hd2720827924_
                                             _tl2720927927_)))
                                      (___match3957739578_
                                       _e2720727920_
                                       _hd2720827924_
                                       _tl2720927927_))))
                              (___kont3955139552_)))))))
                 (_loop-vector26903_
                  (lambda (_body27064_ _vars27066_ _K27067_)
                    (let* ((___stx3978439785_ _body27064_)
                           (_g2707027093_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3978439785_))))
                      (let ((___kont3978739788_
                             (lambda (_L27170_)
                               (_loop-list26904_
                                _L27170_
                                _vars27066_
                                _K27067_)))
                            (___kont3978939790_
                             (lambda (_L27124_)
                               (_loop26901_ _L27124_ _vars27066_ _K27067_))))
                        (if (gx#stx-pair? ___stx3978439785_)
                            (let ((_e2707327146_
                                   (gx#syntax-e ___stx3978439785_)))
                              (let ((_tl2707527153_ (##cdr _e2707327146_))
                                    (_hd2707427150_ (##car _e2707327146_)))
                                (if (gx#stx-datum? _hd2707427150_)
                                    (let ((_e2707627156_
                                           (gx#stx-e _hd2707427150_)))
                                      (if (equal? _e2707627156_ 'simple:)
                                          (if (gx#stx-pair? _tl2707527153_)
                                              (let ((_e2707727160_
                                                     (gx#syntax-e
                                                      _tl2707527153_)))
                                                (let ((_tl2707927167_
                                                       (##cdr _e2707727160_))
                                                      (_hd2707827164_
                                                       (##car _e2707727160_)))
                                                  (if (gx#stx-null?
                                                       _tl2707927167_)
                                                      (___kont3978739788_
                                                       _hd2707827164_)
                                                      (_g2707027093_))))
                                              (_g2707027093_))
                                          (if (equal? _e2707627156_ 'list:)
                                              (if (gx#stx-pair? _tl2707527153_)
                                                  (let ((_e2708527114_
                                                         (gx#syntax-e
                                                          _tl2707527153_)))
                                                    (let ((_tl2708727121_
                                                           (##cdr _e2708527114_))
                                                          (_hd2708627118_
                                                           (##car _e2708527114_)))
                                                      (if (gx#stx-null?
                                                           _tl2708727121_)
                                                          (___kont3978939790_
                                                           _hd2708627118_)
                                                          (_g2707027093_))))
                                                  (_g2707027093_))
                                              (_g2707027093_))))
                                    (_g2707027093_))))
                            (_g2707027093_))))))
                 (_loop-list26904_
                  (lambda (_rest26994_ _vars26996_ _K26997_)
                    (let* ((___stx3983439835_ _rest26994_)
                           (_g2700027012_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3983439835_))))
                      (let ((___kont3983739838_
                             (lambda (_L27040_ _L27042_)
                               (_loop26901_
                                _L27042_
                                _vars26996_
                                (lambda (_g2705427056_)
                                  (_loop-list26904_
                                   _L27040_
                                   _g2705427056_
                                   _K26997_)))))
                            (___kont3983939840_
                             (lambda () (_K26997_ _vars26996_))))
                        (if (gx#stx-pair? ___stx3983439835_)
                            (let ((_e2700427030_
                                   (gx#syntax-e ___stx3983439835_)))
                              (let ((_tl2700627037_ (##cdr _e2700427030_))
                                    (_hd2700527034_ (##car _e2700427030_)))
                                (___kont3983739838_
                                 _tl2700627037_
                                 _hd2700527034_)))
                            (___kont3983939840_))))))
                 (_loop-class-list26905_
                  (lambda (_rest26907_ _vars26909_ _K26910_)
                    (let* ((___stx3985039851_ _rest26907_)
                           (_g2691326928_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3985039851_))))
                      (let ((___kont3985339854_
                             (lambda (_L26966_ _L26968_)
                               (_loop26901_
                                _L26968_
                                _vars26909_
                                (lambda (_g2698426986_)
                                  (_loop-class-list26905_
                                   _L26966_
                                   _g2698426986_
                                   _K26910_)))))
                            (___kont3985539856_
                             (lambda () (_K26910_ _vars26909_))))
                        (if (gx#stx-pair? ___stx3985039851_)
                            (let ((_e2691726946_
                                   (gx#syntax-e ___stx3985039851_)))
                              (let ((_tl2691926953_ (##cdr _e2691726946_))
                                    (_hd2691826950_ (##car _e2691726946_)))
                                (if (gx#stx-pair? _tl2691926953_)
                                    (let ((_e2692026956_
                                           (gx#syntax-e _tl2691926953_)))
                                      (let ((_tl2692226963_
                                             (##cdr _e2692026956_))
                                            (_hd2692126960_
                                             (##car _e2692026956_)))
                                        (___kont3985339854_
                                         _tl2692226963_
                                         _hd2692126960_)))
                                    (___kont3985539856_))))
                            (___kont3985539856_)))))))
          (_loop26901_ _ptree26898_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23481_ _tgt23483_ _ptree23484_ _K23485_ _E23486_)
        (letrec ((_generate123488_
                  (lambda (_tgt25111_ _ptree25113_ _K25114_ _E25115_)
                    (let* ((_g2511725125_
                            (lambda (_g2511825121_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2511825121_)))
                           (_g2511626894_
                            (lambda (_g2511825129_)
                              ((lambda (_L25132_)
                                 (let ()
                                   (let* ((___stx4008640087_ _ptree25113_)
                                          (_g2515925301_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4008640087_))))
                                     (let ((___kont4008940090_
                                            (lambda (_L26609_ _L26611_)
                                              (let* ((___stx4000440005_
                                                      _L26609_)
                                                     (_g2662826663_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4000440005_))))
                                                (let ((___kont4000740008_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26611_ (cons _L25132_ '())))
                             (cons _K25114_ (cons _E25115_ '()))))))
              (___kont4000940010_
               (lambda (_L26864_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26611_ (cons _L25132_ '())))
                             (cons (_generate123488_
                                    _tgt25111_
                                    _L26864_
                                    _K25114_
                                    _E25115_)
                                   (cons _E25115_ '()))))))
              (___kont4001140012_
               (lambda (_L26802_)
                 (let* ((_g2681626824_
                         (lambda (_g2681726820_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2681726820_)))
                        (_g2681526843_
                         (lambda (_g2681726828_)
                           ((lambda (_L26831_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L26831_
                                                        (cons (cons _L26611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25132_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L26831_
                                                              (cons (_generate123488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L26831_
                             _L26802_
                             _K25114_
                             _E25115_)
                            (cons _E25115_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2681726828_))))
                   (_g2681526843_ (gx#genident 'e)))))
              (___kont4001340014_
               (lambda (_L26718_ _L26720_)
                 (let* ((_g2674026748_
                         (lambda (_g2674126744_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2674126744_)))
                        (_g2673926767_
                         (lambda (_g2674126752_)
                           ((lambda (_L26755_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26611_
                                                        (cons _L25132_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26720_ (cons _L25132_ '()))
                                        '()))
                            '())
                      (cons (_generate123488_
                             _L26755_
                             _L26718_
                             _K25114_
                             _E25115_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25115_ '()))))))
                            _g2674126752_))))
                   (_g2673926767_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2662526875_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4000440005_)
                                                               (let ((_e2663126854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4000440005_)))
                         (let ((_tl2663326861_ (##cdr _e2663126854_))
                               (_hd2663226858_ (##car _e2663126854_)))
                           (if (gx#stx-null? _tl2663326861_)
                               (___kont4000940010_ _hd2663226858_)
                               (if (gx#stx-datum? _hd2663226858_)
                                   (let ((_e2663826788_
                                          (gx#stx-e _hd2663226858_)))
                                     (if (equal? _e2663826788_ '=>:)
                                         (if (gx#stx-pair? _tl2663326861_)
                                             (let ((_e2663926792_
                                                    (gx#syntax-e
                                                     _tl2663326861_)))
                                               (let ((_tl2664126799_
                                                      (##cdr _e2663926792_))
                                                     (_hd2664026796_
                                                      (##car _e2663926792_)))
                                                 (if (gx#stx-null?
                                                      _tl2664126799_)
                                                     (___kont4001140012_
                                                      _hd2664026796_)
                                                     (_g2662826663_))))
                                             (_g2662826663_))
                                         (if (equal? _e2663826788_ '::)
                                             (if (gx#stx-pair? _tl2663326861_)
                                                 (let ((_e2664826684_
                                                        (gx#syntax-e
                                                         _tl2663326861_)))
                                                   (let ((_tl2665026691_
                                                          (##cdr _e2664826684_))
                                                         (_hd2664926688_
                                                          (##car _e2664826684_)))
                                                     (if (gx#stx-pair?
                                                          _tl2665026691_)
                                                         (let ((_e2665126694_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2665026691_)))
                   (let ((_tl2665326701_ (##cdr _e2665126694_))
                         (_hd2665226698_ (##car _e2665126694_)))
                     (if (gx#stx-datum? _hd2665226698_)
                         (let ((_e2665426704_ (gx#stx-e _hd2665226698_)))
                           (if (equal? _e2665426704_ '=>:)
                               (if (gx#stx-pair? _tl2665326701_)
                                   (let ((_e2665526708_
                                          (gx#syntax-e _tl2665326701_)))
                                     (let ((_tl2665726715_
                                            (##cdr _e2665526708_))
                                           (_hd2665626712_
                                            (##car _e2665526708_)))
                                       (if (gx#stx-null? _tl2665726715_)
                                           (___kont4001340014_
                                            _hd2665626712_
                                            _hd2664926688_)
                                           (_g2662826663_))))
                                   (_g2662826663_))
                               (_g2662826663_)))
                         (_g2662826663_))))
                 (_g2662826663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2662826663_))
                                             (_g2662826663_))))
                                   (_g2662826663_)))))
                       (_g2662826663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4000440005_)
                                                        (___kont4000740008_)
                                                        (_g2662526875_)))))))
                                           (___kont4009140092_
                                            (lambda (_L26506_)
                                              (let* ((___stx3998839989_
                                                      _L26506_)
                                                     (_g2651926531_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3998839989_))))
                                                (let ((___kont3999139992_
                                                       (lambda (_L26559_
                                                                _L26561_)
                                                         (_generate123488_
                                                          _tgt25111_
                                                          _L26561_
                                                          (_generate123488_
                                                           _tgt25111_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26559_)
                   _K25114_
                   _E25115_)
                  _E25115_)))
              (___kont3999339994_ (lambda () _K25114_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3998839989_)
                                                      (let ((_e2652326549_
                                                             (gx#syntax-e
                                                              ___stx3998839989_)))
                                                        (let ((_tl2652526556_
                                                               (##cdr _e2652326549_))
                                                              (_hd2652426553_
                                                               (##car _e2652326549_)))
                                                          (___kont3999139992_
                                                           _tl2652526556_
                                                           _hd2652426553_)))
                                                      (___kont3999339994_))))))
                                           (___kont4009340094_
                                            (lambda (_L26413_)
                                              (let* ((___stx3997239973_
                                                      _L26413_)
                                                     (_g2642626438_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3997239973_))))
                                                (let ((___kont3997539976_
                                                       (lambda (_L26466_
                                                                _L26468_)
                                                         (_generate123488_
                                                          _tgt25111_
                                                          _L26468_
                                                          _K25114_
                                                          (_generate123488_
                                                           _tgt25111_
                                                           (cons 'or: _L26466_)
                                                           _K25114_
                                                           _E25115_))))
                                                      (___kont3997739978_
                                                       (lambda () _E25115_)))
                                                  (if (gx#stx-pair?
                                                       ___stx3997239973_)
                                                      (let ((_e2643026456_
                                                             (gx#syntax-e
                                                              ___stx3997239973_)))
                                                        (let ((_tl2643226463_
                                                               (##cdr _e2643026456_))
                                                              (_hd2643126460_
                                                               (##car _e2643026456_)))
                                                          (___kont3997539976_
                                                           _tl2643226463_
                                                           _hd2643126460_)))
                                                      (___kont3997739978_))))))
                                           (___kont4009540096_
                                            (lambda (_L26378_)
                                              (_generate123488_
                                               _tgt25111_
                                               _L26378_
                                               _E25115_
                                               _K25114_)))
                                           (___kont4009740098_
                                            (lambda (_L26260_ _L26262_)
                                              (let* ((_g2627926294_
                                                      (lambda (_g2628026290_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2628026290_)))
                                                     (_g2627826343_
                                                      (lambda (_g2628026298_)
                                                        (if (gx#stx-pair?
                                                             _g2628026298_)
                                                            (let ((_e2628326301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2628026298_)))
                      (let ((_hd2628426305_ (##car _e2628326301_))
                            (_tl2628526308_ (##cdr _e2628326301_)))
                        (if (gx#stx-pair? _tl2628526308_)
                            (let ((_e2628626311_ (gx#syntax-e _tl2628526308_)))
                              (let ((_hd2628726315_ (##car _e2628626311_))
                                    (_tl2628826318_ (##cdr _e2628626311_)))
                                (if (gx#stx-null? _tl2628826318_)
                                    ((lambda (_L26321_ _L26323_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25132_ '()))
                                                     (cons (let ((_hd-pat26339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26262_))
                         (_tl-pat26341_ (gx#stx-e _L26260_)))
                     (if (and (equal? _hd-pat26339_ '(any:))
                              (equal? _tl-pat26341_ '(any:)))
                         _K25114_
                         (if (equal? _tl-pat26341_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26323_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25132_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123488_
                                                _L26323_
                                                _L26262_
                                                _K25114_
                                                _E25115_)
                                               '())))
                             (if (equal? _hd-pat26339_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26321_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25132_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (_generate123488_
                                                    _L26321_
                                                    _L26260_
                                                    _K25114_
                                                    _E25115_)
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26323_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25132_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26321_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25132_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (_generate123488_
                                                    _L26323_
                                                    _L26262_
                                                    (_generate123488_
                                                     _L26321_
                                                     _L26260_
                                                     _K25114_
                                                     _E25115_)
                                                    _E25115_)
                                                   '())))))))
                   (cons _E25115_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2628726315_
                                     _hd2628426305_)
                                    (_g2627926294_ _g2628026298_))))
                            (_g2627926294_ _g2628026298_))))
                    (_g2627926294_ _g2628026298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2627826343_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
                                           (___kont4009940100_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25132_ '()))
                  (cons _K25114_ (cons _E25115_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4010140102_
                                            (lambda (_L26176_ _L26178_)
                                              (_generate-splice23490_
                                               _tgt25111_
                                               _L26178_
                                               _L26176_
                                               _K25114_
                                               _E25115_)))
                                           (___kont4010340104_
                                            (lambda (_L26090_)
                                              (let* ((_g2610426112_
                                                      (lambda (_g2610526108_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2610526108_)))
                                                     (_g2610326131_
                                                      (lambda (_g2610526116_)
                                                        ((lambda (_L26119_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25132_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26119_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25132_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_generate123488_
                                                          _L26119_
                                                          _L26090_
                                                          _K25114_
                                                          _E25115_)
                                                         '())))
                                       (cons _E25115_ '()))))))
                 _g2610526116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2610326131_
                                                 (gx#genident 'e)))))
                                           (___kont4010540106_
                                            (lambda (_L25895_)
                                              (let* ((___stx3992239923_
                                                      _L25895_)
                                                     (_g2591025933_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3992239923_))))
                                                (let ((___kont3992539926_
                                                       (lambda (_L26010_)
                                                         (let* ((_g2602426032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2602526028_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2602526028_)))
                        (_g2602326051_
                         (lambda (_g2602526036_)
                           ((lambda (_L26039_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26039_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector23491_
                                                   _tgt25111_
                                                   _L26010_
                                                   '0
                                                   _K25114_
                                                   _E25115_)
                                                  (cons _E25115_ '()))))))
                            _g2602526036_))))
                   (_g2602326051_ (gx#stx-length _L26010_)))))
              (___kont3992739928_
               (lambda (_L25964_)
                 (_generate-list-vector23492_
                  _tgt25111_
                  _L25964_
                  'values->list
                  _K25114_
                  _E25115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3992239923_)
                                                      (let ((_e2591325986_
                                                             (gx#syntax-e
                                                              ___stx3992239923_)))
                                                        (let ((_tl2591525993_
                                                               (##cdr _e2591325986_))
                                                              (_hd2591425990_
                                                               (##car _e2591325986_)))
                                                          (if (gx#stx-datum?
                                                               _hd2591425990_)
                                                              (let ((_e2591625996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2591425990_)))
                        (if (equal? _e2591625996_ 'simple:)
                            (if (gx#stx-pair? _tl2591525993_)
                                (let ((_e2591726000_
                                       (gx#syntax-e _tl2591525993_)))
                                  (let ((_tl2591926007_ (##cdr _e2591726000_))
                                        (_hd2591826004_ (##car _e2591726000_)))
                                    (if (gx#stx-null? _tl2591926007_)
                                        (___kont3992539926_ _hd2591826004_)
                                        (_g2591025933_))))
                                (_g2591025933_))
                            (if (equal? _e2591625996_ 'list:)
                                (if (gx#stx-pair? _tl2591525993_)
                                    (let ((_e2592525954_
                                           (gx#syntax-e _tl2591525993_)))
                                      (let ((_tl2592725961_
                                             (##cdr _e2592525954_))
                                            (_hd2592625958_
                                             (##car _e2592525954_)))
                                        (if (gx#stx-null? _tl2592725961_)
                                            (___kont3992739928_ _hd2592625958_)
                                            (_g2591025933_))))
                                    (_g2591025933_))
                                (_g2591025933_))))
                      (_g2591025933_))))
              (_g2591025933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4010740108_
                                            (lambda (_L25700_)
                                              (let* ((___stx3987239873_
                                                      _L25700_)
                                                     (_g2571525738_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3987239873_))))
                                                (let ((___kont3987539876_
                                                       (lambda (_L25815_)
                                                         (let* ((_g2582925837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2583025833_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2583025833_)))
                        (_g2582825856_
                         (lambda (_g2583025841_)
                           ((lambda (_L25844_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25132_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25132_ '()))
                                  (cons _L25844_ '())))
                      (cons (_generate-simple-vector23491_
                             _tgt25111_
                             _L25815_
                             '0
                             _K25114_
                             _E25115_)
                            (cons _E25115_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25115_ '()))))))
                            _g2583025841_))))
                   (_g2582825856_ (gx#stx-length _L25815_)))))
              (___kont3987739878_
               (lambda (_L25769_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25132_ '()))
                             (cons (_generate-list-vector23492_
                                    _tgt25111_
                                    _L25769_
                                    'vector->list
                                    _K25114_
                                    _E25115_)
                                   (cons _E25115_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3987239873_)
                                                      (let ((_e2571825791_
                                                             (gx#syntax-e
                                                              ___stx3987239873_)))
                                                        (let ((_tl2572025798_
                                                               (##cdr _e2571825791_))
                                                              (_hd2571925795_
                                                               (##car _e2571825791_)))
                                                          (if (gx#stx-datum?
                                                               _hd2571925795_)
                                                              (let ((_e2572125801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2571925795_)))
                        (if (equal? _e2572125801_ 'simple:)
                            (if (gx#stx-pair? _tl2572025798_)
                                (let ((_e2572225805_
                                       (gx#syntax-e _tl2572025798_)))
                                  (let ((_tl2572425812_ (##cdr _e2572225805_))
                                        (_hd2572325809_ (##car _e2572225805_)))
                                    (if (gx#stx-null? _tl2572425812_)
                                        (___kont3987539876_ _hd2572325809_)
                                        (_g2571525738_))))
                                (_g2571525738_))
                            (if (equal? _e2572125801_ 'list:)
                                (if (gx#stx-pair? _tl2572025798_)
                                    (let ((_e2573025759_
                                           (gx#syntax-e _tl2572025798_)))
                                      (let ((_tl2573225766_
                                             (##cdr _e2573025759_))
                                            (_hd2573125763_
                                             (##car _e2573025759_)))
                                        (if (gx#stx-null? _tl2573225766_)
                                            (___kont3987739878_ _hd2573125763_)
                                            (_g2571525738_))))
                                    (_g2571525738_))
                                (_g2571525738_))))
                      (_g2571525738_))))
              (_g2571525738_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4010940110_
                                            (lambda (_L25651_ _L25653_)
                                              (_generate-struct23493_
                                               (gx#stx-e _L25653_)
                                               _tgt25111_
                                               _L25651_
                                               _K25114_
                                               _E25115_)))
                                           (___kont4011140112_
                                            (lambda (_L25592_ _L25594_)
                                              (_generate-class23494_
                                               (gx#stx-e _L25594_)
                                               _tgt25111_
                                               _L25592_
                                               _K25114_
                                               _E25115_)))
                                           (___kont4011340114_
                                            (lambda (_L25495_)
                                              (let* ((_g2550925517_
                                                      (lambda (_g2551025513_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2551025513_)))
                                                     (_g2550825536_
                                                      (lambda (_g2551025521_)
                                                        ((lambda (_L25524_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25524_
                                       (cons _L25132_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25495_ '()))
                                                   '())))
                                 (cons _K25114_ (cons _E25115_ '()))))))
                 _g2551025521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2550825536_
                                                 (let ((_e25540_
                                                        (gx#stx-e _L25495_)))
                                                   (if (or (symbol? _e25540_)
                                                           (keyword? _e25540_)
                                                           (immediate?
                                                            _e25540_))
                                                       '##eq?
                                                       (if (number? _e25540_)
                                                           'eqv?
                                                           'equal?)))))))
                                           (___kont4011540116_
                                            (lambda (_L25415_ _L25417_)
                                              (let* ((_g2543325441_
                                                      (lambda (_g2543425437_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2543425437_)))
                                                     (_g2543225460_
                                                      (lambda (_g2543425445_)
                                                        ((lambda (_L25448_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25448_
                                             (cons (cons _L25417_
                                                         (cons _L25132_ '()))
                                                   '()))
                                       '())
                                 (cons (_generate123488_
                                        _L25448_
                                        _L25415_
                                        _K25114_
                                        _E25115_)
                                       '())))))
                 _g2543425445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2543225460_
                                                 (gx#genident 'e)))))
                                           (___kont4011740118_
                                            (lambda (_L25357_)
                                              (cons 'let
                                                    (cons (cons (cons _L25357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25132_ '()))
                        '())
                  (cons _K25114_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4011940120_
                                            (lambda () _K25114_)))
                                       (if (gx#stx-pair? ___stx4008640087_)
                                           (let ((_e2516326585_
                                                  (gx#syntax-e
                                                   ___stx4008640087_)))
                                             (let ((_tl2516526592_
                                                    (##cdr _e2516326585_))
                                                   (_hd2516426589_
                                                    (##car _e2516326585_)))
                                               (if (gx#stx-datum?
                                                    _hd2516426589_)
                                                   (let ((_e2516626595_
                                                          (gx#stx-e
                                                           _hd2516426589_)))
                                                     (if (equal? _e2516626595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2516526592_)
                     (let ((_e2516726599_ (gx#syntax-e _tl2516526592_)))
                       (let ((_tl2516926606_ (##cdr _e2516726599_))
                             (_hd2516826603_ (##car _e2516726599_)))
                         (___kont4008940090_ _tl2516926606_ _hd2516826603_)))
                     (_g2515925301_))
                 (if (equal? _e2516626595_ 'and:)
                     (___kont4009140092_ _tl2516526592_)
                     (if (equal? _e2516626595_ 'or:)
                         (___kont4009340094_ _tl2516526592_)
                         (if (equal? _e2516626595_ 'not:)
                             (if (gx#stx-pair? _tl2516526592_)
                                 (let ((_e2518526368_
                                        (gx#syntax-e _tl2516526592_)))
                                   (let ((_tl2518726375_ (##cdr _e2518526368_))
                                         (_hd2518626372_
                                          (##car _e2518526368_)))
                                     (if (gx#stx-null? _tl2518726375_)
                                         (___kont4009540096_ _hd2518626372_)
                                         (_g2515925301_))))
                                 (_g2515925301_))
                             (if (equal? _e2516626595_ 'cons:)
                                 (if (gx#stx-pair? _tl2516526592_)
                                     (let ((_e2519426240_
                                            (gx#syntax-e _tl2516526592_)))
                                       (let ((_tl2519626247_
                                              (##cdr _e2519426240_))
                                             (_hd2519526244_
                                              (##car _e2519426240_)))
                                         (if (gx#stx-pair? _tl2519626247_)
                                             (let ((_e2519726250_
                                                    (gx#syntax-e
                                                     _tl2519626247_)))
                                               (let ((_tl2519926257_
                                                      (##cdr _e2519726250_))
                                                     (_hd2519826254_
                                                      (##car _e2519726250_)))
                                                 (if (gx#stx-null?
                                                      _tl2519926257_)
                                                     (___kont4009740098_
                                                      _hd2519826254_
                                                      _hd2519526244_)
                                                     (_g2515925301_))))
                                             (_g2515925301_))))
                                     (_g2515925301_))
                                 (if (equal? _e2516626595_ 'null:)
                                     (if (gx#stx-null? _tl2516526592_)
                                         (___kont4009940100_)
                                         (_g2515925301_))
                                     (if (equal? _e2516626595_ 'splice:)
                                         (if (gx#stx-pair? _tl2516526592_)
                                             (let ((_e2521026156_
                                                    (gx#syntax-e
                                                     _tl2516526592_)))
                                               (let ((_tl2521226163_
                                                      (##cdr _e2521026156_))
                                                     (_hd2521126160_
                                                      (##car _e2521026156_)))
                                                 (if (gx#stx-pair?
                                                      _tl2521226163_)
                                                     (let ((_e2521326166_
                                                            (gx#syntax-e
                                                             _tl2521226163_)))
                                                       (let ((_tl2521526173_
                                                              (##cdr _e2521326166_))
                                                             (_hd2521426170_
                                                              (##car _e2521326166_)))
                                                         (if (gx#stx-null?
                                                              _tl2521526173_)
                                                             (___kont4010140102_
                                                              _hd2521426170_
                                                              _hd2521126160_)
                                                             (_g2515925301_))))
                                                     (_g2515925301_))))
                                             (_g2515925301_))
                                         (if (equal? _e2516626595_ 'box:)
                                             (if (gx#stx-pair? _tl2516526592_)
                                                 (let ((_e2522126080_
                                                        (gx#syntax-e
                                                         _tl2516526592_)))
                                                   (let ((_tl2522326087_
                                                          (##cdr _e2522126080_))
                                                         (_hd2522226084_
                                                          (##car _e2522126080_)))
                                                     (if (gx#stx-null?
                                                          _tl2522326087_)
                                                         (___kont4010340104_
                                                          _hd2522226084_)
                                                         (_g2515925301_))))
                                                 (_g2515925301_))
                                             (if (equal? _e2516626595_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2516526592_)
                                                     (let ((_e2522925885_
                                                            (gx#syntax-e
                                                             _tl2516526592_)))
                                                       (let ((_tl2523125892_
                                                              (##cdr _e2522925885_))
                                                             (_hd2523025889_
                                                              (##car _e2522925885_)))
                                                         (if (gx#stx-null?
                                                              _tl2523125892_)
                                                             (___kont4010540106_
                                                              _hd2523025889_)
                                                             (_g2515925301_))))
                                                     (_g2515925301_))
                                                 (if (equal? _e2516626595_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2516526592_)
                                                         (let ((_e2523725690_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2516526592_)))
                   (let ((_tl2523925697_ (##cdr _e2523725690_))
                         (_hd2523825694_ (##car _e2523725690_)))
                     (if (gx#stx-null? _tl2523925697_)
                         (___kont4010740108_ _hd2523825694_)
                         (_g2515925301_))))
                 (_g2515925301_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2516626595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2516526592_)
                     (let ((_e2524625631_ (gx#syntax-e _tl2516526592_)))
                       (let ((_tl2524825638_ (##cdr _e2524625631_))
                             (_hd2524725635_ (##car _e2524625631_)))
                         (if (gx#stx-pair? _tl2524825638_)
                             (let ((_e2524925641_
                                    (gx#syntax-e _tl2524825638_)))
                               (let ((_tl2525125648_ (##cdr _e2524925641_))
                                     (_hd2525025645_ (##car _e2524925641_)))
                                 (if (gx#stx-null? _tl2525125648_)
                                     (___kont4010940110_
                                      _hd2525025645_
                                      _hd2524725635_)
                                     (_g2515925301_))))
                             (_g2515925301_))))
                     (_g2515925301_))
                 (if (equal? _e2516626595_ 'class:)
                     (if (gx#stx-pair? _tl2516526592_)
                         (let ((_e2525825572_ (gx#syntax-e _tl2516526592_)))
                           (let ((_tl2526025579_ (##cdr _e2525825572_))
                                 (_hd2525925576_ (##car _e2525825572_)))
                             (if (gx#stx-pair? _tl2526025579_)
                                 (let ((_e2526125582_
                                        (gx#syntax-e _tl2526025579_)))
                                   (let ((_tl2526325589_ (##cdr _e2526125582_))
                                         (_hd2526225586_
                                          (##car _e2526125582_)))
                                     (if (gx#stx-null? _tl2526325589_)
                                         (___kont4011140112_
                                          _hd2526225586_
                                          _hd2525925576_)
                                         (_g2515925301_))))
                                 (_g2515925301_))))
                         (_g2515925301_))
                     (if (equal? _e2516626595_ 'datum:)
                         (if (gx#stx-pair? _tl2516526592_)
                             (let ((_e2526925485_
                                    (gx#syntax-e _tl2516526592_)))
                               (let ((_tl2527125492_ (##cdr _e2526925485_))
                                     (_hd2527025489_ (##car _e2526925485_)))
                                 (if (gx#stx-null? _tl2527125492_)
                                     (___kont4011340114_ _hd2527025489_)
                                     (_g2515925301_))))
                             (_g2515925301_))
                         (if (equal? _e2516626595_ 'apply:)
                             (if (gx#stx-pair? _tl2516526592_)
                                 (let ((_e2527825395_
                                        (gx#syntax-e _tl2516526592_)))
                                   (let ((_tl2528025402_ (##cdr _e2527825395_))
                                         (_hd2527925399_
                                          (##car _e2527825395_)))
                                     (if (gx#stx-pair? _tl2528025402_)
                                         (let ((_e2528125405_
                                                (gx#syntax-e _tl2528025402_)))
                                           (let ((_tl2528325412_
                                                  (##cdr _e2528125405_))
                                                 (_hd2528225409_
                                                  (##car _e2528125405_)))
                                             (if (gx#stx-null? _tl2528325412_)
                                                 (___kont4011540116_
                                                  _hd2528225409_
                                                  _hd2527925399_)
                                                 (_g2515925301_))))
                                         (_g2515925301_))))
                                 (_g2515925301_))
                             (if (equal? _e2516626595_ 'var:)
                                 (if (gx#stx-pair? _tl2516526592_)
                                     (let ((_e2528925347_
                                            (gx#syntax-e _tl2516526592_)))
                                       (let ((_tl2529125354_
                                              (##cdr _e2528925347_))
                                             (_hd2529025351_
                                              (##car _e2528925347_)))
                                         (if (gx#stx-null? _tl2529125354_)
                                             (___kont4011740118_
                                              _hd2529025351_)
                                             (_g2515925301_))))
                                     (_g2515925301_))
                                 (if (equal? _e2516626595_ 'any:)
                                     (if (gx#stx-null? _tl2516526592_)
                                         (___kont4011940120_)
                                         (_g2515925301_))
                                     (_g2515925301_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2515925301_))))
                                           (_g2515925301_))))))
                               _g2511825129_))))
                      (_g2511626894_ _tgt25111_))))
                 (_generate-splice23490_
                  (lambda (_tgt24483_ _hd24485_ _rest24486_ _K24487_ _E24488_)
                    (let* ((_g2449024507_
                            (lambda (_g2449124503_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2449124503_)))
                           (_g2448925107_
                            (lambda (_g2449124511_)
                              (if (gx#stx-pair/null? _g2449124511_)
                                  (let ((_g41746_
                                         (gx#syntax-split-splice
                                          _g2449124511_
                                          '0)))
                                    (begin
                                      (let ((_g41747_
                                             (if (##values? _g41746_)
                                                 (##vector-length _g41746_)
                                                 1)))
                                        (if (not (##fx= _g41747_ 2))
                                            (error "Context expects 2 values"
                                                   _g41747_)))
                                      (let ((_target2449324514_
                                             (##vector-ref _g41746_ 0))
                                            (_tl2449524517_
                                             (##vector-ref _g41746_ 1)))
                                        (if (gx#stx-null? _tl2449524517_)
                                            (letrec ((_loop2449624520_
                                                      (lambda (_hd2449424524_
                                                               _var2450024527_)
                                                        (if (gx#stx-pair?
                                                             _hd2449424524_)
                                                            (let ((_e2449724530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2449424524_)))
                      (let ((_lp-hd2449824534_ (##car _e2449724530_))
                            (_lp-tl2449924537_ (##cdr _e2449724530_)))
                        (_loop2449624520_
                         _lp-tl2449924537_
                         (cons _lp-hd2449824534_ _var2450024527_))))
                    (let ((_var2450124540_ (reverse _var2450024527_)))
                      ((lambda (_L24544_)
                         (let ()
                           (let* ((_g2456024577_
                                   (lambda (_g2456124573_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2456124573_)))
                                  (_g2455925095_
                                   (lambda (_g2456124581_)
                                     (if (gx#stx-pair/null? _g2456124581_)
                                         (let ((_g41748_
                                                (gx#syntax-split-splice
                                                 _g2456124581_
                                                 '0)))
                                           (begin
                                             (let ((_g41749_
                                                    (if (##values? _g41748_)
                                                        (##vector-length
                                                         _g41748_)
                                                        1)))
                                               (if (not (##fx= _g41749_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41749_)))
                                             (let ((_target2456324584_
                                                    (##vector-ref _g41748_ 0))
                                                   (_tl2456524587_
                                                    (##vector-ref _g41748_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2456524587_)
                                                   (letrec ((_loop2456624590_
                                                             (lambda (_hd2456424594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2457024597_)
                       (if (gx#stx-pair? _hd2456424594_)
                           (let ((_e2456724600_ (gx#syntax-e _hd2456424594_)))
                             (let ((_lp-hd2456824604_ (##car _e2456724600_))
                                   (_lp-tl2456924607_ (##cdr _e2456724600_)))
                               (_loop2456624590_
                                _lp-tl2456924607_
                                (cons _lp-hd2456824604_ _var-r2457024597_))))
                           (let ((_var-r2457124610_
                                  (reverse _var-r2457024597_)))
                             ((lambda (_L24614_)
                                (let ()
                                  (let* ((_g2463124648_
                                          (lambda (_g2463224644_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2463224644_)))
                                         (_g2463025083_
                                          (lambda (_g2463224652_)
                                            (if (gx#stx-pair/null?
                                                 _g2463224652_)
                                                (let ((_g41750_
                                                       (gx#syntax-split-splice
                                                        _g2463224652_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41751_
                                                           (if (##values?
                                                                _g41750_)
                                                               (##vector-length
                                                                _g41750_)
                                                               1)))
                                                      (if (not (##fx= _g41751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41751_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2463424655_
                                                           (##vector-ref
                                                            _g41750_
                                                            0))
                                                          (_tl2463624658_
                                                           (##vector-ref
                                                            _g41750_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2463624658_)
                                                          (letrec ((_loop2463724661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2463524665_ _init2464124668_)
                              (if (gx#stx-pair? _hd2463524665_)
                                  (let ((_e2463824671_
                                         (gx#syntax-e _hd2463524665_)))
                                    (let ((_lp-hd2463924675_
                                           (##car _e2463824671_))
                                          (_lp-tl2464024678_
                                           (##cdr _e2463824671_)))
                                      (_loop2463724661_
                                       _lp-tl2464024678_
                                       (cons _lp-hd2463924675_
                                             _init2464124668_))))
                                  (let ((_init2464224681_
                                         (reverse _init2464124668_)))
                                    ((lambda (_L24685_)
                                       (let ()
                                         (let* ((_g2470224710_
                                                 (lambda (_g2470324706_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2470324706_)))
                                                (_g2470125079_
                                                 (lambda (_g2470324714_)
                                                   ((lambda (_L24717_)
                                                      (let ()
                                                        (let* ((_g2473024738_
                                                                (lambda (_g2473124734_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2473124734_)))
                       (_g2472925075_
                        (lambda (_g2473124742_)
                          ((lambda (_L24745_)
                             (let ()
                               (let* ((_g2475824766_
                                       (lambda (_g2475924762_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2475924762_)))
                                      (_g2475725071_
                                       (lambda (_g2475924770_)
                                         ((lambda (_L24773_)
                                            (let ()
                                              (let* ((_g2478624794_
                                                      (lambda (_g2478724790_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2478724790_)))
                                                     (_g2478525067_
                                                      (lambda (_g2478724798_)
                                                        ((lambda (_L24801_)
                                                           (let ()
                                                             (let* ((_g2481424822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2481524818_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2481524818_)))
                            (_g2481325063_
                             (lambda (_g2481524826_)
                               ((lambda (_L24829_)
                                  (let ()
                                    (let* ((_g2484224850_
                                            (lambda (_g2484324846_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2484324846_)))
                                           (_g2484125059_
                                            (lambda (_g2484324854_)
                                              ((lambda (_L24857_)
                                                 (let ()
                                                   (let* ((_g2487024878_
                                                           (lambda (_g2487124874_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2487124874_)))
                                                          (_g2486925055_
                                                           (lambda (_g2487124882_)
                                                             ((lambda (_L24885_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2489824906_
                                  (lambda (_g2489924902_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2489924902_)))
                                 (_g2489725040_
                                  (lambda (_g2489924910_)
                                    ((lambda (_L24913_)
                                       (let ()
                                         (let* ((_g2492624934_
                                                 (lambda (_g2492724930_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2492724930_)))
                                                (_g2492525028_
                                                 (lambda (_g2492724938_)
                                                   ((lambda (_L24941_)
                                                      (let ()
                                                        (let* ((_g2495424962_
                                                                (lambda (_g2495524958_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2495524958_)))
                       (_g2495325024_
                        (lambda (_g2495524966_)
                          ((lambda (_L24969_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L24745_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L24857_
                                         (foldr (lambda (_g2498324994_
                                                         _g2498424997_)
                                                  (cons _g2498324994_
                                                        _g2498424997_))
                                                '()
                                                _L24544_))
                                   (cons _L24885_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L24801_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L24829_
                                               (cons _L24857_
                                                     (foldr (lambda (_g2498525000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2498625003_)
                      (cons _g2498525000_ _g2498625003_))
                    '()
                    _L24614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L24969_ '())))
                             '()))
                 (cons (cons _L24773_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24857_
                                                     (foldr (lambda (_g2498725006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2498825009_)
                      (cons _g2498725006_ _g2498825009_))
                    '()
                    _L24614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L24857_ '()))
                         (cons (cons _L24801_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L24857_ '()))
                                           (cons _L24857_
                                                 (foldr (lambda (_g2498925012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2499025015_)
                  (cons _g2498925012_ _g2499025015_))
                '()
                _L24614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L24941_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L24773_
                                                         (cons _L24717_
                                                               (foldr (lambda (_g2499125018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2499225021_)
                                (cons _g2499125018_ _g2499225021_))
                              '()
                              _L24685_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2495524966_))))
                  (_g2495325024_
                   (_generate123488_ _L24829_ _hd24485_ _L24913_ _L24941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2492724938_))))
                                           (_g2492525028_
                                            (cons _L24745_
                                                  (cons _L24857_
                                                        (foldr (lambda (_g2503125034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2503225037_)
                         (cons (cons (gx#datum->syntax '#f 'reverse)
                                     (cons _g2503125034_ '()))
                               _g2503225037_))
                       '()
                       _L24614_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2489924910_))))
                            (_g2489725040_
                             (cons _L24773_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
                                               (cons _L24857_ '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L24614_
                                            _L24544_)
                                           (foldr (lambda (_g2504325047_
                                                           _g2504425050_
                                                           _g2504525052_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'cons)
                        (cons _g2504425050_ (cons _g2504325047_ '())))
                  _g2504525052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24614_
                                                  _L24544_))))))))
                      _g2487124882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2486925055_
                                                      (_generate123488_
                                                       _L24857_
                                                       _rest24486_
                                                       _K24487_
                                                       _E24488_)))))
                                               _g2484324854_))))
                                      (_g2484125059_ (gx#genident 'rest)))))
                                _g2481524826_))))
                       (_g2481325063_ (gx#genident 'hd)))))
                 _g2478724798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2478525067_
                                                 (gx#genident 'splice-try)))))
                                          _g2475924770_))))
                                 (_g2475725071_ (gx#genident 'splice-loop)))))
                           _g2473124742_))))
                  (_g2472925075_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2470324714_))))
                                           (_g2470125079_ _tgt24483_))))
                                     _init2464224681_))))))
                    (_loop2463724661_ _target2463424655_ '()))
                  (_g2463124648_ _g2463224652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2463124648_
                                                 _g2463224652_)))))
                                    (_g2463025083_
                                     (make-list
                                      (gx#stx-length
                                       (foldr (lambda (_g2508625089_
                                                       _g2508725092_)
                                                (cons _g2508625089_
                                                      _g2508725092_))
                                              '()
                                              _L24544_))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2457124610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2456624590_
                                                      _target2456324584_
                                                      '()))
                                                   (_g2456024577_
                                                    _g2456124581_)))))
                                         (_g2456024577_ _g2456124581_)))))
                             (_g2455925095_
                              (gx#gentemps
                               (foldr (lambda (_g2509825101_ _g2509925104_)
                                        (cons _g2509825101_ _g2509925104_))
                                      '()
                                      _L24544_))))))
                       _var2450124540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2449624520_
                                               _target2449324514_
                                               '()))
                                            (_g2449024507_ _g2449124511_)))))
                                  (_g2449024507_ _g2449124511_)))))
                      (_g2448925107_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24485_)))))
                 (_generate-simple-vector23491_
                  (lambda (_tgt24325_
                           _body24327_
                           _start24328_
                           _K24329_
                           _E24330_)
                    (let _recur24332_ ((_rest24335_ _body24327_)
                                       (_off24337_ _start24328_))
                      (let* ((___stx4044440445_ _rest24335_)
                             (_g2434024352_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4044440445_))))
                        (let ((___kont4044740448_
                               (lambda (_L24380_ _L24382_)
                                 (let* ((_g2439724416_
                                         (lambda (_g2439824412_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2439824412_)))
                                        (_g2439624475_
                                         (lambda (_g2439824420_)
                                           (if (gx#stx-pair? _g2439824420_)
                                               (let ((_e2440224423_
                                                      (gx#syntax-e
                                                       _g2439824420_)))
                                                 (let ((_hd2440324427_
                                                        (##car _e2440224423_))
                                                       (_tl2440424430_
                                                        (##cdr _e2440224423_)))
                                                   (if (gx#stx-pair?
                                                        _tl2440424430_)
                                                       (let ((_e2440524433_
                                                              (gx#syntax-e
                                                               _tl2440424430_)))
                                                         (let ((_hd2440624437_
                                                                (##car _e2440524433_))
                                                               (_tl2440724440_
                                                                (##cdr _e2440524433_)))
                                                           (if (gx#stx-pair?
                                                                _tl2440724440_)
                                                               (let ((_e2440824443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2440724440_)))
                         (let ((_hd2440924447_ (##car _e2440824443_))
                               (_tl2441024450_ (##cdr _e2440824443_)))
                           (if (gx#stx-null? _tl2441024450_)
                               ((lambda (_L24453_ _L24455_ _L24456_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24456_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24455_ (cons _L24453_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (_generate123488_
                                                       _L24456_
                                                       _L24382_
                                                       (_recur24332_
                                                        _L24380_
                                                        (fx1+ _off24337_))
                                                       _E24330_)
                                                      '())))))
                                _hd2440924447_
                                _hd2440624437_
                                _hd2440324427_)
                               (_g2439724416_ _g2439824420_))))
                       (_g2439724416_ _g2439824420_))))
               (_g2439724416_ _g2439824420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2439724416_
                                                _g2439824420_)))))
                                   (_g2439624475_
                                    (list (gx#genident 'e)
                                          _tgt24325_
                                          _off24337_)))))
                              (___kont4044940450_ (lambda () _K24329_)))
                          (if (gx#stx-pair? ___stx4044440445_)
                              (let ((_e2434424370_
                                     (gx#syntax-e ___stx4044440445_)))
                                (let ((_tl2434624377_ (##cdr _e2434424370_))
                                      (_hd2434524374_ (##car _e2434424370_)))
                                  (___kont4044740448_
                                   _tl2434624377_
                                   _hd2434524374_)))
                              (___kont4044940450_)))))))
                 (_generate-list-vector23492_
                  (lambda (_tgt24217_
                           _body24219_
                           _->list24220_
                           _K24221_
                           _E24222_)
                    (let* ((_g2422424232_
                            (lambda (_g2422524228_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2422524228_)))
                           (_g2422324321_
                            (lambda (_g2422524236_)
                              ((lambda (_L24239_)
                                 (let ()
                                   (let* ((_g2425124259_
                                           (lambda (_g2425224255_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2425224255_)))
                                          (_g2425024317_
                                           (lambda (_g2425224263_)
                                             ((lambda (_L24266_)
                                                (let ()
                                                  (let* ((_g2427924287_
                                                          (lambda (_g2428024283_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2428024283_)))
                                                         (_g2427824309_
                                                          (lambda (_g2428024291_)
                                                            ((lambda (_L24294_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24239_
                                                   (cons _L24294_ '()))
                                             '())
                                       (cons (_generate123488_
                                              _L24239_
                                              _body24219_
                                              _K24221_
                                              _E24222_)
                                             '()))))))
                     _g2428024291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2427824309_
                                                     (let ((_$e24313_
                                                            _->list24220_))
                                                       (if (eq? 'values->list
                                                                _$e24313_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
                         (cons _L24266_ '()))
                   (if (eq? 'vector->list _$e24313_)
                       (cons (gx#datum->syntax '#f '##vector->list)
                             (cons _L24266_ '()))
                       (if (eq? 'struct->list _$e24313_)
                           (cons (gx#datum->syntax '#f '##cdr)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector->list)
                                             (cons _L24266_ '()))
                                       '()))
                           (gx#raise-syntax-error
                            '#f
                            '"Unexpected list conversion"
                            _stx23481_
                            _->list24220_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2425224263_))))
                                     (_g2425024317_ _tgt24217_))))
                               _g2422524236_))))
                      (_g2422324321_ (gx#genident 'e)))))
                 (_generate-struct23493_
                  (lambda (_info23875_
                           _tgt23877_
                           _body23878_
                           _K23879_
                           _E23880_)
                    (let* ((_rtd23882_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23875_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23875_)
                                '#f))
                           (_fields23892_
                            (let _lp23885_ ((_rtd23888_ _rtd23882_)
                                            (_k23890_ '0))
                              (if _rtd23888_
                                  (_lp23885_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd23888_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd23888_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k23890_))
                                  _k23890_)))
                           (_final?23895_
                            (if _rtd23882_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd23882_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2389823906_
                            (lambda (_g2389923902_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2389923902_)))
                           (_g2389724213_
                            (lambda (_g2389923910_)
                              ((lambda (_L23913_)
                                 (let ()
                                   (let* ((_g2392823936_
                                           (lambda (_g2392923932_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2392923932_)))
                                          (_g2392724115_
                                           (lambda (_g2392923940_)
                                             ((lambda (_L23943_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4046040461_
                                                            _body23878_)
                                                           (_g2395923982_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4046040461_))))
                                                      (let ((___kont4046340464_
                                                             (lambda (_L24061_)
                                                               (let ((_K24075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_generate-simple-vector23491_
                               _tgt23877_
                               _L24061_
                               '1
                               _K23879_
                               _E23880_))
                             (_len24077_ (gx#stx-length _L24061_)))
                         (if (and _rtd23882_ (fx<= _len24077_ _fields23892_))
                             (cons 'if
                                   (cons _L23943_
                                         (cons _K24075_ (cons _E23880_ '()))))
                             (let* ((_g2407924087_
                                     (lambda (_g2408024083_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2408024083_)))
                                    (_g2407824107_
                                     (lambda (_g2408024091_)
                                       ((lambda (_L24094_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L23943_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24094_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L23913_ '()))
                                                    '())))
                                  (cons _K24075_ (cons _E23880_ '()))))
                      (cons _E23880_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2408024091_))))
                               (_g2407824107_ _len24077_))))))
                    (___kont4046540466_
                     (lambda (_L24013_)
                       (cons 'if
                             (cons _L23943_
                                   (cons (_generate-list-vector23492_
                                          _tgt23877_
                                          _L24013_
                                          'struct->list
                                          _K23879_
                                          _E23880_)
                                         (cons _E23880_ '())))))))
                (if (gx#stx-pair? ___stx4046040461_)
                    (let ((_e2396224037_ (gx#syntax-e ___stx4046040461_)))
                      (let ((_tl2396424044_ (##cdr _e2396224037_))
                            (_hd2396324041_ (##car _e2396224037_)))
                        (if (gx#stx-datum? _hd2396324041_)
                            (let ((_e2396524047_ (gx#stx-e _hd2396324041_)))
                              (if (equal? _e2396524047_ 'simple:)
                                  (if (gx#stx-pair? _tl2396424044_)
                                      (let ((_e2396624051_
                                             (gx#syntax-e _tl2396424044_)))
                                        (let ((_tl2396824058_
                                               (##cdr _e2396624051_))
                                              (_hd2396724055_
                                               (##car _e2396624051_)))
                                          (if (gx#stx-null? _tl2396824058_)
                                              (___kont4046340464_
                                               _hd2396724055_)
                                              (_g2395923982_))))
                                      (_g2395923982_))
                                  (if (equal? _e2396524047_ 'list:)
                                      (if (gx#stx-pair? _tl2396424044_)
                                          (let ((_e2397424003_
                                                 (gx#syntax-e _tl2396424044_)))
                                            (let ((_tl2397624010_
                                                   (##cdr _e2397424003_))
                                                  (_hd2397524007_
                                                   (##car _e2397424003_)))
                                              (if (gx#stx-null? _tl2397624010_)
                                                  (___kont4046540466_
                                                   _hd2397524007_)
                                                  (_g2395923982_))))
                                          (_g2395923982_))
                                      (_g2395923982_))))
                            (_g2395923982_))))
                    (_g2395923982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2392923940_))))
                                     (_g2392724115_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info23875_)
                                          (let* ((_g2411924127_
                                                  (lambda (_g2412024123_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2412024123_)))
                                                 (_g2411824146_
                                                  (lambda (_g2412024131_)
                                                    ((lambda (_L24134_)
                                                       (let ()
                                                         (cons _L24134_
                                                               (cons _L23913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2412024131_))))
                                            (_g2411824146_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info23875_))))
                                          (let* ((_g2415024165_
                                                  (lambda (_g2415124161_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2415124161_)))
                                                 (_g2414924209_
                                                  (lambda (_g2415124169_)
                                                    (if (gx#stx-pair?
                                                         _g2415124169_)
                                                        (let ((_e2415424172_
                                                               (gx#syntax-e
                                                                _g2415124169_)))
                                                          (let ((_hd2415524176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2415424172_))
                        (_tl2415624179_ (##cdr _e2415424172_)))
                    (if (gx#stx-pair? _tl2415624179_)
                        (let ((_e2415724182_ (gx#syntax-e _tl2415624179_)))
                          (let ((_hd2415824186_ (##car _e2415724182_))
                                (_tl2415924189_ (##cdr _e2415724182_)))
                            (if (gx#stx-null? _tl2415924189_)
                                ((lambda (_L24192_ _L24194_)
                                   (let ()
                                     (cons _L24192_
                                           (cons _L24194_
                                                 (cons _L23913_ '())))))
                                 _hd2415824186_
                                 _hd2415524176_)
                                (_g2415024165_ _g2415124169_))))
                        (_g2415024165_ _g2415124169_))))
                (_g2415024165_ _g2415124169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2414924209_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info23875_)
                                                   (if _final?23895_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2389923910_))))
                      (_g2389724213_ _tgt23877_))))
                 (_generate-class23494_
                  (lambda (_info23496_
                           _tgt23498_
                           _body23499_
                           _K23500_
                           _E23501_)
                    (letrec* ((_rtd23503_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23496_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23496_)
                                   '#f))
                              (_known-slot?23505_
                               (if _rtd23503_
                                   (lambda (_key23869_)
                                     (let ((_slot23872_
                                            (keyword->symbol
                                             (gx#stx-e _key23869_))))
                                       (_rtd-known-slot?23507_
                                        _rtd23503_
                                        _slot23872_)))
                                   false))
                              (_final?23506_
                               (if _rtd23503_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23503_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23507_
                               (lambda (_rtd23856_ _slot23858_)
                                 (if _rtd23856_
                                     (let ((_$e23860_
                                            (memq _slot23858_
                                                  (##structure-ref
                                                   _rtd23856_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e23860_
                                           _$e23860_
                                           (ormap (lambda (_g2386323865_)
                                                    (_rtd-known-slot?23507_
                                                     _g2386323865_
                                                     _slot23858_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd23856_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23508_
                               (lambda (_klass23642_ _rest23644_)
                                 (let* ((___stx4051040511_ _rest23644_)
                                        (_g2364723663_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4051040511_))))
                                   (let ((___kont4051340514_
                                          (lambda (_L23701_ _L23703_ _L23704_)
                                            (let* ((_g2372023728_
                                                    (lambda (_g2372123724_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2372123724_)))
                                                   (_g2371923848_
                                                    (lambda (_g2372123732_)
                                                      ((lambda (_L23735_)
                                                         (let ()
                                                           (let* ((_g2374723755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2374823751_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2374823751_)))
                          (_g2374623844_
                           (lambda (_g2374823759_)
                             ((lambda (_L23762_)
                                (let ()
                                  (let* ((_g2377523783_
                                          (lambda (_g2377623779_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2377623779_)))
                                         (_g2377423840_
                                          (lambda (_g2377623787_)
                                            ((lambda (_L23790_)
                                               (let ()
                                                 (let* ((_g2380323811_
                                                         (lambda (_g2380423807_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2380423807_)))
                                                        (_g2380223836_
                                                         (lambda (_g2380423815_)
                                                           ((lambda (_L23818_)
                                                              (let ()
                                                                (let ((_K23831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L23818_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L23735_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L23790_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123488_
                                                  _L23818_
                                                  _L23703_
                                                  (_recur23508_
                                                   _klass23642_
                                                   _L23701_)
                                                  _E23501_)
                                                 '())))))
                          (if (_known-slot?23505_ _L23704_)
                              (cons 'let
                                    (cons (cons (cons _L23790_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23762_ (cons _L23704_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K23831_ '())))
                              (cons 'let
                                    (cons (cons (cons _L23790_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23762_ (cons _L23704_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L23790_
                                                            (cons _K23831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2380423815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2380223836_
                                                    (gx#genident 'e)))))
                                             _g2377623787_))))
                                    (_g2377423840_ (gx#genident 'slot)))))
                              _g2374823759_))))
                     (_g2374623844_ _klass23642_))))
               _g2372123732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2371923848_ _tgt23498_))))
                                         (___kont4051540516_
                                          (lambda () _K23500_)))
                                     (if (gx#stx-pair? ___stx4051040511_)
                                         (let ((_e2365223681_
                                                (gx#syntax-e
                                                 ___stx4051040511_)))
                                           (let ((_tl2365423688_
                                                  (##cdr _e2365223681_))
                                                 (_hd2365323685_
                                                  (##car _e2365223681_)))
                                             (if (gx#stx-pair? _tl2365423688_)
                                                 (let ((_e2365523691_
                                                        (gx#syntax-e
                                                         _tl2365423688_)))
                                                   (let ((_tl2365723698_
                                                          (##cdr _e2365523691_))
                                                         (_hd2365623695_
                                                          (##car _e2365523691_)))
                                                     (___kont4051340514_
                                                      _tl2365723698_
                                                      _hd2365623695_
                                                      _hd2365323685_)))
                                                 (___kont4051540516_))))
                                         (___kont4051540516_)))))))
                      (let* ((_g2351023518_
                              (lambda (_g2351123514_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2351123514_)))
                             (_g2350923638_
                              (lambda (_g2351123522_)
                                ((lambda (_L23525_)
                                   (let ()
                                     (let* ((_g2354023548_
                                             (lambda (_g2354123544_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2354123544_)))
                                            (_g2353923634_
                                             (lambda (_g2354123552_)
                                               ((lambda (_L23555_)
                                                  (let ()
                                                    (let* ((_g2356823576_
                                                            (lambda (_g2356923572_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2356923572_)))
                                                           (_g2356723630_
                                                            (lambda (_g2356923580_)
                                                              ((lambda (_L23583_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2359623604_
                                   (lambda (_g2359723600_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2359723600_)))
                                  (_g2359523626_
                                   (lambda (_g2359723608_)
                                     ((lambda (_L23611_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23611_
                                                              (cons _L23583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23555_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23525_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23555_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23508_ _L23525_ _body23499_)
                                        '())))
                      (cons _E23501_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2359723608_))))
                             (_g2359523626_
                              (if _final?23506_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2356923580_))))
              (_g2356723630_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2354123552_))))
                                       (_g2353923634_ _tgt23498_))))
                                 _g2351123522_))))
                        (_g2350923638_ (gx#genident 'class)))))))
          (_generate123488_ _tgt23483_ _ptree23484_ _K23485_ _E23486_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22377_ _tgt-lst22379_ _clauses22380_)
        (letrec ((_parse-body22382_
                  (lambda (_hd-len23303_)
                    (let _lp23306_ ((_rest23309_ _clauses22380_)
                                    (_r23311_ '()))
                      (let* ((___stx4056040561_ _rest23309_)
                             (_g2331423326_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4056040561_))))
                        (let ((___kont4056340564_
                               (lambda (_L23354_ _L23356_)
                                 (let* ((___stx4053240533_ _L23356_)
                                        (_g2337323389_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4053240533_))))
                                   (let ((___kont4053540536_
                                          (lambda (_L23458_)
                                            (if (gx#stx-null? _L23354_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23458_)
                                 (let ((_$e23469_ (gx#stx-source _L23356_)))
                                   (if _$e23469_
                                       _$e23469_
                                       (gx#stx-source _stx22377_))))
                                '())))
              _r23311_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22377_
                                                 _L23356_))))
                                         (___kont4053740538_
                                          (lambda (_L23417_ _L23419_)
                                            (_lp23306_
                                             _L23354_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2343123433_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2343123433_
                           _stx22377_))
                        _L23419_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23417_)
                              (let ((_$e23437_ (gx#stx-source _L23356_)))
                                (if _$e23437_
                                    _$e23437_
                                    (gx#stx-source _stx22377_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23311_))))
                                         (___kont4053940540_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22377_
                                             _L23356_))))
                                     (let* ((___match4055740558_
                                             (lambda (_e2338123407_
                                                      _hd2338223411_
                                                      _tl2338323414_)
                                               (let ((_L23417_ _tl2338323414_)
                                                     (_L23419_ _hd2338223411_))
                                                 (if (and (gx#stx-list?
                                                           _L23419_)
                                                          (fx= (gx#stx-length
                                                                _L23419_)
                                                               _hd-len23303_)
                                                          (gx#stx-list?
                                                           _L23417_)
                                                          (not (gx#stx-null?
                                                                _L23417_)))
                                                     (___kont4053740538_
                                                      _L23417_
                                                      _L23419_)
                                                     (___kont4053940540_)))))
                                            (___match4055140552_
                                             (lambda (_e2337623448_
                                                      _hd2337723452_
                                                      _tl2337823455_)
                                               (let ((_L23458_ _tl2337823455_))
                                                 (if (and (gx#stx-list?
                                                           _L23458_)
                                                          (not (gx#stx-null?
                                                                _L23458_)))
                                                     (___kont4053540536_
                                                      _L23458_)
                                                     (___match4055740558_
                                                      _e2337623448_
                                                      _hd2337723452_
                                                      _tl2337823455_))))))
                                       (if (gx#stx-pair? ___stx4053240533_)
                                           (let ((_e2337623448_
                                                  (gx#syntax-e
                                                   ___stx4053240533_)))
                                             (let ((_tl2337823455_
                                                    (##cdr _e2337623448_))
                                                   (_hd2337723452_
                                                    (##car _e2337623448_)))
                                               (if (gx#identifier?
                                                    _hd2337723452_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g41752_|
                                                        _hd2337723452_)
                                                       (___match4055140552_
                                                        _e2337623448_
                                                        _hd2337723452_
                                                        _tl2337823455_)
                                                       (___match4055740558_
                                                        _e2337623448_
                                                        _hd2337723452_
                                                        _tl2337823455_))
                                                   (___match4055740558_
                                                    _e2337623448_
                                                    _hd2337723452_
                                                    _tl2337823455_))))
                                           (___kont4053940540_)))))))
                              (___kont4056540566_ (lambda () _r23311_)))
                          (if (gx#stx-pair? ___stx4056040561_)
                              (let ((_e2331823344_
                                     (gx#syntax-e ___stx4056040561_)))
                                (let ((_tl2332023351_ (##cdr _e2331823344_))
                                      (_hd2331923348_ (##car _e2331823344_)))
                                  (___kont4056340564_
                                   _tl2332023351_
                                   _hd2331923348_)))
                              (___kont4056540566_)))))))
                 (_generate-body22384_
                  (lambda (_body23088_)
                    (let* ((_g2309123099_
                            (lambda (_g2309223095_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2309223095_)))
                           (_g2309023299_
                            (lambda (_g2309223103_)
                              ((lambda (_L23106_)
                                 (let ()
                                   (let* ((_g2311823135_
                                           (lambda (_g2311923131_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2311923131_)))
                                          (_g2311723295_
                                           (lambda (_g2311923139_)
                                             (if (gx#stx-pair/null?
                                                  _g2311923139_)
                                                 (let ((_g41753_
                                                        (gx#syntax-split-splice
                                                         _g2311923139_
                                                         '0)))
                                                   (begin
                                                     (let ((_g41754_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g41753_)
                        (##vector-length _g41753_)
                        1)))
               (if (not (##fx= _g41754_ 2))
                   (error "Context expects 2 values" _g41754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2312123142_
                                                            (##vector-ref
                                                             _g41753_
                                                             0))
                                                           (_tl2312323145_
                                                            (##vector-ref
                                                             _g41753_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2312323145_)
                                                           (letrec ((_loop2312423148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2312223152_ _target2312823155_)
                               (if (gx#stx-pair? _hd2312223152_)
                                   (let ((_e2312523158_
                                          (gx#syntax-e _hd2312223152_)))
                                     (let ((_lp-hd2312623162_
                                            (##car _e2312523158_))
                                           (_lp-tl2312723165_
                                            (##cdr _e2312523158_)))
                                       (_loop2312423148_
                                        _lp-tl2312723165_
                                        (cons _lp-hd2312623162_
                                              _target2312823155_))))
                                   (let ((_target2312923168_
                                          (reverse _target2312823155_)))
                                     ((lambda (_L23172_)
                                        (let ()
                                          (let* ((_g2318923197_
                                                  (lambda (_g2319023193_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2319023193_)))
                                                 (_g2318823283_
                                                  (lambda (_g2319023201_)
                                                    ((lambda (_L23204_)
                                                       (let ()
                                                         (let* ((_g2321723225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2321823221_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2321823221_)))
                        (_g2321623279_
                         (lambda (_g2321823229_)
                           ((lambda (_L23232_)
                              (let ()
                                (let* ((_g2324523253_
                                        (lambda (_g2324623249_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2324623249_)))
                                       (_g2324423275_
                                        (lambda (_g2324623257_)
                                          ((lambda (_L23260_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2324623257_))))
                                  (_g2324423275_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23106_
                                                            (cons _L23204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23232_ '())))
                                    (gx#stx-source _stx22377_))))))
                            _g2321823229_))))
                   (_g2321623279_
                    (_generate-clauses22385_
                     _body23088_
                     (cons _L23106_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2319023201_))))
                                            (_g2318823283_
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
                                    (foldr (lambda (_g2328623289_
                                                    _g2328723292_)
                                             (cons _g2328623289_
                                                   _g2328723292_))
                                           '()
                                           _L23172_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22377_))))))
                                      _target2312923168_))))))
                     (_loop2312423148_ _target2312123142_ '()))
                   (_g2311823135_ _g2311923139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2311823135_
                                                  _g2311923139_)))))
                                     (_g2311723295_ _tgt-lst22379_))))
                               _g2309223103_))))
                      (_g2309023299_ (gx#genident 'E)))))
                 (_generate-clauses22385_
                  (lambda (_rest22740_ _E22742_)
                    (let* ((___stx4057640577_ _rest22740_)
                           (_g2274622762_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4057640577_))))
                      (let ((___kont4057940580_
                             (lambda (_L22996_)
                               (let* ((_g2300723025_
                                       (lambda (_g2300823021_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2300823021_)))
                                      (_g2300623080_
                                       (lambda (_g2300823029_)
                                         (if (gx#stx-pair? _g2300823029_)
                                             (let ((_e2301123032_
                                                    (gx#syntax-e
                                                     _g2300823029_)))
                                               (let ((_hd2301223036_
                                                      (##car _e2301123032_))
                                                     (_tl2301323039_
                                                      (##cdr _e2301123032_)))
                                                 (if (gx#stx-pair?
                                                      _tl2301323039_)
                                                     (let ((_e2301423042_
                                                            (gx#syntax-e
                                                             _tl2301323039_)))
                                                       (let ((_hd2301523046_
                                                              (##car _e2301423042_))
                                                             (_tl2301623049_
                                                              (##cdr _e2301423042_)))
                                                         (if (gx#stx-pair?
                                                              _tl2301623049_)
                                                             (let ((_e2301723052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2301623049_)))
                       (let ((_hd2301823056_ (##car _e2301723052_))
                             (_tl2301923059_ (##cdr _e2301723052_)))
                         (if (gx#stx-null? _tl2301923059_)
                             ((lambda (_L23062_ _L23064_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23064_)
                                                      (_generate122386_
                                                       _L23064_
                                                       _L23062_
                                                       _E22742_)
                                                      _L23062_)
                                                  '()))))
                              _hd2301823056_
                              _hd2301523046_)
                             (_g2300723025_ _g2300823029_))))
                     (_g2300723025_ _g2300823029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2300723025_
                                                      _g2300823029_))))
                                             (_g2300723025_ _g2300823029_)))))
                                 (_g2300623080_ _L22996_))))
                            (___kont4058140582_
                             (lambda (_L22790_ _L22792_)
                               (let* ((_g2280522824_
                                       (lambda (_g2280622820_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2280622820_)))
                                      (_g2280422975_
                                       (lambda (_g2280622828_)
                                         (if (gx#stx-pair? _g2280622828_)
                                             (let ((_e2281022831_
                                                    (gx#syntax-e
                                                     _g2280622828_)))
                                               (let ((_hd2281122835_
                                                      (##car _e2281022831_))
                                                     (_tl2281222838_
                                                      (##cdr _e2281022831_)))
                                                 (if (gx#stx-pair?
                                                      _tl2281222838_)
                                                     (let ((_e2281322841_
                                                            (gx#syntax-e
                                                             _tl2281222838_)))
                                                       (let ((_hd2281422845_
                                                              (##car _e2281322841_))
                                                             (_tl2281522848_
                                                              (##cdr _e2281322841_)))
                                                         (if (gx#stx-pair?
                                                              _tl2281522848_)
                                                             (let ((_e2281622851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2281522848_)))
                       (let ((_hd2281722855_ (##car _e2281622851_))
                             (_tl2281822858_ (##cdr _e2281622851_)))
                         (if (gx#stx-null? _tl2281822858_)
                             ((lambda (_L22861_ _L22863_ _L22864_)
                                (if (gx#stx-e _L22863_)
                                    (let* ((_g2288122896_
                                            (lambda (_g2288222892_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2288222892_)))
                                           (_g2288022941_
                                            (lambda (_g2288222900_)
                                              (if (gx#stx-pair? _g2288222900_)
                                                  (let ((_e2288522903_
                                                         (gx#syntax-e
                                                          _g2288222900_)))
                                                    (let ((_hd2288622907_
                                                           (##car _e2288522903_))
                                                          (_tl2288722910_
                                                           (##cdr _e2288522903_)))
                                                      (if (gx#stx-pair?
                                                           _tl2288722910_)
                                                          (let ((_e2288822913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2288722910_)))
                    (let ((_hd2288922917_ (##car _e2288822913_))
                          (_tl2289022920_ (##cdr _e2288822913_)))
                      (if (gx#stx-null? _tl2289022920_)
                          ((lambda (_L22923_ _L22925_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L22864_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L22925_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L22923_ '())))))
                           _hd2288922917_
                           _hd2288622907_)
                          (_g2288122896_ _g2288222900_))))
                  (_g2288122896_ _g2288222900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2288122896_
                                                   _g2288222900_)))))
                                      (_g2288022941_
                                       (list (_generate122386_
                                              _L22863_
                                              _L22861_
                                              _E22742_)
                                             (_generate-clauses22385_
                                              _L22790_
                                              (cons _L22864_ '())))))
                                    (let* ((_g2294522953_
                                            (lambda (_g2294622949_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2294622949_)))
                                           (_g2294422971_
                                            (lambda (_g2294622957_)
                                              ((lambda (_L22960_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L22864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                         (cons '() (cons _L22861_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L22960_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2294622957_))))
                                      (_g2294422971_
                                       (_generate-clauses22385_
                                        _L22790_
                                        (cons _L22864_ '()))))))
                              _hd2281722855_
                              _hd2281422845_
                              _hd2281122835_)
                             (_g2280522824_ _g2280622828_))))
                     (_g2280522824_ _g2280622828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2280522824_
                                                      _g2280622828_))))
                                             (_g2280522824_ _g2280622828_)))))
                                 (_g2280422975_ _L22792_))))
                            (___kont4058340584_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22742_ '()))))))
                        (if (gx#stx-pair? ___stx4057640577_)
                            (let ((_e2274922986_
                                   (gx#syntax-e ___stx4057640577_)))
                              (let ((_tl2275122993_ (##cdr _e2274922986_))
                                    (_hd2275022990_ (##car _e2274922986_)))
                                (if (gx#stx-null? _tl2275122993_)
                                    (___kont4057940580_ _hd2275022990_)
                                    (___kont4058140582_
                                     _tl2275122993_
                                     _hd2275022990_))))
                            (___kont4058340584_))))))
                 (_generate122386_
                  (lambda (_clause22388_ _body22390_ _E22391_)
                    (let* ((_g2239322417_
                            (lambda (_g2239422413_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2239422413_)))
                           (_g2239222736_
                            (lambda (_g2239422421_)
                              (if (gx#stx-pair? _g2239422421_)
                                  (let ((_e2239722424_
                                         (gx#syntax-e _g2239422421_)))
                                    (let ((_hd2239822428_
                                           (##car _e2239722424_))
                                          (_tl2239922431_
                                           (##cdr _e2239722424_)))
                                      (if (gx#stx-pair? _tl2239922431_)
                                          (let ((_e2240022434_
                                                 (gx#syntax-e _tl2239922431_)))
                                            (let ((_hd2240122438_
                                                   (##car _e2240022434_))
                                                  (_tl2240222441_
                                                   (##cdr _e2240022434_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2240122438_)
                                                  (let ((_g41755_
                                                         (gx#syntax-split-splice
                                                          _hd2240122438_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41756_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41755_)
                         (##vector-length _g41755_)
                         1)))
                (if (not (##fx= _g41756_ 2))
                    (error "Context expects 2 values" _g41756_)))
              (let ((_target2240322444_ (##vector-ref _g41755_ 0))
                    (_tl2240522447_ (##vector-ref _g41755_ 1)))
                (if (gx#stx-null? _tl2240522447_)
                    (letrec ((_loop2240622450_
                              (lambda (_hd2240422454_ _var2241022457_)
                                (if (gx#stx-pair? _hd2240422454_)
                                    (let ((_e2240722460_
                                           (gx#syntax-e _hd2240422454_)))
                                      (let ((_lp-hd2240822464_
                                             (##car _e2240722460_))
                                            (_lp-tl2240922467_
                                             (##cdr _e2240722460_)))
                                        (_loop2240622450_
                                         _lp-tl2240922467_
                                         (cons _lp-hd2240822464_
                                               _var2241022457_))))
                                    (let ((_var2241122470_
                                           (reverse _var2241022457_)))
                                      (if (gx#stx-null? _tl2240222441_)
                                          ((lambda (_L22474_ _L22476_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2249722500_
                                                                _g2249822503_)
                                                         (cons _g2249722500_
                                                               _g2249822503_))
                                                       '()
                                                       _L22474_)
                                                _stx22377_)
                                               (let* ((_g2250622514_
                                                       (lambda (_g2250722510_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2250722510_)))
                                                      (_g2250522608_
                                                       (lambda (_g2250722518_)
                                                         ((lambda (_L22521_)
                                                            (let ()
                                                              (let* ((_g2253422542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2253522538_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2253522538_)))
                             (_g2253322604_
                              (lambda (_g2253522546_)
                                ((lambda (_L22549_)
                                   (let ()
                                     (let* ((_g2256222570_
                                             (lambda (_g2256322566_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2256322566_)))
                                            (_g2256122592_
                                             (lambda (_g2256322574_)
                                               ((lambda (_L22577_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22577_ '()))
                           (cons _L22521_ '())))
               (gx#stx-source _stx22377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2256322574_))))
                                       (_g2256122592_
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (foldr (lambda (_g2259522598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2259622601_)
                      (cons _g2259522598_ _g2259622601_))
                    '()
                    _L22474_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22549_ '())))
                                         (gx#stx-source _stx22377_))))))
                                 _g2253522546_))))
                        (_g2253322604_ _body22390_))))
                  _g2250722518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2250522608_
                                                  (let _recur22612_ ((_rest22615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _clause22388_)
                             (_rest-targets22617_ _tgt-lst22379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((___stx4060240603_
                                                            _rest22615_)
                                                           (_g2262022632_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4060240603_))))
                                                      (let ((___kont4060540606_
                                                             (lambda (_L22668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22670_)
                       (let* ((_g2268522697_
                               (lambda (_g2268622693_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2268622693_)))
                              (_g2268422728_
                               (lambda (_g2268622701_)
                                 (if (gx#stx-pair? _g2268622701_)
                                     (let ((_e2268922704_
                                            (gx#syntax-e _g2268622701_)))
                                       (let ((_hd2269022708_
                                              (##car _e2268922704_))
                                             (_tl2269122711_
                                              (##cdr _e2268922704_)))
                                         ((lambda (_L22714_ _L22716_)
                                            (|gerbil/core$<match>[1]#generate-match1|
                                             _stx22377_
                                             _L22716_
                                             _L22670_
                                             (_recur22612_ _L22668_ _L22714_)
                                             _E22391_))
                                          _tl2269122711_
                                          _hd2269022708_)))
                                     (_g2268522697_ _g2268622701_)))))
                         (_g2268422728_ _rest-targets22617_))))
                    (___kont4060740608_
                     (lambda ()
                       (cons _L22476_
                             (foldr (lambda (_g2264222645_ _g2264322648_)
                                      (cons _g2264222645_ _g2264322648_))
                                    '()
                                    _L22474_)))))
                (if (gx#stx-pair? ___stx4060240603_)
                    (let ((_e2262422658_ (gx#syntax-e ___stx4060240603_)))
                      (let ((_tl2262622665_ (##cdr _e2262422658_))
                            (_hd2262522662_ (##car _e2262422658_)))
                        (___kont4060540606_ _tl2262622665_ _hd2262522662_)))
                    (___kont4060740608_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2241122470_
                                           _hd2239822428_)
                                          (_g2239322417_ _g2239422421_)))))))
                      (_loop2240622450_ _target2240322444_ '()))
                    (_g2239322417_ _g2239422421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2239322417_
                                                   _g2239422421_))))
                                          (_g2239322417_ _g2239422421_))))
                                  (_g2239322417_ _g2239422421_)))))
                      (_g2239222736_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22388_))))))))
          (_generate-body22384_
           (_parse-body22382_ (gx#stx-length _tgt-lst22379_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22279_ _tgt22281_ _clauses22282_)
        (letrec ((_reclause22284_
                  (lambda (_clause22287_)
                    (let* ((___stx4061840619_ _clause22287_)
                           (_g2229222307_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4061840619_))))
                      (let ((___kont4062140622_ (lambda () _clause22287_))
                            (___kont4062340624_
                             (lambda (_L22335_ _L22337_)
                               (gx#stx-wrap-source
                                (cons (cons _L22337_ '()) _L22335_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4062540626_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22279_
                                _clause22287_))))
                        (if (gx#stx-pair? ___stx4061840619_)
                            (let ((_e2229422359_
                                   (gx#syntax-e ___stx4061840619_)))
                              (let ((_tl2229622366_ (##cdr _e2229422359_))
                                    (_hd2229522363_ (##car _e2229422359_)))
                                (if (gx#identifier? _hd2229522363_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41757_|
                                         _hd2229522363_)
                                        (___kont4062140622_)
                                        (___kont4062340624_
                                         _tl2229622366_
                                         _hd2229522363_))
                                    (___kont4062340624_
                                     _tl2229622366_
                                     _hd2229522363_))))
                            (___kont4062540626_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx22279_
           (cons _tgt22281_ '())
           (gx#stx-map _reclause22284_ _clauses22282_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29918_)
        (let* ((___stx4064640647_ _stx29918_)
               (_g2992329952_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4064640647_))))
          (let ((___kont4064940650_
                 (lambda (_L30192_)
                   (let* ((_g3020530213_
                           (lambda (_g3020630209_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3020630209_)))
                          (_g3020430266_
                           (lambda (_g3020630217_)
                             ((lambda (_L30220_)
                                (let ()
                                  (let* ((_g3023230240_
                                          (lambda (_g3023330236_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3023330236_)))
                                         (_g3023130262_
                                          (lambda (_g3023330244_)
                                            ((lambda (_L30247_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30247_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3023330244_))))
                                    (_g3023130262_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30220_ _L30192_))
                                      (gx#stx-source _stx29918_))))))
                              _g3020630217_))))
                     (_g3020430266_ (gx#genident 'e)))))
                (___kont4065140652_
                 (lambda (_L30087_)
                   (let* ((_g3010030108_
                           (lambda (_g3010130104_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3010130104_)))
                          (_g3009930161_
                           (lambda (_g3010130112_)
                             ((lambda (_L30115_)
                                (let ()
                                  (let* ((_g3012730135_
                                          (lambda (_g3012830131_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3012830131_)))
                                         (_g3012630157_
                                          (lambda (_g3012830139_)
                                            ((lambda (_L30142_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30115_
                                                               (cons _L30142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3012830139_))))
                                    (_g3012630157_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30115_ _L30087_))
                                      (gx#stx-source _stx29918_))))))
                              _g3010130112_))))
                     (_g3009930161_ (gx#genident 'args)))))
                (___kont4065340654_
                 (lambda (_L29979_ _L29981_)
                   (let* ((_g2999530003_
                           (lambda (_g2999629999_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2999629999_)))
                          (_g2999430056_
                           (lambda (_g2999630007_)
                             ((lambda (_L30010_)
                                (let ()
                                  (let* ((_g3002230030_
                                          (lambda (_g3002330026_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3002330026_)))
                                         (_g3002130052_
                                          (lambda (_g3002330034_)
                                            ((lambda (_L30037_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L29981_ '()))
                             '())
                       (cons _L30037_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3002330034_))))
                                    (_g3002130052_
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx29918_
                                      _L30010_
                                      _L29979_)))))
                              _g2999630007_))))
                     (_g2999430056_ (gx#genident _L29981_))))))
            (let* ((___match4069940700_
                    (lambda (_e2994129959_
                             _hd2994229963_
                             _tl2994329966_
                             _e2994429969_
                             _hd2994529973_
                             _tl2994629976_)
                      (let ((_L29979_ _tl2994629976_)
                            (_L29981_ _hd2994529973_))
                        (if (gx#stx-list? _L29979_)
                            (___kont4065340654_ _L29979_ _L29981_)
                            (_g2992329952_)))))
                   (___match4068740688_
                    (lambda (_e2993330067_
                             _hd2993430071_
                             _tl2993530074_
                             _e2993630077_
                             _hd2993730081_
                             _tl2993830084_)
                      (let ((_L30087_ _tl2993830084_))
                        (if (gx#stx-list? _L30087_)
                            (___kont4065140652_ _L30087_)
                            (___match4069940700_
                             _e2993330067_
                             _hd2993430071_
                             _tl2993530074_
                             _e2993630077_
                             _hd2993730081_
                             _tl2993830084_)))))
                   (___match4067140672_
                    (lambda (_e2992630172_
                             _hd2992730176_
                             _tl2992830179_
                             _e2992930182_
                             _hd2993030186_
                             _tl2993130189_)
                      (let ((_L30192_ _tl2993130189_))
                        (if (gx#stx-list? _L30192_)
                            (___kont4064940650_ _L30192_)
                            (___match4069940700_
                             _e2992630172_
                             _hd2992730176_
                             _tl2992830179_
                             _e2992930182_
                             _hd2993030186_
                             _tl2993130189_))))))
              (if (gx#stx-pair? ___stx4064640647_)
                  (let ((_e2992630172_ (gx#syntax-e ___stx4064640647_)))
                    (let ((_tl2992830179_ (##cdr _e2992630172_))
                          (_hd2992730176_ (##car _e2992630172_)))
                      (if (gx#stx-pair? _tl2992830179_)
                          (let ((_e2992930182_ (gx#syntax-e _tl2992830179_)))
                            (let ((_tl2993130189_ (##cdr _e2992930182_))
                                  (_hd2993030186_ (##car _e2992930182_)))
                              (if (gx#identifier? _hd2993030186_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41758_|
                                       _hd2993030186_)
                                      (___match4067140672_
                                       _e2992630172_
                                       _hd2992730176_
                                       _tl2992830179_
                                       _e2992930182_
                                       _hd2993030186_
                                       _tl2993130189_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41759_|
                                           _hd2993030186_)
                                          (___match4068740688_
                                           _e2992630172_
                                           _hd2992730176_
                                           _tl2992830179_
                                           _e2992930182_
                                           _hd2993030186_
                                           _tl2993130189_)
                                          (___match4069940700_
                                           _e2992630172_
                                           _hd2992730176_
                                           _tl2992830179_
                                           _e2992930182_
                                           _hd2993030186_
                                           _tl2993130189_)))
                                  (___match4069940700_
                                   _e2992630172_
                                   _hd2992730176_
                                   _tl2992830179_
                                   _e2992930182_
                                   _hd2993030186_
                                   _tl2993130189_))))
                          (_g2992329952_))))
                  (_g2992329952_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30274_)
        (let* ((_g3027730301_
                (lambda (_g3027830297_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3027830297_)))
               (_g3027630513_
                (lambda (_g3027830305_)
                  (if (gx#stx-pair? _g3027830305_)
                      (let ((_e3028130308_ (gx#syntax-e _g3027830305_)))
                        (let ((_hd3028230312_ (##car _e3028130308_))
                              (_tl3028330315_ (##cdr _e3028130308_)))
                          (if (gx#stx-pair? _tl3028330315_)
                              (let ((_e3028430318_
                                     (gx#syntax-e _tl3028330315_)))
                                (let ((_hd3028530322_ (##car _e3028430318_))
                                      (_tl3028630325_ (##cdr _e3028430318_)))
                                  (if (gx#stx-pair/null? _hd3028530322_)
                                      (let ((_g41760_
                                             (gx#syntax-split-splice
                                              _hd3028530322_
                                              '0)))
                                        (begin
                                          (let ((_g41761_
                                                 (if (##values? _g41760_)
                                                     (##vector-length _g41760_)
                                                     1)))
                                            (if (not (##fx= _g41761_ 2))
                                                (error "Context expects 2 values"
                                                       _g41761_)))
                                          (let ((_target3028730328_
                                                 (##vector-ref _g41760_ 0))
                                                (_tl3028930331_
                                                 (##vector-ref _g41760_ 1)))
                                            (if (gx#stx-null? _tl3028930331_)
                                                (letrec ((_loop3029030334_
                                                          (lambda (_hd3028830338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3029430341_)
                    (if (gx#stx-pair? _hd3028830338_)
                        (let ((_e3029130344_ (gx#syntax-e _hd3028830338_)))
                          (let ((_lp-hd3029230348_ (##car _e3029130344_))
                                (_lp-tl3029330351_ (##cdr _e3029130344_)))
                            (_loop3029030334_
                             _lp-tl3029330351_
                             (cons _lp-hd3029230348_ _e3029430341_))))
                        (let ((_e3029530354_ (reverse _e3029430341_)))
                          ((lambda (_L30358_ _L30360_)
                             (if (gx#stx-list? _L30358_)
                                 (let* ((_g3037830395_
                                         (lambda (_g3037930391_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3037930391_)))
                                        (_g3037730501_
                                         (lambda (_g3037930399_)
                                           (if (gx#stx-pair/null?
                                                _g3037930399_)
                                               (let ((_g41762_
                                                      (gx#syntax-split-splice
                                                       _g3037930399_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41763_
                                                          (if (##values?
                                                               _g41762_)
                                                              (##vector-length
                                                               _g41762_)
                                                              1)))
                                                     (if (not (##fx= _g41763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3038130402_
                                                          (##vector-ref
                                                           _g41762_
                                                           0))
                                                         (_tl3038330405_
                                                          (##vector-ref
                                                           _g41762_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl3038330405_)
                                                         (letrec ((_loop3038430408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3038230412_ _$e3038830415_)
                             (if (gx#stx-pair? _hd3038230412_)
                                 (let ((_e3038530418_
                                        (gx#syntax-e _hd3038230412_)))
                                   (let ((_lp-hd3038630422_
                                          (##car _e3038530418_))
                                         (_lp-tl3038730425_
                                          (##cdr _e3038530418_)))
                                     (_loop3038430408_
                                      _lp-tl3038730425_
                                      (cons _lp-hd3038630422_
                                            _$e3038830415_))))
                                 (let ((_$e3038930428_
                                        (reverse _$e3038830415_)))
                                   ((lambda (_L30432_)
                                      (let ()
                                        (let* ((_g3044830456_
                                                (lambda (_g3044930452_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3044930452_)))
                                               (_g3044730489_
                                                (lambda (_g3044930460_)
                                                  ((lambda (_L30463_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30360_
                                _L30432_)
                               (foldr (lambda (_g3047730481_
                                               _g3047830484_
                                               _g3047930486_)
                                        (cons (cons _g3047830484_
                                                    (cons _g3047730481_ '()))
                                              _g3047930486_))
                                      '()
                                      _L30360_
                                      _L30432_))
                             (cons _L30463_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3044930460_))))
                                          (_g3044730489_
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx30274_
                                            (foldr (lambda (_g3049230495_
                                                            _g3049330498_)
                                                     (cons _g3049230495_
                                                           _g3049330498_))
                                                   '()
                                                   _L30432_)
                                            _L30358_)))))
                                    _$e3038930428_))))))
                   (_loop3038430408_ _target3038130402_ '()))
                 (_g3037830395_ _g3037930399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3037830395_
                                                _g3037930399_)))))
                                   (_g3037730501_
                                    (gx#gentemps
                                     (foldr (lambda (_g3050430507_
                                                     _g3050530510_)
                                              (cons _g3050430507_
                                                    _g3050530510_))
                                            '()
                                            _L30360_))))
                                 (_g3027730301_ _g3027830305_)))
                           _tl3028630325_
                           _e3029530354_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3029030334_
                                                   _target3028730328_
                                                   '()))
                                                (_g3027730301_
                                                 _g3027830305_)))))
                                      (_g3027730301_ _g3027830305_))))
                              (_g3027730301_ _g3027830305_))))
                      (_g3027730301_ _g3027830305_)))))
          (_g3027630513_ _stx30274_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30519_)
        (let* ((___stx4070240703_ _$stx30519_)
               (_g3052530608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4070240703_))))
          (let ((___kont4070540706_
                 (lambda (_L30938_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3095430957_ _g3095530960_)
                                        (cons _g3095430957_ _g3095530960_))
                                      '()
                                      _L30938_)))))
                (___kont4070940710_
                 (lambda (_L30846_ _L30848_ _L30849_ _L30850_)
                   (cons _L30850_
                         (cons (cons (cons _L30849_ (cons _L30848_ '())) '())
                               (foldr (lambda (_g3087230875_ _g3087330878_)
                                        (cons _g3087230875_ _g3087330878_))
                                      '()
                                      _L30846_)))))
                (___kont4071340714_
                 (lambda (_L30719_ _L30721_ _L30722_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3074430751_ _g3074530754_)
                                        (cons _g3074430751_ _g3074530754_))
                                      '()
                                      _L30721_)
                               (cons (cons (foldr (lambda (_g3074630757_
                                                           _g3074730760_)
                                                    (cons _g3074630757_
                                                          _g3074730760_))
                                                  '()
                                                  _L30722_)
                                           (foldr (lambda (_g3074830763_
                                                           _g3074930766_)
                                                    (cons _g3074830763_
                                                          _g3074930766_))
                                                  '()
                                                  _L30719_))
                                     '()))))))
            (let* ((___match4079540796_
                    (lambda (_e3057130615_
                             _hd3057230619_
                             _tl3057330622_
                             _e3057430625_
                             _hd3057530629_
                             _tl3057630632_
                             ___splice4071540716_
                             _target3057730635_
                             _tl3057930638_)
                      (letrec ((_loop3058030641_
                                (lambda (_hd3057830645_
                                         _expr3058430648_
                                         _hd3058530650_)
                                  (if (gx#stx-pair? _hd3057830645_)
                                      (let ((_e3058130653_
                                             (gx#syntax-e _hd3057830645_)))
                                        (let ((_lp-tl3058330660_
                                               (##cdr _e3058130653_))
                                              (_lp-hd3058230657_
                                               (##car _e3058130653_)))
                                          (if (gx#stx-pair? _lp-hd3058230657_)
                                              (let ((_e3058830663_
                                                     (gx#syntax-e
                                                      _lp-hd3058230657_)))
                                                (let ((_tl3059030670_
                                                       (##cdr _e3058830663_))
                                                      (_hd3058930667_
                                                       (##car _e3058830663_)))
                                                  (if (gx#stx-pair?
                                                       _tl3059030670_)
                                                      (let ((_e3059130673_
                                                             (gx#syntax-e
                                                              _tl3059030670_)))
                                                        (let ((_tl3059330680_
                                                               (##cdr _e3059130673_))
                                                              (_hd3059230677_
                                                               (##car _e3059130673_)))
                                                          (if (gx#stx-null?
                                                               _tl3059330680_)
                                                              (_loop3058030641_
                                                               _lp-tl3058330660_
                                                               (cons _hd3059230677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3058430648_)
                       (cons _hd3058930667_ _hd3058530650_))
                      (_g3052530608_))))
              (_g3052530608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3052530608_))))
                                      (let ((_hd3058730686_
                                             (reverse _hd3058530650_))
                                            (_expr3058630683_
                                             (reverse _expr3058430648_)))
                                        (if (gx#stx-pair/null? _tl3057630632_)
                                            (let ((___splice4071740718_
                                                   (gx#syntax-split-splice
                                                    _tl3057630632_
                                                    '0)))
                                              (let ((_tl3059630692_
                                                     (##vector-ref
                                                      ___splice4071740718_
                                                      '1))
                                                    (_target3059430689_
                                                     (##vector-ref
                                                      ___splice4071740718_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3059630692_)
                                                    (letrec ((_loop3059730695_
                                                              (lambda (_hd3059530699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3060130702_)
                        (if (gx#stx-pair? _hd3059530699_)
                            (let ((_e3059830705_ (gx#syntax-e _hd3059530699_)))
                              (let ((_lp-tl3060030712_ (##cdr _e3059830705_))
                                    (_lp-hd3059930709_ (##car _e3059830705_)))
                                (_loop3059730695_
                                 _lp-tl3060030712_
                                 (cons _lp-hd3059930709_ _body3060130702_))))
                            (let ((_body3060230715_
                                   (reverse _body3060130702_)))
                              (___kont4071340714_
                               _body3060230715_
                               _expr3058630683_
                               _hd3058730686_))))))
              (_loop3059730695_ _target3059430689_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3052530608_))))
                                            (_g3052530608_)))))))
                        (_loop3058030641_ _target3057730635_ '() '()))))
                   (___match4078740788_
                    (lambda (_e3057130615_
                             _hd3057230619_
                             _tl3057330622_
                             _e3057430625_
                             _hd3057530629_
                             _tl3057630632_)
                      (if (gx#stx-pair/null? _hd3057530629_)
                          (let ((___splice4071540716_
                                 (gx#syntax-split-splice _hd3057530629_ '0)))
                            (let ((_tl3057930638_
                                   (##vector-ref ___splice4071540716_ '1))
                                  (_target3057730635_
                                   (##vector-ref ___splice4071540716_ '0)))
                              (if (gx#stx-null? _tl3057930638_)
                                  (___match4079540796_
                                   _e3057130615_
                                   _hd3057230619_
                                   _tl3057330622_
                                   _e3057430625_
                                   _hd3057530629_
                                   _tl3057630632_
                                   ___splice4071540716_
                                   _target3057730635_
                                   _tl3057930638_)
                                  (_g3052530608_))))
                          (_g3052530608_))))
                   (___match4077540776_
                    (lambda (_e3054730776_
                             _hd3054830780_
                             _tl3054930783_
                             _e3055030786_
                             _hd3055130790_
                             _tl3055230793_
                             _e3055330796_
                             _hd3055430800_
                             _tl3055530803_
                             _e3055630806_
                             _hd3055730810_
                             _tl3055830813_
                             ___splice4071140712_
                             _target3055930816_
                             _tl3056130819_)
                      (letrec ((_loop3056230822_
                                (lambda (_hd3056030826_ _body3056630829_)
                                  (if (gx#stx-pair? _hd3056030826_)
                                      (let ((_e3056330832_
                                             (gx#syntax-e _hd3056030826_)))
                                        (let ((_lp-tl3056530839_
                                               (##cdr _e3056330832_))
                                              (_lp-hd3056430836_
                                               (##car _e3056330832_)))
                                          (_loop3056230822_
                                           _lp-tl3056530839_
                                           (cons _lp-hd3056430836_
                                                 _body3056630829_))))
                                      (let ((_body3056730842_
                                             (reverse _body3056630829_)))
                                        (let ((_L30846_ _body3056730842_)
                                              (_L30848_ _hd3055730810_)
                                              (_L30849_ _hd3055430800_)
                                              (_L30850_ _hd3054830780_))
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L30849_)
                                              (___kont4070940710_
                                               _L30846_
                                               _L30848_
                                               _L30849_
                                               _L30850_)
                                              (___match4078740788_
                                               _e3054730776_
                                               _hd3054830780_
                                               _tl3054930783_
                                               _e3055030786_
                                               _hd3055130790_
                                               _tl3055230793_))))))))
                        (_loop3056230822_ _target3055930816_ '()))))
                   (___match4074140742_
                    (lambda (_e3052830888_
                             _hd3052930892_
                             _tl3053030895_
                             _e3053130898_
                             _hd3053230902_
                             _tl3053330905_
                             ___splice4070740708_
                             _target3053430908_
                             _tl3053630911_)
                      (letrec ((_loop3053730914_
                                (lambda (_hd3053530918_ _body3054130921_)
                                  (if (gx#stx-pair? _hd3053530918_)
                                      (let ((_e3053830924_
                                             (gx#syntax-e _hd3053530918_)))
                                        (let ((_lp-tl3054030931_
                                               (##cdr _e3053830924_))
                                              (_lp-hd3053930928_
                                               (##car _e3053830924_)))
                                          (_loop3053730914_
                                           _lp-tl3054030931_
                                           (cons _lp-hd3053930928_
                                                 _body3054130921_))))
                                      (let ((_body3054230934_
                                             (reverse _body3054130921_)))
                                        (___kont4070540706_
                                         _body3054230934_))))))
                        (_loop3053730914_ _target3053430908_ '())))))
              (if (gx#stx-pair? ___stx4070240703_)
                  (let ((_e3052830888_ (gx#syntax-e ___stx4070240703_)))
                    (let ((_tl3053030895_ (##cdr _e3052830888_))
                          (_hd3052930892_ (##car _e3052830888_)))
                      (if (gx#stx-pair? _tl3053030895_)
                          (let ((_e3053130898_ (gx#syntax-e _tl3053030895_)))
                            (let ((_tl3053330905_ (##cdr _e3053130898_))
                                  (_hd3053230902_ (##car _e3053130898_)))
                              (if (gx#stx-null? _hd3053230902_)
                                  (if (gx#stx-pair/null? _tl3053330905_)
                                      (let ((___splice4070740708_
                                             (gx#syntax-split-splice
                                              _tl3053330905_
                                              '0)))
                                        (let ((_tl3053630911_
                                               (##vector-ref
                                                ___splice4070740708_
                                                '1))
                                              (_target3053430908_
                                               (##vector-ref
                                                ___splice4070740708_
                                                '0)))
                                          (if (gx#stx-null? _tl3053630911_)
                                              (___match4074140742_
                                               _e3052830888_
                                               _hd3052930892_
                                               _tl3053030895_
                                               _e3053130898_
                                               _hd3053230902_
                                               _tl3053330905_
                                               ___splice4070740708_
                                               _target3053430908_
                                               _tl3053630911_)
                                              (if (gx#stx-pair/null?
                                                   _hd3053230902_)
                                                  (let ((___splice4071540716_
                                                         (gx#syntax-split-splice
                                                          _hd3053230902_
                                                          '0)))
                                                    (let ((_tl3057930638_
                                                           (##vector-ref
                                                            ___splice4071540716_
                                                            '1))
                                                          (_target3057730635_
                                                           (##vector-ref
                                                            ___splice4071540716_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3057930638_)
                                                          (___match4079540796_
                                                           _e3052830888_
                                                           _hd3052930892_
                                                           _tl3053030895_
                                                           _e3053130898_
                                                           _hd3053230902_
                                                           _tl3053330905_
                                                           ___splice4071540716_
                                                           _target3057730635_
                                                           _tl3057930638_)
                                                          (_g3052530608_))))
                                                  (_g3052530608_)))))
                                      (if (gx#stx-pair/null? _hd3053230902_)
                                          (let ((___splice4071540716_
                                                 (gx#syntax-split-splice
                                                  _hd3053230902_
                                                  '0)))
                                            (let ((_tl3057930638_
                                                   (##vector-ref
                                                    ___splice4071540716_
                                                    '1))
                                                  (_target3057730635_
                                                   (##vector-ref
                                                    ___splice4071540716_
                                                    '0)))
                                              (if (gx#stx-null? _tl3057930638_)
                                                  (___match4079540796_
                                                   _e3052830888_
                                                   _hd3052930892_
                                                   _tl3053030895_
                                                   _e3053130898_
                                                   _hd3053230902_
                                                   _tl3053330905_
                                                   ___splice4071540716_
                                                   _target3057730635_
                                                   _tl3057930638_)
                                                  (_g3052530608_))))
                                          (_g3052530608_)))
                                  (if (gx#stx-pair? _hd3053230902_)
                                      (let ((_e3055330796_
                                             (gx#syntax-e _hd3053230902_)))
                                        (let ((_tl3055530803_
                                               (##cdr _e3055330796_))
                                              (_hd3055430800_
                                               (##car _e3055330796_)))
                                          (if (gx#stx-pair? _tl3055530803_)
                                              (let ((_e3055630806_
                                                     (gx#syntax-e
                                                      _tl3055530803_)))
                                                (let ((_tl3055830813_
                                                       (##cdr _e3055630806_))
                                                      (_hd3055730810_
                                                       (##car _e3055630806_)))
                                                  (if (gx#stx-null?
                                                       _tl3055830813_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3053330905_)
                                                          (let ((___splice4071140712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3053330905_ '0)))
                    (let ((_tl3056130819_
                           (##vector-ref ___splice4071140712_ '1))
                          (_target3055930816_
                           (##vector-ref ___splice4071140712_ '0)))
                      (if (gx#stx-null? _tl3056130819_)
                          (___match4077540776_
                           _e3052830888_
                           _hd3052930892_
                           _tl3053030895_
                           _e3053130898_
                           _hd3053230902_
                           _tl3053330905_
                           _e3055330796_
                           _hd3055430800_
                           _tl3055530803_
                           _e3055630806_
                           _hd3055730810_
                           _tl3055830813_
                           ___splice4071140712_
                           _target3055930816_
                           _tl3056130819_)
                          (if (gx#stx-pair/null? _hd3053230902_)
                              (let ((___splice4071540716_
                                     (gx#syntax-split-splice
                                      _hd3053230902_
                                      '0)))
                                (let ((_tl3057930638_
                                       (##vector-ref ___splice4071540716_ '1))
                                      (_target3057730635_
                                       (##vector-ref ___splice4071540716_ '0)))
                                  (if (gx#stx-null? _tl3057930638_)
                                      (___match4079540796_
                                       _e3052830888_
                                       _hd3052930892_
                                       _tl3053030895_
                                       _e3053130898_
                                       _hd3053230902_
                                       _tl3053330905_
                                       ___splice4071540716_
                                       _target3057730635_
                                       _tl3057930638_)
                                      (_g3052530608_))))
                              (_g3052530608_)))))
                  (if (gx#stx-pair/null? _hd3053230902_)
                      (let ((___splice4071540716_
                             (gx#syntax-split-splice _hd3053230902_ '0)))
                        (let ((_tl3057930638_
                               (##vector-ref ___splice4071540716_ '1))
                              (_target3057730635_
                               (##vector-ref ___splice4071540716_ '0)))
                          (if (gx#stx-null? _tl3057930638_)
                              (___match4079540796_
                               _e3052830888_
                               _hd3052930892_
                               _tl3053030895_
                               _e3053130898_
                               _hd3053230902_
                               _tl3053330905_
                               ___splice4071540716_
                               _target3057730635_
                               _tl3057930638_)
                              (_g3052530608_))))
                      (_g3052530608_)))
              (if (gx#stx-pair/null? _hd3053230902_)
                  (let ((___splice4071540716_
                         (gx#syntax-split-splice _hd3053230902_ '0)))
                    (let ((_tl3057930638_
                           (##vector-ref ___splice4071540716_ '1))
                          (_target3057730635_
                           (##vector-ref ___splice4071540716_ '0)))
                      (if (gx#stx-null? _tl3057930638_)
                          (___match4079540796_
                           _e3052830888_
                           _hd3052930892_
                           _tl3053030895_
                           _e3053130898_
                           _hd3053230902_
                           _tl3053330905_
                           ___splice4071540716_
                           _target3057730635_
                           _tl3057930638_)
                          (_g3052530608_))))
                  (_g3052530608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3053230902_)
                                                  (let ((___splice4071540716_
                                                         (gx#syntax-split-splice
                                                          _hd3053230902_
                                                          '0)))
                                                    (let ((_tl3057930638_
                                                           (##vector-ref
                                                            ___splice4071540716_
                                                            '1))
                                                          (_target3057730635_
                                                           (##vector-ref
                                                            ___splice4071540716_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3057930638_)
                                                          (___match4079540796_
                                                           _e3052830888_
                                                           _hd3052930892_
                                                           _tl3053030895_
                                                           _e3053130898_
                                                           _hd3053230902_
                                                           _tl3053330905_
                                                           ___splice4071540716_
                                                           _target3057730635_
                                                           _tl3057930638_)
                                                          (_g3052530608_))))
                                                  (_g3052530608_)))))
                                      (if (gx#stx-pair/null? _hd3053230902_)
                                          (let ((___splice4071540716_
                                                 (gx#syntax-split-splice
                                                  _hd3053230902_
                                                  '0)))
                                            (let ((_tl3057930638_
                                                   (##vector-ref
                                                    ___splice4071540716_
                                                    '1))
                                                  (_target3057730635_
                                                   (##vector-ref
                                                    ___splice4071540716_
                                                    '0)))
                                              (if (gx#stx-null? _tl3057930638_)
                                                  (___match4079540796_
                                                   _e3052830888_
                                                   _hd3052930892_
                                                   _tl3053030895_
                                                   _e3053130898_
                                                   _hd3053230902_
                                                   _tl3053330905_
                                                   ___splice4071540716_
                                                   _target3057730635_
                                                   _tl3057930638_)
                                                  (_g3052530608_))))
                                          (_g3052530608_))))))
                          (_g3052530608_))))
                  (_g3052530608_)))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx30971_)
        (let* ((___stx4079840799_ _$stx30971_)
               (_g3097631028_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4079840799_))))
          (let ((___kont4080140802_
                 (lambda (_L31198_ _L31200_ _L31201_ _L31202_ _L31203_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31202_ (cons _L31201_ '())) '())
                               (cons (cons _L31203_
                                           (cons _L31200_
                                                 (foldr (lambda (_g3122831231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3122931234_)
                  (cons _g3122831231_ _g3122931234_))
                '()
                _L31198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4080540806_
                 (lambda (_L31085_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3110231105_ _g3110331108_)
                                        (cons _g3110231105_ _g3110331108_))
                                      '()
                                      _L31085_))))))
            (let* ((___match4087140872_
                    (lambda (_e3100831035_
                             _hd3100931039_
                             _tl3101031042_
                             _e3101131045_
                             _hd3101231049_
                             _tl3101331052_
                             ___splice4080740808_
                             _target3101431055_
                             _tl3101631058_)
                      (letrec ((_loop3101731061_
                                (lambda (_hd3101531065_ _body3102131068_)
                                  (if (gx#stx-pair? _hd3101531065_)
                                      (let ((_e3101831071_
                                             (gx#syntax-e _hd3101531065_)))
                                        (let ((_lp-tl3102031078_
                                               (##cdr _e3101831071_))
                                              (_lp-hd3101931075_
                                               (##car _e3101831071_)))
                                          (_loop3101731061_
                                           _lp-tl3102031078_
                                           (cons _lp-hd3101931075_
                                                 _body3102131068_))))
                                      (let ((_body3102231081_
                                             (reverse _body3102131068_)))
                                        (___kont4080540806_
                                         _body3102231081_))))))
                        (_loop3101731061_ _target3101431055_ '()))))
                   (___match4084940850_
                    (lambda (_e3098331118_
                             _hd3098431122_
                             _tl3098531125_
                             _e3098631128_
                             _hd3098731132_
                             _tl3098831135_
                             _e3098931138_
                             _hd3099031142_
                             _tl3099131145_
                             _e3099231148_
                             _hd3099331152_
                             _tl3099431155_
                             _e3099531158_
                             _hd3099631162_
                             _tl3099731165_
                             ___splice4080340804_
                             _target3099831168_
                             _tl3100031171_)
                      (letrec ((_loop3100131174_
                                (lambda (_hd3099931178_ _body3100531181_)
                                  (if (gx#stx-pair? _hd3099931178_)
                                      (let ((_e3100231184_
                                             (gx#syntax-e _hd3099931178_)))
                                        (let ((_lp-tl3100431191_
                                               (##cdr _e3100231184_))
                                              (_lp-hd3100331188_
                                               (##car _e3100231184_)))
                                          (_loop3100131174_
                                           _lp-tl3100431191_
                                           (cons _lp-hd3100331188_
                                                 _body3100531181_))))
                                      (let ((_body3100631194_
                                             (reverse _body3100531181_)))
                                        (___kont4080140802_
                                         _body3100631194_
                                         _tl3099131145_
                                         _hd3099631162_
                                         _hd3099331152_
                                         _hd3098431122_))))))
                        (_loop3100131174_ _target3099831168_ '())))))
              (if (gx#stx-pair? ___stx4079840799_)
                  (let ((_e3098331118_ (gx#syntax-e ___stx4079840799_)))
                    (let ((_tl3098531125_ (##cdr _e3098331118_))
                          (_hd3098431122_ (##car _e3098331118_)))
                      (if (gx#stx-pair? _tl3098531125_)
                          (let ((_e3098631128_ (gx#syntax-e _tl3098531125_)))
                            (let ((_tl3098831135_ (##cdr _e3098631128_))
                                  (_hd3098731132_ (##car _e3098631128_)))
                              (if (gx#stx-pair? _hd3098731132_)
                                  (let ((_e3098931138_
                                         (gx#syntax-e _hd3098731132_)))
                                    (let ((_tl3099131145_
                                           (##cdr _e3098931138_))
                                          (_hd3099031142_
                                           (##car _e3098931138_)))
                                      (if (gx#stx-pair? _hd3099031142_)
                                          (let ((_e3099231148_
                                                 (gx#syntax-e _hd3099031142_)))
                                            (let ((_tl3099431155_
                                                   (##cdr _e3099231148_))
                                                  (_hd3099331152_
                                                   (##car _e3099231148_)))
                                              (if (gx#stx-pair? _tl3099431155_)
                                                  (let ((_e3099531158_
                                                         (gx#syntax-e
                                                          _tl3099431155_)))
                                                    (let ((_tl3099731165_
                                                           (##cdr _e3099531158_))
                                                          (_hd3099631162_
                                                           (##car _e3099531158_)))
                                                      (if (gx#stx-null?
                                                           _tl3099731165_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3098831135_)
                                                              (let ((___splice4080340804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3098831135_ '0)))
                        (let ((_tl3100031171_
                               (##vector-ref ___splice4080340804_ '1))
                              (_target3099831168_
                               (##vector-ref ___splice4080340804_ '0)))
                          (if (gx#stx-null? _tl3100031171_)
                              (___match4084940850_
                               _e3098331118_
                               _hd3098431122_
                               _tl3098531125_
                               _e3098631128_
                               _hd3098731132_
                               _tl3098831135_
                               _e3098931138_
                               _hd3099031142_
                               _tl3099131145_
                               _e3099231148_
                               _hd3099331152_
                               _tl3099431155_
                               _e3099531158_
                               _hd3099631162_
                               _tl3099731165_
                               ___splice4080340804_
                               _target3099831168_
                               _tl3100031171_)
                              (_g3097631028_))))
                      (_g3097631028_))
                  (_g3097631028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3097631028_))))
                                          (_g3097631028_))))
                                  (if (gx#stx-null? _hd3098731132_)
                                      (if (gx#stx-pair/null? _tl3098831135_)
                                          (let ((___splice4080740808_
                                                 (gx#syntax-split-splice
                                                  _tl3098831135_
                                                  '0)))
                                            (let ((_tl3101631058_
                                                   (##vector-ref
                                                    ___splice4080740808_
                                                    '1))
                                                  (_target3101431055_
                                                   (##vector-ref
                                                    ___splice4080740808_
                                                    '0)))
                                              (if (gx#stx-null? _tl3101631058_)
                                                  (___match4087140872_
                                                   _e3098331118_
                                                   _hd3098431122_
                                                   _tl3098531125_
                                                   _e3098631128_
                                                   _hd3098731132_
                                                   _tl3098831135_
                                                   ___splice4080740808_
                                                   _target3101431055_
                                                   _tl3101631058_)
                                                  (_g3097631028_))))
                                          (_g3097631028_))
                                      (_g3097631028_)))))
                          (_g3097631028_))))
                  (_g3097631028_)))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31243_)
        (let* ((___stx4087440875_ _$stx31243_)
               (_g3125431400_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4087440875_))))
          (let ((___kont4087740878_
                 (lambda (_L32004_ _L32006_ _L32007_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3202832031_ _g3202932034_)
                                  (cons (cons _L32007_
                                              (cons _g3202832031_
                                                    (cons _L32004_ '())))
                                        _g3202932034_))
                                '()
                                _L32006_))))
                (___kont4088140882_
                 (lambda (_L31894_ _L31896_ _L31897_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3191831921_ _g3191931924_)
                                  (cons (cons _L31897_
                                              (cons _g3191831921_
                                                    (cons _L31894_ '())))
                                        _g3191931924_))
                                '()
                                _L31896_))))
                (___kont4088540886_
                 (lambda (_L31794_ _L31796_ _L31797_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L31797_
                                     (cons _L31796_ (cons _L31794_ '())))
                               '()))))
                (___kont4088740888_
                 (lambda (_L31720_ _L31722_)
                   (cons _L31722_ (cons _L31720_ '()))))
                (___kont4088940890_
                 (lambda (_L31668_ _L31670_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31670_
                                           (cons _L31668_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4089140892_
                 (lambda (_L31620_ _L31622_ _L31623_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31623_
                                                       (cons _L31622_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31620_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4089340894_
                 (lambda (_L31551_ _L31553_ _L31554_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31553_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31551_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4089540896_
                 (lambda (_L31471_ _L31473_ _L31474_ _L31475_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31475_
                                                       (cons _L31474_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31471_
                                                             (cons (cons _L31473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4104741048_
                    (lambda (_e3134431580_
                             _hd3134531584_
                             _tl3134631587_
                             _e3134731590_
                             _hd3134831594_
                             _tl3134931597_
                             _e3135031600_
                             _hd3135131604_
                             _tl3135231607_)
                      (if (gx#identifier? _hd3135131604_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41764_|
                               _hd3135131604_)
                              (if (gx#stx-pair? _tl3135231607_)
                                  (let ((_e3135331610_
                                         (gx#syntax-e _tl3135231607_)))
                                    (let ((_tl3135531617_
                                           (##cdr _e3135331610_))
                                          (_hd3135431614_
                                           (##car _e3135331610_)))
                                      (if (gx#stx-null? _tl3135531617_)
                                          (___kont4089140892_
                                           _hd3135431614_
                                           _hd3134831594_
                                           _hd3134531584_)
                                          (_g3125431400_))))
                                  (_g3125431400_))
                              (_g3125431400_))
                          (if (gx#stx-datum? _hd3135131604_)
                              (let ((_e3136831537_ (gx#stx-e _hd3135131604_)))
                                (if (equal? _e3136831537_ '::)
                                    (if (gx#stx-pair? _tl3135231607_)
                                        (let ((_e3136931541_
                                               (gx#syntax-e _tl3135231607_)))
                                          (let ((_tl3137131548_
                                                 (##cdr _e3136931541_))
                                                (_hd3137031545_
                                                 (##car _e3136931541_)))
                                            (if (gx#stx-null? _tl3137131548_)
                                                (___kont4089340894_
                                                 _hd3137031545_
                                                 _hd3134831594_
                                                 _hd3134531584_)
                                                (if (gx#stx-pair?
                                                     _tl3137131548_)
                                                    (let ((_e3138931451_
                                                           (gx#syntax-e
                                                            _tl3137131548_)))
                                                      (let ((_tl3139131458_
                                                             (##cdr _e3138931451_))
                                                            (_hd3139031455_
                                                             (##car _e3138931451_)))
                                                        (if (gx#identifier?
                                                             _hd3139031455_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41765_|
                         _hd3139031455_)
                        (if (gx#stx-pair? _tl3139131458_)
                            (let ((_e3139231461_ (gx#syntax-e _tl3139131458_)))
                              (let ((_tl3139431468_ (##cdr _e3139231461_))
                                    (_hd3139331465_ (##car _e3139231461_)))
                                (if (gx#stx-null? _tl3139431468_)
                                    (___kont4089540896_
                                     _hd3139331465_
                                     _hd3137031545_
                                     _hd3134831594_
                                     _hd3134531584_)
                                    (_g3125431400_))))
                            (_g3125431400_))
                        (_g3125431400_))
                    (_g3125431400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_)))))
                                        (_g3125431400_))
                                    (_g3125431400_)))
                              (_g3125431400_)))))
                   (___match4102741028_
                    (lambda (_e3133531648_
                             _hd3133631652_
                             _tl3133731655_
                             _e3133831658_
                             _hd3133931662_
                             _tl3134031665_)
                      (if (gx#stx-null? _tl3134031665_)
                          (___kont4088940890_ _hd3133931662_ _hd3133631652_)
                          (if (gx#stx-pair? _tl3134031665_)
                              (let ((_e3135031600_
                                     (gx#syntax-e _tl3134031665_)))
                                (let ((_tl3135231607_ (##cdr _e3135031600_))
                                      (_hd3135131604_ (##car _e3135031600_)))
                                  (if (gx#identifier? _hd3135131604_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41764_|
                                           _hd3135131604_)
                                          (if (gx#stx-pair? _tl3135231607_)
                                              (let ((_e3135331610_
                                                     (gx#syntax-e
                                                      _tl3135231607_)))
                                                (let ((_tl3135531617_
                                                       (##cdr _e3135331610_))
                                                      (_hd3135431614_
                                                       (##car _e3135331610_)))
                                                  (if (gx#stx-null?
                                                       _tl3135531617_)
                                                      (___kont4089140892_
                                                       _hd3135431614_
                                                       _hd3133931662_
                                                       _hd3133631652_)
                                                      (_g3125431400_))))
                                              (_g3125431400_))
                                          (_g3125431400_))
                                      (if (gx#stx-datum? _hd3135131604_)
                                          (let ((_e3136831537_
                                                 (gx#stx-e _hd3135131604_)))
                                            (if (equal? _e3136831537_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3135231607_)
                                                    (let ((_e3136931541_
                                                           (gx#syntax-e
                                                            _tl3135231607_)))
                                                      (let ((_tl3137131548_
                                                             (##cdr _e3136931541_))
                                                            (_hd3137031545_
                                                             (##car _e3136931541_)))
                                                        (if (gx#stx-null?
                                                             _tl3137131548_)
                                                            (___kont4089340894_
                                                             _hd3137031545_
                                                             _hd3133931662_
                                                             _hd3133631652_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3137131548_)
                        (let ((_e3138931451_ (gx#syntax-e _tl3137131548_)))
                          (let ((_tl3139131458_ (##cdr _e3138931451_))
                                (_hd3139031455_ (##car _e3138931451_)))
                            (if (gx#identifier? _hd3139031455_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41765_|
                                     _hd3139031455_)
                                    (if (gx#stx-pair? _tl3139131458_)
                                        (let ((_e3139231461_
                                               (gx#syntax-e _tl3139131458_)))
                                          (let ((_tl3139431468_
                                                 (##cdr _e3139231461_))
                                                (_hd3139331465_
                                                 (##car _e3139231461_)))
                                            (if (gx#stx-null? _tl3139431468_)
                                                (___kont4089540896_
                                                 _hd3139331465_
                                                 _hd3137031545_
                                                 _hd3133931662_
                                                 _hd3133631652_)
                                                (_g3125431400_))))
                                        (_g3125431400_))
                                    (_g3125431400_))
                                (_g3125431400_))))
                        (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_))
                                                (_g3125431400_)))
                                          (_g3125431400_)))))
                              (_g3125431400_)))))
                   (___match4095740958_
                    (lambda (_e3128331824_
                             _hd3128431828_
                             _tl3128531831_
                             _e3128631834_
                             _hd3128731838_
                             _tl3128831841_
                             _e3128931844_
                             _hd3129031848_
                             _tl3129131851_
                             ___splice4088340884_
                             _target3129231854_
                             _tl3129431857_)
                      (letrec ((_loop3129531860_
                                (lambda (_hd3129331864_ _pred3129931867_)
                                  (if (gx#stx-pair? _hd3129331864_)
                                      (let ((_e3129631870_
                                             (gx#syntax-e _hd3129331864_)))
                                        (let ((_lp-tl3129831877_
                                               (##cdr _e3129631870_))
                                              (_lp-hd3129731874_
                                               (##car _e3129631870_)))
                                          (_loop3129531860_
                                           _lp-tl3129831877_
                                           (cons _lp-hd3129731874_
                                                 _pred3129931867_))))
                                      (let ((_pred3130031880_
                                             (reverse _pred3129931867_)))
                                        (if (gx#stx-pair? _tl3128831841_)
                                            (let ((_e3130131884_
                                                   (gx#syntax-e
                                                    _tl3128831841_)))
                                              (let ((_tl3130331891_
                                                     (##cdr _e3130131884_))
                                                    (_hd3130231888_
                                                     (##car _e3130131884_)))
                                                (if (gx#stx-null?
                                                     _tl3130331891_)
                                                    (___kont4088140882_
                                                     _hd3130231888_
                                                     _pred3130031880_
                                                     _hd3128431828_)
                                                    (___match4104741048_
                                                     _e3128331824_
                                                     _hd3128431828_
                                                     _tl3128531831_
                                                     _e3128631834_
                                                     _hd3128731838_
                                                     _tl3128831841_
                                                     _e3130131884_
                                                     _hd3130231888_
                                                     _tl3130331891_))))
                                            (___match4102741028_
                                             _e3128331824_
                                             _hd3128431828_
                                             _tl3128531831_
                                             _e3128631834_
                                             _hd3128731838_
                                             _tl3128831841_)))))))
                        (_loop3129531860_ _target3129231854_ '()))))
                   (___match4092740928_
                    (lambda (_e3125931934_
                             _hd3126031938_
                             _tl3126131941_
                             _e3126231944_
                             _hd3126331948_
                             _tl3126431951_
                             _e3126531954_
                             _hd3126631958_
                             _tl3126731961_
                             ___splice4087940880_
                             _target3126831964_
                             _tl3127031967_)
                      (letrec ((_loop3127131970_
                                (lambda (_hd3126931974_ _pred3127531977_)
                                  (if (gx#stx-pair? _hd3126931974_)
                                      (let ((_e3127231980_
                                             (gx#syntax-e _hd3126931974_)))
                                        (let ((_lp-tl3127431987_
                                               (##cdr _e3127231980_))
                                              (_lp-hd3127331984_
                                               (##car _e3127231980_)))
                                          (_loop3127131970_
                                           _lp-tl3127431987_
                                           (cons _lp-hd3127331984_
                                                 _pred3127531977_))))
                                      (let ((_pred3127631990_
                                             (reverse _pred3127531977_)))
                                        (if (gx#stx-pair? _tl3126431951_)
                                            (let ((_e3127731994_
                                                   (gx#syntax-e
                                                    _tl3126431951_)))
                                              (let ((_tl3127932001_
                                                     (##cdr _e3127731994_))
                                                    (_hd3127831998_
                                                     (##car _e3127731994_)))
                                                (if (gx#stx-null?
                                                     _tl3127932001_)
                                                    (___kont4087740878_
                                                     _hd3127831998_
                                                     _pred3127631990_
                                                     _hd3126031938_)
                                                    (___match4104741048_
                                                     _e3125931934_
                                                     _hd3126031938_
                                                     _tl3126131941_
                                                     _e3126231944_
                                                     _hd3126331948_
                                                     _tl3126431951_
                                                     _e3127731994_
                                                     _hd3127831998_
                                                     _tl3127932001_))))
                                            (___match4102741028_
                                             _e3125931934_
                                             _hd3126031938_
                                             _tl3126131941_
                                             _e3126231944_
                                             _hd3126331948_
                                             _tl3126431951_)))))))
                        (_loop3127131970_ _target3126831964_ '())))))
              (if (gx#stx-pair? ___stx4087440875_)
                  (let ((_e3125931934_ (gx#syntax-e ___stx4087440875_)))
                    (let ((_tl3126131941_ (##cdr _e3125931934_))
                          (_hd3126031938_ (##car _e3125931934_)))
                      (if (gx#stx-pair? _tl3126131941_)
                          (let ((_e3126231944_ (gx#syntax-e _tl3126131941_)))
                            (let ((_tl3126431951_ (##cdr _e3126231944_))
                                  (_hd3126331948_ (##car _e3126231944_)))
                              (if (gx#stx-pair? _hd3126331948_)
                                  (let ((_e3126531954_
                                         (gx#syntax-e _hd3126331948_)))
                                    (let ((_tl3126731961_
                                           (##cdr _e3126531954_))
                                          (_hd3126631958_
                                           (##car _e3126531954_)))
                                      (if (gx#identifier? _hd3126631958_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41766_|
                                               _hd3126631958_)
                                              (if (gx#stx-pair/null?
                                                   _tl3126731961_)
                                                  (let ((___splice4087940880_
                                                         (gx#syntax-split-splice
                                                          _tl3126731961_
                                                          '0)))
                                                    (let ((_tl3127031967_
                                                           (##vector-ref
                                                            ___splice4087940880_
                                                            '1))
                                                          (_target3126831964_
                                                           (##vector-ref
                                                            ___splice4087940880_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3127031967_)
                                                          (___match4092740928_
                                                           _e3125931934_
                                                           _hd3126031938_
                                                           _tl3126131941_
                                                           _e3126231944_
                                                           _hd3126331948_
                                                           _tl3126431951_
                                                           _e3126531954_
                                                           _hd3126631958_
                                                           _tl3126731961_
                                                           ___splice4087940880_
                                                           _target3126831964_
                                                           _tl3127031967_)
                                                          (if (gx#stx-pair?
                                                               _tl3126431951_)
                                                              (let ((_e3133031710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3126431951_)))
                        (let ((_tl3133231717_ (##cdr _e3133031710_))
                              (_hd3133131714_ (##car _e3133031710_)))
                          (if (gx#stx-null? _tl3133231717_)
                              (___kont4088740888_
                               _hd3133131714_
                               _hd3126331948_)
                              (if (gx#identifier? _hd3133131714_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41764_|
                                       _hd3133131714_)
                                      (if (gx#stx-pair? _tl3133231717_)
                                          (let ((_e3135331610_
                                                 (gx#syntax-e _tl3133231717_)))
                                            (let ((_tl3135531617_
                                                   (##cdr _e3135331610_))
                                                  (_hd3135431614_
                                                   (##car _e3135331610_)))
                                              (if (gx#stx-null? _tl3135531617_)
                                                  (___kont4089140892_
                                                   _hd3135431614_
                                                   _hd3126331948_
                                                   _hd3126031938_)
                                                  (_g3125431400_))))
                                          (_g3125431400_))
                                      (_g3125431400_))
                                  (if (gx#stx-datum? _hd3133131714_)
                                      (let ((_e3136831537_
                                             (gx#stx-e _hd3133131714_)))
                                        (if (equal? _e3136831537_ '::)
                                            (if (gx#stx-pair? _tl3133231717_)
                                                (let ((_e3136931541_
                                                       (gx#syntax-e
                                                        _tl3133231717_)))
                                                  (let ((_tl3137131548_
                                                         (##cdr _e3136931541_))
                                                        (_hd3137031545_
                                                         (##car _e3136931541_)))
                                                    (if (gx#stx-null?
                                                         _tl3137131548_)
                                                        (___kont4089340894_
                                                         _hd3137031545_
                                                         _hd3126331948_
                                                         _hd3126031938_)
                                                        (if (gx#stx-pair?
                                                             _tl3137131548_)
                                                            (let ((_e3138931451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3137131548_)))
                      (let ((_tl3139131458_ (##cdr _e3138931451_))
                            (_hd3139031455_ (##car _e3138931451_)))
                        (if (gx#identifier? _hd3139031455_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41765_|
                                 _hd3139031455_)
                                (if (gx#stx-pair? _tl3139131458_)
                                    (let ((_e3139231461_
                                           (gx#syntax-e _tl3139131458_)))
                                      (let ((_tl3139431468_
                                             (##cdr _e3139231461_))
                                            (_hd3139331465_
                                             (##car _e3139231461_)))
                                        (if (gx#stx-null? _tl3139431468_)
                                            (___kont4089540896_
                                             _hd3139331465_
                                             _hd3137031545_
                                             _hd3126331948_
                                             _hd3126031938_)
                                            (_g3125431400_))))
                                    (_g3125431400_))
                                (_g3125431400_))
                            (_g3125431400_))))
                    (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3125431400_))
                                            (_g3125431400_)))
                                      (_g3125431400_))))))
                      (if (gx#stx-null? _tl3126431951_)
                          (___kont4088940890_ _hd3126331948_ _hd3126031938_)
                          (_g3125431400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3126431951_)
                                                      (let ((_e3133031710_
                                                             (gx#syntax-e
                                                              _tl3126431951_)))
                                                        (let ((_tl3133231717_
                                                               (##cdr _e3133031710_))
                                                              (_hd3133131714_
                                                               (##car _e3133031710_)))
                                                          (if (gx#stx-null?
                                                               _tl3133231717_)
                                                              (___kont4088740888_
                                                               _hd3133131714_
                                                               _hd3126331948_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3133131714_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41764_|
                               _hd3133131714_)
                              (if (gx#stx-pair? _tl3133231717_)
                                  (let ((_e3135331610_
                                         (gx#syntax-e _tl3133231717_)))
                                    (let ((_tl3135531617_
                                           (##cdr _e3135331610_))
                                          (_hd3135431614_
                                           (##car _e3135331610_)))
                                      (if (gx#stx-null? _tl3135531617_)
                                          (___kont4089140892_
                                           _hd3135431614_
                                           _hd3126331948_
                                           _hd3126031938_)
                                          (_g3125431400_))))
                                  (_g3125431400_))
                              (_g3125431400_))
                          (if (gx#stx-datum? _hd3133131714_)
                              (let ((_e3136831537_ (gx#stx-e _hd3133131714_)))
                                (if (equal? _e3136831537_ '::)
                                    (if (gx#stx-pair? _tl3133231717_)
                                        (let ((_e3136931541_
                                               (gx#syntax-e _tl3133231717_)))
                                          (let ((_tl3137131548_
                                                 (##cdr _e3136931541_))
                                                (_hd3137031545_
                                                 (##car _e3136931541_)))
                                            (if (gx#stx-null? _tl3137131548_)
                                                (___kont4089340894_
                                                 _hd3137031545_
                                                 _hd3126331948_
                                                 _hd3126031938_)
                                                (if (gx#stx-pair?
                                                     _tl3137131548_)
                                                    (let ((_e3138931451_
                                                           (gx#syntax-e
                                                            _tl3137131548_)))
                                                      (let ((_tl3139131458_
                                                             (##cdr _e3138931451_))
                                                            (_hd3139031455_
                                                             (##car _e3138931451_)))
                                                        (if (gx#identifier?
                                                             _hd3139031455_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41765_|
                         _hd3139031455_)
                        (if (gx#stx-pair? _tl3139131458_)
                            (let ((_e3139231461_ (gx#syntax-e _tl3139131458_)))
                              (let ((_tl3139431468_ (##cdr _e3139231461_))
                                    (_hd3139331465_ (##car _e3139231461_)))
                                (if (gx#stx-null? _tl3139431468_)
                                    (___kont4089540896_
                                     _hd3139331465_
                                     _hd3137031545_
                                     _hd3126331948_
                                     _hd3126031938_)
                                    (_g3125431400_))))
                            (_g3125431400_))
                        (_g3125431400_))
                    (_g3125431400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_)))))
                                        (_g3125431400_))
                                    (_g3125431400_)))
                              (_g3125431400_))))))
              (if (gx#stx-null? _tl3126431951_)
                  (___kont4088940890_ _hd3126331948_ _hd3126031938_)
                  (_g3125431400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41767_|
                                                   _hd3126631958_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3126731961_)
                                                      (let ((___splice4088340884_
                                                             (gx#syntax-split-splice
                                                              _tl3126731961_
                                                              '0)))
                                                        (let ((_tl3129431857_
                                                               (##vector-ref
                                                                ___splice4088340884_
                                                                '1))
                                                              (_target3129231854_
                                                               (##vector-ref
                                                                ___splice4088340884_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl3129431857_)
                                                              (___match4095740958_
                                                               _e3125931934_
                                                               _hd3126031938_
                                                               _tl3126131941_
                                                               _e3126231944_
                                                               _hd3126331948_
                                                               _tl3126431951_
                                                               _e3126531954_
                                                               _hd3126631958_
                                                               _tl3126731961_
                                                               ___splice4088340884_
                                                               _target3129231854_
                                                               _tl3129431857_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3126431951_)
                          (let ((_e3133031710_ (gx#syntax-e _tl3126431951_)))
                            (let ((_tl3133231717_ (##cdr _e3133031710_))
                                  (_hd3133131714_ (##car _e3133031710_)))
                              (if (gx#stx-null? _tl3133231717_)
                                  (___kont4088740888_
                                   _hd3133131714_
                                   _hd3126331948_)
                                  (if (gx#identifier? _hd3133131714_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41764_|
                                           _hd3133131714_)
                                          (if (gx#stx-pair? _tl3133231717_)
                                              (let ((_e3135331610_
                                                     (gx#syntax-e
                                                      _tl3133231717_)))
                                                (let ((_tl3135531617_
                                                       (##cdr _e3135331610_))
                                                      (_hd3135431614_
                                                       (##car _e3135331610_)))
                                                  (if (gx#stx-null?
                                                       _tl3135531617_)
                                                      (___kont4089140892_
                                                       _hd3135431614_
                                                       _hd3126331948_
                                                       _hd3126031938_)
                                                      (_g3125431400_))))
                                              (_g3125431400_))
                                          (_g3125431400_))
                                      (if (gx#stx-datum? _hd3133131714_)
                                          (let ((_e3136831537_
                                                 (gx#stx-e _hd3133131714_)))
                                            (if (equal? _e3136831537_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3133231717_)
                                                    (let ((_e3136931541_
                                                           (gx#syntax-e
                                                            _tl3133231717_)))
                                                      (let ((_tl3137131548_
                                                             (##cdr _e3136931541_))
                                                            (_hd3137031545_
                                                             (##car _e3136931541_)))
                                                        (if (gx#stx-null?
                                                             _tl3137131548_)
                                                            (___kont4089340894_
                                                             _hd3137031545_
                                                             _hd3126331948_
                                                             _hd3126031938_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3137131548_)
                        (let ((_e3138931451_ (gx#syntax-e _tl3137131548_)))
                          (let ((_tl3139131458_ (##cdr _e3138931451_))
                                (_hd3139031455_ (##car _e3138931451_)))
                            (if (gx#identifier? _hd3139031455_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41765_|
                                     _hd3139031455_)
                                    (if (gx#stx-pair? _tl3139131458_)
                                        (let ((_e3139231461_
                                               (gx#syntax-e _tl3139131458_)))
                                          (let ((_tl3139431468_
                                                 (##cdr _e3139231461_))
                                                (_hd3139331465_
                                                 (##car _e3139231461_)))
                                            (if (gx#stx-null? _tl3139431468_)
                                                (___kont4089540896_
                                                 _hd3139331465_
                                                 _hd3137031545_
                                                 _hd3126331948_
                                                 _hd3126031938_)
                                                (_g3125431400_))))
                                        (_g3125431400_))
                                    (_g3125431400_))
                                (_g3125431400_))))
                        (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_))
                                                (_g3125431400_)))
                                          (_g3125431400_))))))
                          (if (gx#stx-null? _tl3126431951_)
                              (___kont4088940890_
                               _hd3126331948_
                               _hd3126031938_)
                              (_g3125431400_))))))
              (if (gx#stx-pair? _tl3126431951_)
                  (let ((_e3133031710_ (gx#syntax-e _tl3126431951_)))
                    (let ((_tl3133231717_ (##cdr _e3133031710_))
                          (_hd3133131714_ (##car _e3133031710_)))
                      (if (gx#stx-null? _tl3133231717_)
                          (___kont4088740888_ _hd3133131714_ _hd3126331948_)
                          (if (gx#identifier? _hd3133131714_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41764_|
                                   _hd3133131714_)
                                  (if (gx#stx-pair? _tl3133231717_)
                                      (let ((_e3135331610_
                                             (gx#syntax-e _tl3133231717_)))
                                        (let ((_tl3135531617_
                                               (##cdr _e3135331610_))
                                              (_hd3135431614_
                                               (##car _e3135331610_)))
                                          (if (gx#stx-null? _tl3135531617_)
                                              (___kont4089140892_
                                               _hd3135431614_
                                               _hd3126331948_
                                               _hd3126031938_)
                                              (_g3125431400_))))
                                      (_g3125431400_))
                                  (_g3125431400_))
                              (if (gx#stx-datum? _hd3133131714_)
                                  (let ((_e3136831537_
                                         (gx#stx-e _hd3133131714_)))
                                    (if (equal? _e3136831537_ '::)
                                        (if (gx#stx-pair? _tl3133231717_)
                                            (let ((_e3136931541_
                                                   (gx#syntax-e
                                                    _tl3133231717_)))
                                              (let ((_tl3137131548_
                                                     (##cdr _e3136931541_))
                                                    (_hd3137031545_
                                                     (##car _e3136931541_)))
                                                (if (gx#stx-null?
                                                     _tl3137131548_)
                                                    (___kont4089340894_
                                                     _hd3137031545_
                                                     _hd3126331948_
                                                     _hd3126031938_)
                                                    (if (gx#stx-pair?
                                                         _tl3137131548_)
                                                        (let ((_e3138931451_
                                                               (gx#syntax-e
                                                                _tl3137131548_)))
                                                          (let ((_tl3139131458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3138931451_))
                        (_hd3139031455_ (##car _e3138931451_)))
                    (if (gx#identifier? _hd3139031455_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41765_|
                             _hd3139031455_)
                            (if (gx#stx-pair? _tl3139131458_)
                                (let ((_e3139231461_
                                       (gx#syntax-e _tl3139131458_)))
                                  (let ((_tl3139431468_ (##cdr _e3139231461_))
                                        (_hd3139331465_ (##car _e3139231461_)))
                                    (if (gx#stx-null? _tl3139431468_)
                                        (___kont4089540896_
                                         _hd3139331465_
                                         _hd3137031545_
                                         _hd3126331948_
                                         _hd3126031938_)
                                        (_g3125431400_))))
                                (_g3125431400_))
                            (_g3125431400_))
                        (_g3125431400_))))
                (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3125431400_))
                                        (_g3125431400_)))
                                  (_g3125431400_))))))
                  (if (gx#stx-null? _tl3126431951_)
                      (___kont4088940890_ _hd3126331948_ _hd3126031938_)
                      (_g3125431400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41768_|
                                                       _hd3126631958_)
                                                      (if (gx#stx-pair?
                                                           _tl3126731961_)
                                                          (let ((_e3131631774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3126731961_)))
                    (let ((_tl3131831781_ (##cdr _e3131631774_))
                          (_hd3131731778_ (##car _e3131631774_)))
                      (if (gx#stx-null? _tl3131831781_)
                          (if (gx#stx-pair? _tl3126431951_)
                              (let ((_e3131931784_
                                     (gx#syntax-e _tl3126431951_)))
                                (let ((_tl3132131791_ (##cdr _e3131931784_))
                                      (_hd3132031788_ (##car _e3131931784_)))
                                  (if (gx#stx-null? _tl3132131791_)
                                      (___kont4088540886_
                                       _hd3132031788_
                                       _hd3131731778_
                                       _hd3126031938_)
                                      (if (gx#identifier? _hd3132031788_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41764_|
                                               _hd3132031788_)
                                              (if (gx#stx-pair? _tl3132131791_)
                                                  (let ((_e3135331610_
                                                         (gx#syntax-e
                                                          _tl3132131791_)))
                                                    (let ((_tl3135531617_
                                                           (##cdr _e3135331610_))
                                                          (_hd3135431614_
                                                           (##car _e3135331610_)))
                                                      (if (gx#stx-null?
                                                           _tl3135531617_)
                                                          (___kont4089140892_
                                                           _hd3135431614_
                                                           _hd3126331948_
                                                           _hd3126031938_)
                                                          (_g3125431400_))))
                                                  (_g3125431400_))
                                              (_g3125431400_))
                                          (if (gx#stx-datum? _hd3132031788_)
                                              (let ((_e3136831537_
                                                     (gx#stx-e
                                                      _hd3132031788_)))
                                                (if (equal? _e3136831537_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3132131791_)
                                                        (let ((_e3136931541_
                                                               (gx#syntax-e
                                                                _tl3132131791_)))
                                                          (let ((_tl3137131548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3136931541_))
                        (_hd3137031545_ (##car _e3136931541_)))
                    (if (gx#stx-null? _tl3137131548_)
                        (___kont4089340894_
                         _hd3137031545_
                         _hd3126331948_
                         _hd3126031938_)
                        (if (gx#stx-pair? _tl3137131548_)
                            (let ((_e3138931451_ (gx#syntax-e _tl3137131548_)))
                              (let ((_tl3139131458_ (##cdr _e3138931451_))
                                    (_hd3139031455_ (##car _e3138931451_)))
                                (if (gx#identifier? _hd3139031455_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41765_|
                                         _hd3139031455_)
                                        (if (gx#stx-pair? _tl3139131458_)
                                            (let ((_e3139231461_
                                                   (gx#syntax-e
                                                    _tl3139131458_)))
                                              (let ((_tl3139431468_
                                                     (##cdr _e3139231461_))
                                                    (_hd3139331465_
                                                     (##car _e3139231461_)))
                                                (if (gx#stx-null?
                                                     _tl3139431468_)
                                                    (___kont4089540896_
                                                     _hd3139331465_
                                                     _hd3137031545_
                                                     _hd3126331948_
                                                     _hd3126031938_)
                                                    (_g3125431400_))))
                                            (_g3125431400_))
                                        (_g3125431400_))
                                    (_g3125431400_))))
                            (_g3125431400_)))))
                (_g3125431400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_)))
                                              (_g3125431400_))))))
                              (if (gx#stx-null? _tl3126431951_)
                                  (___kont4088940890_
                                   _hd3126331948_
                                   _hd3126031938_)
                                  (_g3125431400_)))
                          (if (gx#stx-pair? _tl3126431951_)
                              (let ((_e3133031710_
                                     (gx#syntax-e _tl3126431951_)))
                                (let ((_tl3133231717_ (##cdr _e3133031710_))
                                      (_hd3133131714_ (##car _e3133031710_)))
                                  (if (gx#stx-null? _tl3133231717_)
                                      (___kont4088740888_
                                       _hd3133131714_
                                       _hd3126331948_)
                                      (if (gx#identifier? _hd3133131714_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41764_|
                                               _hd3133131714_)
                                              (if (gx#stx-pair? _tl3133231717_)
                                                  (let ((_e3135331610_
                                                         (gx#syntax-e
                                                          _tl3133231717_)))
                                                    (let ((_tl3135531617_
                                                           (##cdr _e3135331610_))
                                                          (_hd3135431614_
                                                           (##car _e3135331610_)))
                                                      (if (gx#stx-null?
                                                           _tl3135531617_)
                                                          (___kont4089140892_
                                                           _hd3135431614_
                                                           _hd3126331948_
                                                           _hd3126031938_)
                                                          (_g3125431400_))))
                                                  (_g3125431400_))
                                              (_g3125431400_))
                                          (if (gx#stx-datum? _hd3133131714_)
                                              (let ((_e3136831537_
                                                     (gx#stx-e
                                                      _hd3133131714_)))
                                                (if (equal? _e3136831537_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3133231717_)
                                                        (let ((_e3136931541_
                                                               (gx#syntax-e
                                                                _tl3133231717_)))
                                                          (let ((_tl3137131548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3136931541_))
                        (_hd3137031545_ (##car _e3136931541_)))
                    (if (gx#stx-null? _tl3137131548_)
                        (___kont4089340894_
                         _hd3137031545_
                         _hd3126331948_
                         _hd3126031938_)
                        (if (gx#stx-pair? _tl3137131548_)
                            (let ((_e3138931451_ (gx#syntax-e _tl3137131548_)))
                              (let ((_tl3139131458_ (##cdr _e3138931451_))
                                    (_hd3139031455_ (##car _e3138931451_)))
                                (if (gx#identifier? _hd3139031455_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41765_|
                                         _hd3139031455_)
                                        (if (gx#stx-pair? _tl3139131458_)
                                            (let ((_e3139231461_
                                                   (gx#syntax-e
                                                    _tl3139131458_)))
                                              (let ((_tl3139431468_
                                                     (##cdr _e3139231461_))
                                                    (_hd3139331465_
                                                     (##car _e3139231461_)))
                                                (if (gx#stx-null?
                                                     _tl3139431468_)
                                                    (___kont4089540896_
                                                     _hd3139331465_
                                                     _hd3137031545_
                                                     _hd3126331948_
                                                     _hd3126031938_)
                                                    (_g3125431400_))))
                                            (_g3125431400_))
                                        (_g3125431400_))
                                    (_g3125431400_))))
                            (_g3125431400_)))))
                (_g3125431400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_)))
                                              (_g3125431400_))))))
                              (if (gx#stx-null? _tl3126431951_)
                                  (___kont4088940890_
                                   _hd3126331948_
                                   _hd3126031938_)
                                  (_g3125431400_))))))
                  (if (gx#stx-pair? _tl3126431951_)
                      (let ((_e3133031710_ (gx#syntax-e _tl3126431951_)))
                        (let ((_tl3133231717_ (##cdr _e3133031710_))
                              (_hd3133131714_ (##car _e3133031710_)))
                          (if (gx#stx-null? _tl3133231717_)
                              (___kont4088740888_
                               _hd3133131714_
                               _hd3126331948_)
                              (if (gx#identifier? _hd3133131714_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41764_|
                                       _hd3133131714_)
                                      (if (gx#stx-pair? _tl3133231717_)
                                          (let ((_e3135331610_
                                                 (gx#syntax-e _tl3133231717_)))
                                            (let ((_tl3135531617_
                                                   (##cdr _e3135331610_))
                                                  (_hd3135431614_
                                                   (##car _e3135331610_)))
                                              (if (gx#stx-null? _tl3135531617_)
                                                  (___kont4089140892_
                                                   _hd3135431614_
                                                   _hd3126331948_
                                                   _hd3126031938_)
                                                  (_g3125431400_))))
                                          (_g3125431400_))
                                      (_g3125431400_))
                                  (if (gx#stx-datum? _hd3133131714_)
                                      (let ((_e3136831537_
                                             (gx#stx-e _hd3133131714_)))
                                        (if (equal? _e3136831537_ '::)
                                            (if (gx#stx-pair? _tl3133231717_)
                                                (let ((_e3136931541_
                                                       (gx#syntax-e
                                                        _tl3133231717_)))
                                                  (let ((_tl3137131548_
                                                         (##cdr _e3136931541_))
                                                        (_hd3137031545_
                                                         (##car _e3136931541_)))
                                                    (if (gx#stx-null?
                                                         _tl3137131548_)
                                                        (___kont4089340894_
                                                         _hd3137031545_
                                                         _hd3126331948_
                                                         _hd3126031938_)
                                                        (if (gx#stx-pair?
                                                             _tl3137131548_)
                                                            (let ((_e3138931451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3137131548_)))
                      (let ((_tl3139131458_ (##cdr _e3138931451_))
                            (_hd3139031455_ (##car _e3138931451_)))
                        (if (gx#identifier? _hd3139031455_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41765_|
                                 _hd3139031455_)
                                (if (gx#stx-pair? _tl3139131458_)
                                    (let ((_e3139231461_
                                           (gx#syntax-e _tl3139131458_)))
                                      (let ((_tl3139431468_
                                             (##cdr _e3139231461_))
                                            (_hd3139331465_
                                             (##car _e3139231461_)))
                                        (if (gx#stx-null? _tl3139431468_)
                                            (___kont4089540896_
                                             _hd3139331465_
                                             _hd3137031545_
                                             _hd3126331948_
                                             _hd3126031938_)
                                            (_g3125431400_))))
                                    (_g3125431400_))
                                (_g3125431400_))
                            (_g3125431400_))))
                    (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3125431400_))
                                            (_g3125431400_)))
                                      (_g3125431400_))))))
                      (if (gx#stx-null? _tl3126431951_)
                          (___kont4088940890_ _hd3126331948_ _hd3126031938_)
                          (_g3125431400_))))
              (if (gx#stx-pair? _tl3126431951_)
                  (let ((_e3133031710_ (gx#syntax-e _tl3126431951_)))
                    (let ((_tl3133231717_ (##cdr _e3133031710_))
                          (_hd3133131714_ (##car _e3133031710_)))
                      (if (gx#stx-null? _tl3133231717_)
                          (___kont4088740888_ _hd3133131714_ _hd3126331948_)
                          (if (gx#identifier? _hd3133131714_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41764_|
                                   _hd3133131714_)
                                  (if (gx#stx-pair? _tl3133231717_)
                                      (let ((_e3135331610_
                                             (gx#syntax-e _tl3133231717_)))
                                        (let ((_tl3135531617_
                                               (##cdr _e3135331610_))
                                              (_hd3135431614_
                                               (##car _e3135331610_)))
                                          (if (gx#stx-null? _tl3135531617_)
                                              (___kont4089140892_
                                               _hd3135431614_
                                               _hd3126331948_
                                               _hd3126031938_)
                                              (_g3125431400_))))
                                      (_g3125431400_))
                                  (_g3125431400_))
                              (if (gx#stx-datum? _hd3133131714_)
                                  (let ((_e3136831537_
                                         (gx#stx-e _hd3133131714_)))
                                    (if (equal? _e3136831537_ '::)
                                        (if (gx#stx-pair? _tl3133231717_)
                                            (let ((_e3136931541_
                                                   (gx#syntax-e
                                                    _tl3133231717_)))
                                              (let ((_tl3137131548_
                                                     (##cdr _e3136931541_))
                                                    (_hd3137031545_
                                                     (##car _e3136931541_)))
                                                (if (gx#stx-null?
                                                     _tl3137131548_)
                                                    (___kont4089340894_
                                                     _hd3137031545_
                                                     _hd3126331948_
                                                     _hd3126031938_)
                                                    (if (gx#stx-pair?
                                                         _tl3137131548_)
                                                        (let ((_e3138931451_
                                                               (gx#syntax-e
                                                                _tl3137131548_)))
                                                          (let ((_tl3139131458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3138931451_))
                        (_hd3139031455_ (##car _e3138931451_)))
                    (if (gx#identifier? _hd3139031455_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41765_|
                             _hd3139031455_)
                            (if (gx#stx-pair? _tl3139131458_)
                                (let ((_e3139231461_
                                       (gx#syntax-e _tl3139131458_)))
                                  (let ((_tl3139431468_ (##cdr _e3139231461_))
                                        (_hd3139331465_ (##car _e3139231461_)))
                                    (if (gx#stx-null? _tl3139431468_)
                                        (___kont4089540896_
                                         _hd3139331465_
                                         _hd3137031545_
                                         _hd3126331948_
                                         _hd3126031938_)
                                        (_g3125431400_))))
                                (_g3125431400_))
                            (_g3125431400_))
                        (_g3125431400_))))
                (_g3125431400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3125431400_))
                                        (_g3125431400_)))
                                  (_g3125431400_))))))
                  (if (gx#stx-null? _tl3126431951_)
                      (___kont4088940890_ _hd3126331948_ _hd3126031938_)
                      (_g3125431400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3126431951_)
                                              (let ((_e3133031710_
                                                     (gx#syntax-e
                                                      _tl3126431951_)))
                                                (let ((_tl3133231717_
                                                       (##cdr _e3133031710_))
                                                      (_hd3133131714_
                                                       (##car _e3133031710_)))
                                                  (if (gx#stx-null?
                                                       _tl3133231717_)
                                                      (___kont4088740888_
                                                       _hd3133131714_
                                                       _hd3126331948_)
                                                      (if (gx#identifier?
                                                           _hd3133131714_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g41764_|
                                                               _hd3133131714_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3133231717_)
                          (let ((_e3135331610_ (gx#syntax-e _tl3133231717_)))
                            (let ((_tl3135531617_ (##cdr _e3135331610_))
                                  (_hd3135431614_ (##car _e3135331610_)))
                              (if (gx#stx-null? _tl3135531617_)
                                  (___kont4089140892_
                                   _hd3135431614_
                                   _hd3126331948_
                                   _hd3126031938_)
                                  (_g3125431400_))))
                          (_g3125431400_))
                      (_g3125431400_))
                  (if (gx#stx-datum? _hd3133131714_)
                      (let ((_e3136831537_ (gx#stx-e _hd3133131714_)))
                        (if (equal? _e3136831537_ '::)
                            (if (gx#stx-pair? _tl3133231717_)
                                (let ((_e3136931541_
                                       (gx#syntax-e _tl3133231717_)))
                                  (let ((_tl3137131548_ (##cdr _e3136931541_))
                                        (_hd3137031545_ (##car _e3136931541_)))
                                    (if (gx#stx-null? _tl3137131548_)
                                        (___kont4089340894_
                                         _hd3137031545_
                                         _hd3126331948_
                                         _hd3126031938_)
                                        (if (gx#stx-pair? _tl3137131548_)
                                            (let ((_e3138931451_
                                                   (gx#syntax-e
                                                    _tl3137131548_)))
                                              (let ((_tl3139131458_
                                                     (##cdr _e3138931451_))
                                                    (_hd3139031455_
                                                     (##car _e3138931451_)))
                                                (if (gx#identifier?
                                                     _hd3139031455_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g41765_|
                                                         _hd3139031455_)
                                                        (if (gx#stx-pair?
                                                             _tl3139131458_)
                                                            (let ((_e3139231461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3139131458_)))
                      (let ((_tl3139431468_ (##cdr _e3139231461_))
                            (_hd3139331465_ (##car _e3139231461_)))
                        (if (gx#stx-null? _tl3139431468_)
                            (___kont4089540896_
                             _hd3139331465_
                             _hd3137031545_
                             _hd3126331948_
                             _hd3126031938_)
                            (_g3125431400_))))
                    (_g3125431400_))
                (_g3125431400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3125431400_))))
                                            (_g3125431400_)))))
                                (_g3125431400_))
                            (_g3125431400_)))
                      (_g3125431400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3126431951_)
                                                  (___kont4088940890_
                                                   _hd3126331948_
                                                   _hd3126031938_)
                                                  (_g3125431400_))))))
                                  (if (gx#stx-pair? _tl3126431951_)
                                      (let ((_e3133031710_
                                             (gx#syntax-e _tl3126431951_)))
                                        (let ((_tl3133231717_
                                               (##cdr _e3133031710_))
                                              (_hd3133131714_
                                               (##car _e3133031710_)))
                                          (if (gx#stx-null? _tl3133231717_)
                                              (___kont4088740888_
                                               _hd3133131714_
                                               _hd3126331948_)
                                              (if (gx#identifier?
                                                   _hd3133131714_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41764_|
                                                       _hd3133131714_)
                                                      (if (gx#stx-pair?
                                                           _tl3133231717_)
                                                          (let ((_e3135331610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3133231717_)))
                    (let ((_tl3135531617_ (##cdr _e3135331610_))
                          (_hd3135431614_ (##car _e3135331610_)))
                      (if (gx#stx-null? _tl3135531617_)
                          (___kont4089140892_
                           _hd3135431614_
                           _hd3126331948_
                           _hd3126031938_)
                          (_g3125431400_))))
                  (_g3125431400_))
              (_g3125431400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3133131714_)
                                                      (let ((_e3136831537_
                                                             (gx#stx-e
                                                              _hd3133131714_)))
                                                        (if (equal? _e3136831537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3133231717_)
                        (let ((_e3136931541_ (gx#syntax-e _tl3133231717_)))
                          (let ((_tl3137131548_ (##cdr _e3136931541_))
                                (_hd3137031545_ (##car _e3136931541_)))
                            (if (gx#stx-null? _tl3137131548_)
                                (___kont4089340894_
                                 _hd3137031545_
                                 _hd3126331948_
                                 _hd3126031938_)
                                (if (gx#stx-pair? _tl3137131548_)
                                    (let ((_e3138931451_
                                           (gx#syntax-e _tl3137131548_)))
                                      (let ((_tl3139131458_
                                             (##cdr _e3138931451_))
                                            (_hd3139031455_
                                             (##car _e3138931451_)))
                                        (if (gx#identifier? _hd3139031455_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41765_|
                                                 _hd3139031455_)
                                                (if (gx#stx-pair?
                                                     _tl3139131458_)
                                                    (let ((_e3139231461_
                                                           (gx#syntax-e
                                                            _tl3139131458_)))
                                                      (let ((_tl3139431468_
                                                             (##cdr _e3139231461_))
                                                            (_hd3139331465_
                                                             (##car _e3139231461_)))
                                                        (if (gx#stx-null?
                                                             _tl3139431468_)
                                                            (___kont4089540896_
                                                             _hd3139331465_
                                                             _hd3137031545_
                                                             _hd3126331948_
                                                             _hd3126031938_)
                                                            (_g3125431400_))))
                                                    (_g3125431400_))
                                                (_g3125431400_))
                                            (_g3125431400_))))
                                    (_g3125431400_)))))
                        (_g3125431400_))
                    (_g3125431400_)))
              (_g3125431400_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3126431951_)
                                          (___kont4088940890_
                                           _hd3126331948_
                                           _hd3126031938_)
                                          (_g3125431400_))))))
                          (_g3125431400_))))
                  (_g3125431400_)))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32043_)
        (let* ((___stx4114241143_ _$stx32043_)
               (_g3204832082_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4114241143_))))
          (let ((___kont4114541146_
                 (lambda (_L32186_ _L32188_ _L32189_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32189_
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
                                       (cons _L32188_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32186_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4114741148_
                 (lambda (_L32119_ _L32121_ _L32122_)
                   (cons _L32122_
                         (cons _L32121_
                               (cons _L32119_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"Bad syntax"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4117541176_
                   (lambda (_e3205332146_
                            _hd3205432150_
                            _tl3205532153_
                            _e3205632156_
                            _hd3205732160_
                            _tl3205832163_
                            _e3205932166_
                            _hd3206032170_
                            _tl3206132173_
                            _e3206232176_
                            _hd3206332180_
                            _tl3206432183_)
                     (let ((_L32186_ _hd3206332180_)
                           (_L32188_ _hd3206032170_)
                           (_L32189_ _hd3205732160_))
                       (if (gx#identifier? _L32189_)
                           (___kont4114541146_ _L32186_ _L32188_ _L32189_)
                           (_g3204832082_))))))
              (if (gx#stx-pair? ___stx4114241143_)
                  (let ((_e3205332146_ (gx#syntax-e ___stx4114241143_)))
                    (let ((_tl3205532153_ (##cdr _e3205332146_))
                          (_hd3205432150_ (##car _e3205332146_)))
                      (if (gx#stx-pair? _tl3205532153_)
                          (let ((_e3205632156_ (gx#syntax-e _tl3205532153_)))
                            (let ((_tl3205832163_ (##cdr _e3205632156_))
                                  (_hd3205732160_ (##car _e3205632156_)))
                              (if (gx#stx-pair? _tl3205832163_)
                                  (let ((_e3205932166_
                                         (gx#syntax-e _tl3205832163_)))
                                    (let ((_tl3206132173_
                                           (##cdr _e3205932166_))
                                          (_hd3206032170_
                                           (##car _e3205932166_)))
                                      (if (gx#stx-pair? _tl3206132173_)
                                          (let ((_e3206232176_
                                                 (gx#syntax-e _tl3206132173_)))
                                            (let ((_tl3206432183_
                                                   (##cdr _e3206232176_))
                                                  (_hd3206332180_
                                                   (##car _e3206232176_)))
                                              (if (gx#stx-null? _tl3206432183_)
                                                  (___match4117541176_
                                                   _e3205332146_
                                                   _hd3205432150_
                                                   _tl3205532153_
                                                   _e3205632156_
                                                   _hd3205732160_
                                                   _tl3205832163_
                                                   _e3205932166_
                                                   _hd3206032170_
                                                   _tl3206132173_
                                                   _e3206232176_
                                                   _hd3206332180_
                                                   _tl3206432183_)
                                                  (_g3204832082_))))
                                          (if (gx#stx-null? _tl3206132173_)
                                              (___kont4114741148_
                                               _hd3206032170_
                                               _hd3205732160_
                                               _hd3205432150_)
                                              (_g3204832082_)))))
                                  (_g3204832082_))))
                          (_g3204832082_))))
                  (_g3204832082_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32211_)
        (let* ((_g3221532230_
                (lambda (_g3221632226_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3221632226_)))
               (_g3221432273_
                (lambda (_g3221632234_)
                  (if (gx#stx-pair? _g3221632234_)
                      (let ((_e3221932237_ (gx#syntax-e _g3221632234_)))
                        (let ((_hd3222032241_ (##car _e3221932237_))
                              (_tl3222132244_ (##cdr _e3221932237_)))
                          (if (gx#stx-pair? _tl3222132244_)
                              (let ((_e3222232247_
                                     (gx#syntax-e _tl3222132244_)))
                                (let ((_hd3222332251_ (##car _e3222232247_))
                                      (_tl3222432254_ (##cdr _e3222232247_)))
                                  ((lambda (_L32257_ _L32259_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32259_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32257_)
                                                       '()))))
                                   _tl3222432254_
                                   _hd3222332251_)))
                              (_g3221532230_ _g3221632234_))))
                      (_g3221532230_ _g3221632234_)))))
          (_g3221432273_ _$stx32211_))))))
