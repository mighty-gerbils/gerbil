(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g45319_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45320_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45376_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45377_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45378_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45380_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45381_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45382_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45383_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45384_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45385_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45386_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45387_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45388_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45389_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45769_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45849_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45869_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45870_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45987_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45988_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45989_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45990_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g46016_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _$args40605_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args40605_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_stx40602_)
        (if (gx#identifier? _stx40602_)
            (let ((__tmp45304 (gx#syntax-local-value _stx40602_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp45304))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx38908_ _match-stx38910_)
        (letrec ((_parse138912_
                  (lambda (_hd39265_)
                    (let* ((___stx4309243093_ _hd39265_)
                           (_g3929139433_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4309243093_))))
                      (let ((___kont4309543096_
                             (lambda (_L40365_ _L40367_)
                               (let* ((___stx4301243013_ _L40365_)
                                      (_g4038440417_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4301243013_))))
                                 (let ((___kont4301543016_
                                        (lambda ()
                                          (let ((__tmp45305
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L40367_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp45305))))
                                       (___kont4301743018_
                                        (lambda (_L40558_)
                                          (let ((__tmp45306
                                                 (let ((__tmp45307
                                                        (let ((__tmp45308
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse138912_ _L40558_))))
                  (declare (not safe))
                  (cons __tmp45308 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40367_
                                                         __tmp45307))))
                                            (declare (not safe))
                                            (cons '?: __tmp45306))))
                                       (___kont4301943020_
                                        (lambda (_L40528_)
                                          (let ((__tmp45309
                                                 (let ((__tmp45310
                                                        (let ((__tmp45311
                                                               (let ((__tmp45312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse138912_ _L40528_))))
                         (declare (not safe))
                         (cons __tmp45312 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp45311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40367_
                                                         __tmp45310))))
                                            (declare (not safe))
                                            (cons '?: __tmp45309))))
                                       (___kont4302143022_
                                        (lambda (_L40479_ _L40481_)
                                          (let ((__tmp45313
                                                 (let ((__tmp45314
                                                        (let ((__tmp45315
                                                               (let ((__tmp45316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45317
                                     (let ((__tmp45318
                                            (let ()
                                              (declare (not safe))
                                              (_parse138912_ _L40479_))))
                                       (declare (not safe))
                                       (cons __tmp45318 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp45317))))
                         (declare (not safe))
                         (cons _L40481_ __tmp45316))))
                  (declare (not safe))
                  (cons ':: __tmp45315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40367_
                                                         __tmp45314))))
                                            (declare (not safe))
                                            (cons '?: __tmp45313))))
                                       (___kont4302343024_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error38919_ _hd39265_)))))
                                   (let ((_g4038040569_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4301243013_)
                                                (let ((_e4038740548_
                                                       (gx#syntax-e
                                                        ___stx4301243013_)))
                                                  (let ((_tl4038940555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4038740548_)))
                                                        (_hd4038840552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4038740548_))))
                                                    (if (gx#stx-null?
                                                         _tl4038940555_)
                                                        (___kont4301743018_
                                                         _hd4038840552_)
                                                        (if (gx#identifier?
                                                             _hd4038840552_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45319_|
                         _hd4038840552_)
                        (if (gx#stx-pair? _tl4038940555_)
                            (let ((_e4039440518_ (gx#syntax-e _tl4038940555_)))
                              (let ((_tl4039640525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4039440518_)))
                                    (_hd4039540522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4039440518_))))
                                (if (gx#stx-null? _tl4039640525_)
                                    (___kont4301943020_ _hd4039540522_)
                                    (___kont4302343024_))))
                            (___kont4302343024_))
                        (___kont4302343024_))
                    (if (gx#stx-datum? _hd4038840552_)
                        (let ((_e4040240445_ (gx#stx-e _hd4038840552_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e4040240445_ '::))
                              (if (gx#stx-pair? _tl4038940555_)
                                  (let ((_e4040340449_
                                         (gx#syntax-e _tl4038940555_)))
                                    (let ((_tl4040540456_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4040340449_)))
                                          (_hd4040440453_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4040340449_))))
                                      (if (gx#stx-pair? _tl4040540456_)
                                          (let ((_e4040640459_
                                                 (gx#syntax-e _tl4040540456_)))
                                            (let ((_tl4040840466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4040640459_)))
                                                  (_hd4040740463_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4040640459_))))
                                              (if (gx#identifier?
                                                   _hd4040740463_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45320_|
                                                       _hd4040740463_)
                                                      (if (gx#stx-pair?
                                                           _tl4040840466_)
                                                          (let ((_e4040940469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4040840466_)))
                    (let ((_tl4041140476_
                           (let () (declare (not safe)) (##cdr _e4040940469_)))
                          (_hd4041040473_
                           (let ()
                             (declare (not safe))
                             (##car _e4040940469_))))
                      (if (gx#stx-null? _tl4041140476_)
                          (___kont4302143022_ _hd4041040473_ _hd4040440453_)
                          (___kont4302343024_))))
                  (___kont4302343024_))
              (___kont4302343024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4302343024_))))
                                          (___kont4302343024_))))
                                  (___kont4302343024_))
                              (___kont4302343024_)))
                        (___kont4302343024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4302343024_)))))
                                     (if (gx#stx-null? ___stx4301243013_)
                                         (___kont4301543016_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4038040569_))))))))
                            (___kont4309743098_
                             (lambda (_L40270_)
                               (let* ((___stx4299442995_ _L40270_)
                                      (_g4028240293_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4299442995_))))
                                 (let ((___kont4299742998_
                                        (lambda (_L40321_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138912_ _L40321_))))
                                       (___kont4299943000_
                                        (lambda ()
                                          (let ((__tmp45321
                                                 (gx#stx-map
                                                  _parse138912_
                                                  _L40270_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp45321)))))
                                   (if (gx#stx-pair? ___stx4299442995_)
                                       (let ((_e4028540311_
                                              (gx#syntax-e ___stx4299442995_)))
                                         (let ((_tl4028740318_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4028540311_)))
                                               (_hd4028640315_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4028540311_))))
                                           (if (gx#stx-null? _tl4028740318_)
                                               (___kont4299742998_
                                                _hd4028640315_)
                                               (___kont4299943000_))))
                                       (___kont4299943000_))))))
                            (___kont4309943100_
                             (lambda (_L40185_)
                               (let* ((___stx4297642977_ _L40185_)
                                      (_g4019740208_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4297642977_))))
                                 (let ((___kont4297942980_
                                        (lambda (_L40236_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138912_ _L40236_))))
                                       (___kont4298142982_
                                        (lambda ()
                                          (let ((__tmp45322
                                                 (gx#stx-map
                                                  _parse138912_
                                                  _L40185_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp45322)))))
                                   (if (gx#stx-pair? ___stx4297642977_)
                                       (let ((_e4020040226_
                                              (gx#syntax-e ___stx4297642977_)))
                                         (let ((_tl4020240233_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4020040226_)))
                                               (_hd4020140230_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4020040226_))))
                                           (if (gx#stx-null? _tl4020240233_)
                                               (___kont4297942980_
                                                _hd4020140230_)
                                               (___kont4298142982_))))
                                       (___kont4298142982_))))))
                            (___kont4310143102_
                             (lambda (_L40155_)
                               (let ((__tmp45323
                                      (let ((__tmp45324
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L40155_))))
                                        (declare (not safe))
                                        (cons __tmp45324 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp45323))))
                            (___kont4310343104_
                             (lambda (_L40111_ _L40113_)
                               (let ((__tmp45325
                                      (let ((__tmp45328
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L40113_)))
                                            (__tmp45326
                                             (let ((__tmp45327
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138912_
                                                       _L40111_))))
                                               (declare (not safe))
                                               (cons __tmp45327 '()))))
                                        (declare (not safe))
                                        (cons __tmp45328 __tmp45326))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45325))))
                            (___kont4310543106_
                             (lambda (_L40055_ _L40057_ _L40058_)
                               (if (gx#stx-null? _L40055_)
                                   (let ((__tmp45329
                                          (let ((__tmp45332
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138912_ _L40058_)))
                                                (__tmp45330
                                                 (let ((__tmp45331
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse138912_
                                                           _L40057_))))
                                                   (declare (not safe))
                                                   (cons __tmp45331 '()))))
                                            (declare (not safe))
                                            (cons __tmp45332 __tmp45330))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45329))
                                   (let ((__tmp45333
                                          (let ((__tmp45339
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138912_ _L40058_)))
                                                (__tmp45334
                                                 (let ((__tmp45335
                                                        (let ((__tmp45336
                                                               (let ((__tmp45338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp45337
                              (let ()
                                (declare (not safe))
                                (cons _L40057_ _L40055_))))
                         (declare (not safe))
                         (cons __tmp45338 __tmp45337))))
                  (declare (not safe))
                  (_parse138912_ __tmp45336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45335 '()))))
                                            (declare (not safe))
                                            (cons __tmp45339 __tmp45334))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45333)))))
                            (___kont4310743108_
                             (lambda (_L40007_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list38914_ _L40007_))))
                            (___kont4310943110_
                             (lambda (_L39977_)
                               (let ((__tmp45340
                                      (let ((__tmp45341
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L39977_))))
                                        (declare (not safe))
                                        (cons __tmp45341 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45340))))
                            (___kont4311143112_
                             (lambda (_L39940_)
                               (let ((__tmp45342
                                      (let ((__tmp45343
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L39940_))))
                                        (declare (not safe))
                                        (cons __tmp45343 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45342))))
                            (___kont4311343114_
                             (lambda (_L39916_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138912_ _L39916_))))
                            (___kont4311543116_
                             (lambda (_L39878_)
                               (let ((__tmp45344
                                      (let ((__tmp45345
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38915_
                                                _L39878_))))
                                        (declare (not safe))
                                        (cons __tmp45345 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp45344))))
                            (___kont4311743118_
                             (lambda (_L39850_)
                               (let ((__tmp45346
                                      (let ((__tmp45347
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38915_
                                                _L39850_))))
                                        (declare (not safe))
                                        (cons __tmp45347 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45346))))
                            (___kont4311943120_
                             (lambda (_L39811_)
                               (let ((__tmp45348
                                      (let ((__tmp45349
                                             (let ((__tmp45350
                                                    (foldr (lambda (_g3982439827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3982539830_)
                     (let ()
                       (declare (not safe))
                       (cons _g3982439827_ _g3982539830_)))
                   '()
                   _L39811_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector38915_
                                                __tmp45350))))
                                        (declare (not safe))
                                        (cons __tmp45349 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45348))))
                            (___kont4312343124_
                             (lambda (_L39757_ _L39759_)
                               (let ((__tmp45351
                                      (let ((__tmp45354
                                             (gx#syntax-local-value _L39759_))
                                            (__tmp45352
                                             (let ((__tmp45353
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector38915_
                                                       _L39757_))))
                                               (declare (not safe))
                                               (cons __tmp45353 '()))))
                                        (declare (not safe))
                                        (cons __tmp45354 __tmp45352))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp45351))))
                            (___kont4312543126_
                             (lambda (_L39727_ _L39729_)
                               (let ((__tmp45355
                                      (let ((__tmp45358
                                             (gx#syntax-local-value _L39729_))
                                            (__tmp45356
                                             (let ((__tmp45357
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body38917_
                                                       _L39727_))))
                                               (declare (not safe))
                                               (cons __tmp45357 '()))))
                                        (declare (not safe))
                                        (cons __tmp45358 __tmp45356))))
                                 (declare (not safe))
                                 (cons 'class: __tmp45355))))
                            (___kont4312743128_
                             (lambda (_L39687_ _L39689_)
                               (let ((__tmp45359
                                      (let ((__tmp45360
                                             (let ((__tmp45365
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp45361
                                                    (let ((__tmp45362
                                                           (let ((__tmp45364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp45363
                          (let () (declare (not safe)) (cons _L39687_ '()))))
                     (declare (not safe))
                     (cons __tmp45364 __tmp45363))))
              (declare (not safe))
              (cons _L39689_ __tmp45362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45365 __tmp45361))))
                                        (declare (not safe))
                                        (cons __tmp45360 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp45359))))
                            (___kont4312943130_
                             (lambda (_L39647_)
                               (let ((__tmp45366
                                      (let ((__tmp45367 (gx#stx-e _L39647_)))
                                        (declare (not safe))
                                        (cons __tmp45367 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45366))))
                            (___kont4313143132_
                             (lambda (_L39607_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq38918_ _L39607_))))
                            (___kont4313343134_
                             (lambda (_L39563_ _L39565_)
                               (let ((__tmp45368
                                      (let ((__tmp45369
                                             (let ((__tmp45370
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138912_
                                                       _L39563_))))
                                               (declare (not safe))
                                               (cons __tmp45370 '()))))
                                        (declare (not safe))
                                        (cons _L39565_ __tmp45369))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp45368))))
                            (___kont4313543136_
                             (lambda (_L39511_)
                               (let ((__tmp45371
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L39511_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd39265_))
                                        (let ((_$e39522_
                                               (gx#stx-source _hd39265_)))
                                          (if _$e39522_
                                              _$e39522_
                                              (gx#stx-source _stx38908_)))))))
                                 (declare (not safe))
                                 (_parse138912_ __tmp45371))))
                            (___kont4313743138_
                             (lambda (_L39485_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4313943140_
                             (lambda (_L39469_)
                               (let ((__tmp45372
                                      (let ()
                                        (declare (not safe))
                                        (cons _L39469_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp45372))))
                            (___kont4314143142_
                             (lambda (_L39451_)
                               (let ((__tmp45373
                                      (let ((__tmp45374 (gx#stx-e _L39451_)))
                                        (declare (not safe))
                                        (cons __tmp45374 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45373))))
                            (___kont4314343144_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error38919_ _hd39265_)))))
                        (let* ((_g3928939462_
                                (lambda ()
                                  (let ((_L39451_ ___stx4309243093_))
                                    (if (gx#stx-datum? _L39451_)
                                        (___kont4314143142_ _L39451_)
                                        (___kont4314343144_)))))
                               (_g3928839478_
                                (lambda ()
                                  (let ((_L39469_ ___stx4309243093_))
                                    (if (and (gx#identifier? _L39469_)
                                             (let ((__tmp45375
                                                    (gx#ellipsis? _L39469_)))
                                               (declare (not safe))
                                               (not __tmp45375)))
                                        (___kont4313943140_ _L39469_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928939462_))))))
                               (_g3928739494_
                                (lambda ()
                                  (let ((_L39485_ ___stx4309243093_))
                                    (if (gx#underscore? _L39485_)
                                        (___kont4313743138_ _L39485_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928839478_))))))
                               (___match4341943420_
                                (lambda (_e3942239501_
                                         _hd3942339505_
                                         _tl3942439508_)
                                  (let ((_L39511_ _hd3942339505_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L39511_))
                                        (___kont4313543136_ _L39511_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928739494_))))))
                               (___match4335343354_
                                (lambda (_e3939039667_
                                         _hd3939139671_
                                         _tl3939239674_
                                         _e3939339677_
                                         _hd3939439681_
                                         _tl3939539684_)
                                  (let ((_L39687_ _hd3939439681_)
                                        (_L39689_ _hd3939139671_))
                                    (if (and (gx#identifier? _L39689_)
                                             (or (gx#free-identifier=?
                                                  _L39689_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L39689_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L39689_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4312743128_ _L39687_ _L39689_)
                                        (if (gx#identifier? _hd3939139671_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45376_|
                                                 _hd3939139671_)
                                                (___kont4312943130_
                                                 _hd3939439681_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g45377_|
                                                     _hd3939139671_)
                                                    (___kont4313143132_
                                                     _hd3939439681_)
                                                    (___match4341943420_
                                                     _e3939039667_
                                                     _hd3939139671_
                                                     _tl3939239674_)))
                                            (___match4341943420_
                                             _e3939039667_
                                             _hd3939139671_
                                             _tl3939239674_))))))
                               (___match4333943340_
                                (lambda (_e3938539717_
                                         _hd3938639721_
                                         _tl3938739724_)
                                  (let ((_L39727_ _tl3938739724_)
                                        (_L39729_ _hd3938639721_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                           _L39729_))
                                        (___kont4312543126_ _L39727_ _L39729_)
                                        (if (gx#stx-pair? _tl3938739724_)
                                            (let ((_e3939339677_
                                                   (gx#syntax-e
                                                    _tl3938739724_)))
                                              (let ((_tl3939539684_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3939339677_)))
                                                    (_hd3939439681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3939339677_))))
                                                (if (gx#stx-null?
                                                     _tl3939539684_)
                                                    (___match4335343354_
                                                     _e3938539717_
                                                     _hd3938639721_
                                                     _tl3938739724_
                                                     _e3939339677_
                                                     _hd3939439681_
                                                     _tl3939539684_)
                                                    (if (gx#identifier?
                                                         _hd3938639721_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g45376_|
                                                             _hd3938639721_)
                                                            (___match4341943420_
                                                             _e3938539717_
                                                             _hd3938639721_
                                                             _tl3938739724_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45377_|
                         _hd3938639721_)
                        (___match4341943420_
                         _e3938539717_
                         _hd3938639721_
                         _tl3938739724_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45378_|
                             _hd3938639721_)
                            (if (gx#stx-pair? _tl3939539684_)
                                (let ((_e3941839553_
                                       (gx#syntax-e _tl3939539684_)))
                                  (let ((_tl3942039560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3941839553_)))
                                        (_hd3941939557_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3941839553_))))
                                    (if (gx#stx-null? _tl3942039560_)
                                        (___kont4313343134_
                                         _hd3941939557_
                                         _hd3939439681_)
                                        (___match4341943420_
                                         _e3938539717_
                                         _hd3938639721_
                                         _tl3938739724_))))
                                (___match4341943420_
                                 _e3938539717_
                                 _hd3938639721_
                                 _tl3938739724_))
                            (___match4341943420_
                             _e3938539717_
                             _hd3938639721_
                             _tl3938739724_))))
                (___match4341943420_
                 _e3938539717_
                 _hd3938639721_
                 _tl3938739724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4341943420_
                                             _e3938539717_
                                             _hd3938639721_
                                             _tl3938739724_))))))
                               (___match4333343334_
                                (lambda (_e3938039747_
                                         _hd3938139751_
                                         _tl3938239754_)
                                  (let ((_L39757_ _tl3938239754_)
                                        (_L39759_ _hd3938139751_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                                           _L39759_
                                           gerbil/core/mop$<MOP:2>#!class-type-struct?))
                                        (___kont4312343124_ _L39757_ _L39759_)
                                        (___match4333943340_
                                         _e3938039747_
                                         _hd3938139751_
                                         _tl3938239754_)))))
                               (___match4332743328_
                                (lambda (_e3936839777_
                                         ___splice4312143122_
                                         _target3936939781_
                                         _tl3937139784_)
                                  (letrec ((_loop3937239787_
                                            (lambda (_hd3937039791_
                                                     _body3937639794_)
                                              (if (gx#stx-pair? _hd3937039791_)
                                                  (let ((_e3937339797_
                                                         (gx#syntax-e
                                                          _hd3937039791_)))
                                                    (let ((_lp-tl3937539804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3937339797_)))
                                                          (_lp-hd3937439801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3937339797_))))
                                                      (let ((__tmp45379
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd3937439801_ _body3937639794_))))
                (declare (not safe))
                (_loop3937239787_ _lp-tl3937539804_ __tmp45379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body3937739807_
                                                         (reverse _body3937639794_)))
                                                    (___kont4311943120_
                                                     _body3937739807_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop3937239787_
                                       _target3936939781_
                                       '())))))
                               (_g3927939833_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4309243093_)
                                      (let ((_e3936839777_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4309243093_))))
                                        (if (gx#stx-pair/null? _e3936839777_)
                                            (let ((___splice4312143122_
                                                   (gx#syntax-split-splice
                                                    _e3936839777_
                                                    '0)))
                                              (let ((_tl3937139784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4312143122_
                                                        '1)))
                                                    (_target3936939781_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4312143122_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3937139784_)
                                                    (___match4332743328_
                                                     _e3936839777_
                                                     ___splice4312143122_
                                                     _target3936939781_
                                                     _tl3937139784_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3928739494_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3928739494_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3928739494_)))))
                               (_g3927539950_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4309243093_)
                                      (let ((_e3935139936_
                                             (unbox (gx#syntax-e
                                                     ___stx4309243093_))))
                                        (___kont4311143112_ _e3935139936_))
                                      (let ()
                                        (declare (not safe))
                                        (_g3927939833_)))))
                               (___match4318143182_
                                (lambda (_e3930640175_
                                         _hd3930740179_
                                         _tl3930840182_)
                                  (let ((_L40185_ _tl3930840182_))
                                    (if (gx#stx-list? _L40185_)
                                        (___kont4309943100_ _L40185_)
                                        (___match4333343334_
                                         _e3930640175_
                                         _hd3930740179_
                                         _tl3930840182_)))))
                               (___match4317143172_
                                (lambda (_e3930240260_
                                         _hd3930340264_
                                         _tl3930440267_)
                                  (let ((_L40270_ _tl3930440267_))
                                    (if (gx#stx-list? _L40270_)
                                        (___kont4309743098_ _L40270_)
                                        (___match4333343334_
                                         _e3930240260_
                                         _hd3930340264_
                                         _tl3930440267_))))))
                          (if (gx#stx-pair? ___stx4309243093_)
                              (let ((_e3929540345_
                                     (gx#syntax-e ___stx4309243093_)))
                                (let ((_tl3929740352_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3929540345_)))
                                      (_hd3929640349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3929540345_))))
                                  (if (gx#identifier? _hd3929640349_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45380_|
                                           _hd3929640349_)
                                          (if (gx#stx-pair? _tl3929740352_)
                                              (let ((_e3929840355_
                                                     (gx#syntax-e
                                                      _tl3929740352_)))
                                                (let ((_tl3930040362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3929840355_)))
                                                      (_hd3929940359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3929840355_))))
                                                  (___kont4309543096_
                                                   _tl3930040362_
                                                   _hd3929940359_)))
                                              (___match4333343334_
                                               _e3929540345_
                                               _hd3929640349_
                                               _tl3929740352_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45381_|
                                               _hd3929640349_)
                                              (___match4317143172_
                                               _e3929540345_
                                               _hd3929640349_
                                               _tl3929740352_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45382_|
                                                   _hd3929640349_)
                                                  (___match4318143182_
                                                   _e3929540345_
                                                   _hd3929640349_
                                                   _tl3929740352_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45383_|
                                                       _hd3929640349_)
                                                      (if (gx#stx-pair?
                                                           _tl3929740352_)
                                                          (let ((_e3931340145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3929740352_)))
                    (let ((_tl3931540152_
                           (let () (declare (not safe)) (##cdr _e3931340145_)))
                          (_hd3931440149_
                           (let ()
                             (declare (not safe))
                             (##car _e3931340145_))))
                      (if (gx#stx-null? _tl3931540152_)
                          (___kont4310143102_ _hd3931440149_)
                          (___match4333343334_
                           _e3929540345_
                           _hd3929640349_
                           _tl3929740352_))))
                  (___match4333343334_
                   _e3929540345_
                   _hd3929640349_
                   _tl3929740352_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g45384_|
                   _hd3929640349_)
                  (if (gx#stx-pair? _tl3929740352_)
                      (let ((_e3932140091_ (gx#syntax-e _tl3929740352_)))
                        (let ((_tl3932340098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3932140091_)))
                              (_hd3932240095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3932140091_))))
                          (if (gx#stx-pair? _tl3932340098_)
                              (let ((_e3932440101_
                                     (gx#syntax-e _tl3932340098_)))
                                (let ((_tl3932640108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3932440101_)))
                                      (_hd3932540105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3932440101_))))
                                  (if (gx#stx-null? _tl3932640108_)
                                      (___kont4310343104_
                                       _hd3932540105_
                                       _hd3932240095_)
                                      (___match4333343334_
                                       _e3929540345_
                                       _hd3929640349_
                                       _tl3929740352_))))
                              (___match4333343334_
                               _e3929540345_
                               _hd3929640349_
                               _tl3929740352_))))
                      (___match4333343334_
                       _e3929540345_
                       _hd3929640349_
                       _tl3929740352_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g45385_|
                       _hd3929640349_)
                      (if (gx#stx-pair? _tl3929740352_)
                          (let ((_e3933340035_ (gx#syntax-e _tl3929740352_)))
                            (let ((_tl3933540042_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3933340035_)))
                                  (_hd3933440039_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3933340035_))))
                              (if (gx#stx-pair? _tl3933540042_)
                                  (let ((_e3933640045_
                                         (gx#syntax-e _tl3933540042_)))
                                    (let ((_tl3933840052_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3933640045_)))
                                          (_hd3933740049_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3933640045_))))
                                      (___kont4310543106_
                                       _tl3933840052_
                                       _hd3933740049_
                                       _hd3933440039_)))
                                  (___match4333343334_
                                   _e3929540345_
                                   _hd3929640349_
                                   _tl3929740352_))))
                          (___match4333343334_
                           _e3929540345_
                           _hd3929640349_
                           _tl3929740352_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g45386_|
                           _hd3929640349_)
                          (___kont4310743108_ _tl3929740352_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45387_|
                               _hd3929640349_)
                              (if (gx#stx-pair? _tl3929740352_)
                                  (let ((_e3934739967_
                                         (gx#syntax-e _tl3929740352_)))
                                    (let ((_tl3934939974_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3934739967_)))
                                          (_hd3934839971_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3934739967_))))
                                      (if (gx#stx-null? _tl3934939974_)
                                          (___kont4310943110_ _hd3934839971_)
                                          (___match4333343334_
                                           _e3929540345_
                                           _hd3929640349_
                                           _tl3929740352_))))
                                  (___match4333343334_
                                   _e3929540345_
                                   _hd3929640349_
                                   _tl3929740352_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45388_|
                                   _hd3929640349_)
                                  (if (gx#stx-pair? _tl3929740352_)
                                      (let ((_e3935639906_
                                             (gx#syntax-e _tl3929740352_)))
                                        (let ((_tl3935839913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3935639906_)))
                                              (_hd3935739910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3935639906_))))
                                          (if (gx#stx-null? _tl3935839913_)
                                              (___kont4311343114_
                                               _hd3935739910_)
                                              (___kont4311543116_
                                               _tl3929740352_))))
                                      (___kont4311543116_ _tl3929740352_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45389_|
                                       _hd3929640349_)
                                      (___kont4311743118_ _tl3929740352_)
                                      (___match4333343334_
                                       _e3929540345_
                                       _hd3929640349_
                                       _tl3929740352_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4333343334_
                                       _e3929540345_
                                       _hd3929640349_
                                       _tl3929740352_))))
                              (let ()
                                (declare (not safe))
                                (_g3927539950_))))))))
                 (_parse-list38914_
                  (lambda (_body39094_)
                    (let* ((___stx4342243423_ _body39094_)
                           (_g3910039129_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4342243423_))))
                      (let ((___kont4342543426_
                             (lambda (_L39247_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138912_ _L39247_))))
                            (___kont4342743428_
                             (lambda (_L39199_ _L39201_ _L39202_)
                               (let ((__tmp45390
                                      (let ((__tmp45393
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L39202_)))
                                            (__tmp45391
                                             (let ((__tmp45392
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38914_
                                                       _L39199_))))
                                               (declare (not safe))
                                               (cons __tmp45392 '()))))
                                        (declare (not safe))
                                        (cons __tmp45393 __tmp45391))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp45390))))
                            (___kont4342943430_
                             (lambda (_L39157_ _L39159_)
                               (let ((__tmp45394
                                      (let ((__tmp45397
                                             (let ()
                                               (declare (not safe))
                                               (_parse138912_ _L39159_)))
                                            (__tmp45395
                                             (let ((__tmp45396
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38914_
                                                       _L39157_))))
                                               (declare (not safe))
                                               (cons __tmp45396 '()))))
                                        (declare (not safe))
                                        (cons __tmp45397 __tmp45395))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45394))))
                            (___kont4343143432_
                             (lambda ()
                               (if (gx#stx-null? _body39094_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp45398
                                              (gx#stx-pair? _body39094_)))
                                         (declare (not safe))
                                         (not __tmp45398))
                                       (let ()
                                         (declare (not safe))
                                         (_parse138912_ _body39094_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error38919_ _body39094_)))))))
                        (let* ((___match4347143472_
                                (lambda (_e3912139147_
                                         _hd3912239151_
                                         _tl3912339154_)
                                  (let ((_L39157_ _tl3912339154_)
                                        (_L39159_ _hd3912239151_))
                                    (if (let ((__tmp45399
                                               (gx#ellipsis? _L39159_)))
                                          (declare (not safe))
                                          (not __tmp45399))
                                        (___kont4342943430_ _L39157_ _L39159_)
                                        (___kont4343143432_)))))
                               (___match4346543466_
                                (lambda (_e3911339179_
                                         _hd3911439183_
                                         _tl3911539186_
                                         _e3911639189_
                                         _hd3911739193_
                                         _tl3911839196_)
                                  (let ((_L39199_ _tl3911839196_)
                                        (_L39201_ _hd3911739193_)
                                        (_L39202_ _hd3911439183_))
                                    (if (gx#ellipsis? _L39201_)
                                        (___kont4342743428_
                                         _L39199_
                                         _L39201_
                                         _L39202_)
                                        (___match4347143472_
                                         _e3911339179_
                                         _hd3911439183_
                                         _tl3911539186_))))))
                          (if (gx#stx-pair? ___stx4342243423_)
                              (let ((_e3910339223_
                                     (gx#syntax-e ___stx4342243423_)))
                                (let ((_tl3910539230_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3910339223_)))
                                      (_hd3910439227_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3910339223_))))
                                  (if (gx#stx-datum? _hd3910439227_)
                                      (let ((_e3910639233_
                                             (gx#stx-e _hd3910439227_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3910639233_ '::))
                                            (if (gx#stx-pair? _tl3910539230_)
                                                (let ((_e3910739237_
                                                       (gx#syntax-e
                                                        _tl3910539230_)))
                                                  (let ((_tl3910939244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3910739237_)))
                                                        (_hd3910839241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3910739237_))))
                                                    (if (gx#stx-null?
                                                         _tl3910939244_)
                                                        (___kont4342543426_
                                                         _hd3910839241_)
                                                        (___match4346543466_
                                                         _e3910339223_
                                                         _hd3910439227_
                                                         _tl3910539230_
                                                         _e3910739237_
                                                         _hd3910839241_
                                                         _tl3910939244_))))
                                                (___match4347143472_
                                                 _e3910339223_
                                                 _hd3910439227_
                                                 _tl3910539230_))
                                            (if (gx#stx-pair? _tl3910539230_)
                                                (let ((_e3911639189_
                                                       (gx#syntax-e
                                                        _tl3910539230_)))
                                                  (let ((_tl3911839196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3911639189_)))
                                                        (_hd3911739193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3911639189_))))
                                                    (___match4346543466_
                                                     _e3910339223_
                                                     _hd3910439227_
                                                     _tl3910539230_
                                                     _e3911639189_
                                                     _hd3911739193_
                                                     _tl3911839196_)))
                                                (___match4347143472_
                                                 _e3910339223_
                                                 _hd3910439227_
                                                 _tl3910539230_))))
                                      (if (gx#stx-pair? _tl3910539230_)
                                          (let ((_e3911639189_
                                                 (gx#syntax-e _tl3910539230_)))
                                            (let ((_tl3911839196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3911639189_)))
                                                  (_hd3911739193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3911639189_))))
                                              (___match4346543466_
                                               _e3910339223_
                                               _hd3910439227_
                                               _tl3910539230_
                                               _e3911639189_
                                               _hd3911739193_
                                               _tl3911839196_)))
                                          (___match4347143472_
                                           _e3910339223_
                                           _hd3910439227_
                                           _tl3910539230_)))))
                              (___kont4343143432_)))))))
                 (_parse-vector38915_
                  (lambda (_body39091_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?38916_ _body39091_))
                        (let ((__tmp45400
                               (let ((__tmp45401
                                      (gx#stx-map _parse138912_ _body39091_)))
                                 (declare (not safe))
                                 (cons __tmp45401 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp45400))
                        (let ((__tmp45402
                               (let ((__tmp45403
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list38914_ _body39091_))))
                                 (declare (not safe))
                                 (cons __tmp45403 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp45402)))))
                 (_simple-vector?38916_
                  (lambda (_body39028_)
                    (let* ((___stx4347443475_ _body39028_)
                           (_g3903239044_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4347443475_))))
                      (let ((___kont4347743478_
                             (lambda (_L39072_ _L39074_)
                               (if (let ((__tmp45404 (gx#ellipsis? _L39074_)))
                                     (declare (not safe))
                                     (not __tmp45404))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?38916_ _L39072_))
                                   '#f)))
                            (___kont4347943480_
                             (lambda () (gx#stx-null? _body39028_))))
                        (if (gx#stx-pair? ___stx4347443475_)
                            (let ((_e3903639062_
                                   (gx#syntax-e ___stx4347443475_)))
                              (let ((_tl3903839069_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3903639062_)))
                                    (_hd3903739066_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3903639062_))))
                                (___kont4347743478_
                                 _tl3903839069_
                                 _hd3903739066_)))
                            (___kont4347943480_))))))
                 (_parse-class-body38917_
                  (lambda (_body38937_)
                    (let _recur38940_ ((_rest38943_ _body38937_))
                      (let* ((___stx4349043491_ _rest38943_)
                             (_g3894738963_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4349043491_))))
                        (let ((___kont4349343494_
                               (lambda (_L39001_ _L39003_ _L39004_)
                                 (let ((__tmp45405
                                        (let ((__tmp45407
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse138912_ _L39003_)))
                                              (__tmp45406
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur38940_ _L39001_))))
                                          (declare (not safe))
                                          (cons __tmp45407 __tmp45406))))
                                   (declare (not safe))
                                   (cons _L39004_ __tmp45405))))
                              (___kont4349543496_
                               (lambda ()
                                 (if (gx#stx-null? _rest38943_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error38919_ _rest38943_))))))
                          (let ((___match4350943510_
                                 (lambda (_e3895238981_
                                          _hd3895338985_
                                          _tl3895438988_
                                          _e3895538991_
                                          _hd3895638995_
                                          _tl3895738998_)
                                   (let ((_L39001_ _tl3895738998_)
                                         (_L39003_ _hd3895638995_)
                                         (_L39004_ _hd3895338985_))
                                     (if (gx#stx-keyword? _L39004_)
                                         (___kont4349343494_
                                          _L39001_
                                          _L39003_
                                          _L39004_)
                                         (___kont4349543496_))))))
                            (if (gx#stx-pair? ___stx4349043491_)
                                (let ((_e3895238981_
                                       (gx#syntax-e ___stx4349043491_)))
                                  (let ((_tl3895438988_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3895238981_)))
                                        (_hd3895338985_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3895238981_))))
                                    (if (gx#stx-pair? _tl3895438988_)
                                        (let ((_e3895538991_
                                               (gx#syntax-e _tl3895438988_)))
                                          (let ((_tl3895738998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3895538991_)))
                                                (_hd3895638995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3895538991_))))
                                            (___match4350943510_
                                             _e3895238981_
                                             _hd3895338985_
                                             _tl3895438988_
                                             _e3895538991_
                                             _hd3895638995_
                                             _tl3895738998_)))
                                        (___kont4349543496_))))
                                (___kont4349543496_))))))))
                 (_parse-qq38918_
                  (lambda (_hd38924_)
                    (let ((_g3892638933_
                           (lambda (_g3892738929_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3892738929_))))
                      (declare (not safe))
                      (_g3892638933_ _hd38924_))))
                 (_parse-error38919_
                  (lambda (_hd38921_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx38910_
                               (let ((__tmp45408
                                      (let ((__tmp45409
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd38921_ '()))))
                                        (declare (not safe))
                                        (cons _stx38908_ __tmp45409))))
                                 (declare (not safe))
                                 (cons _match-stx38910_ __tmp45408))
                               (let ((__tmp45410
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd38921_ '()))))
                                 (declare (not safe))
                                 (cons _stx38908_ __tmp45410)))))))
          (let () (declare (not safe)) (_parse138912_ _stx38908_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx40592_)
        (let ((_match-stx40595_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx40592_
           _match-stx40595_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g45412_
        (let ((_g45411_ (let () (declare (not safe)) (##length _g45412_))))
          (cond ((let () (declare (not safe)) (##fx= _g45411_ 1))
                 (apply (lambda (_stx40592_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx40592_)))
                        _g45412_))
                ((let () (declare (not safe)) (##fx= _g45411_ 2))
                 (apply (lambda (_stx40598_ _match-stx40600_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx40598_
                             _match-stx40600_)))
                        _g45412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g45412_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx38893_)
        (call/cc (lambda (_E38896_)
                   (with-exception-handler
                    (let ((_E!38899_ (current-exception-handler)))
                      (lambda (_e38902_)
                        (if (syntax-error? _e38902_)
                            (_E38896_ '#f)
                            (_E!38899_ _e38902_))))
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/match[1]#parse-match-pattern__0|
                         _stx38893_))
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree37628_)
        (letrec ((_loop37631_
                  (lambda (_ptree37918_ _vars37920_ _K37921_)
                    (let* ((___stx4360843609_ _ptree37918_)
                           (_g3793438044_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4360843609_))))
                      (let ((___kont4361143612_
                             (lambda (_L38674_)
                               (let* ((___stx4352843529_ _L38674_)
                                      (_g3869138725_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4352843529_))))
                                 (let ((___kont4353143532_
                                        (lambda (_L38874_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37631_
                                             _L38874_
                                             _vars37920_
                                             _K37921_))))
                                       (___kont4353343534_
                                        (lambda (_L38843_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37631_
                                             _L38843_
                                             _vars37920_
                                             _K37921_))))
                                       (___kont4353543536_
                                        (lambda (_L38791_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37631_
                                             _L38791_
                                             _vars37920_
                                             _K37921_))))
                                       (___kont4353743538_
                                        (lambda () (_K37921_ _vars37920_))))
                                   (if (gx#stx-pair? ___stx4352843529_)
                                       (let ((_e3869438864_
                                              (gx#syntax-e ___stx4352843529_)))
                                         (let ((_tl3869638871_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3869438864_)))
                                               (_hd3869538868_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3869438864_))))
                                           (if (gx#stx-null? _tl3869638871_)
                                               (___kont4353143532_
                                                _hd3869538868_)
                                               (if (gx#stx-datum?
                                                    _hd3869538868_)
                                                   (let ((_e3870138829_
                                                          (gx#stx-e
                                                           _hd3869538868_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3870138829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl3869638871_)
                     (let ((_e3870238833_ (gx#syntax-e _tl3869638871_)))
                       (let ((_tl3870438840_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3870238833_)))
                             (_hd3870338837_
                              (let ()
                                (declare (not safe))
                                (##car _e3870238833_))))
                         (if (gx#stx-null? _tl3870438840_)
                             (___kont4353343534_ _hd3870338837_)
                             (___kont4353743538_))))
                     (___kont4353743538_))
                 (if (let () (declare (not safe)) (equal? _e3870138829_ '::))
                     (if (gx#stx-pair? _tl3869638871_)
                         (let ((_e3871038757_ (gx#syntax-e _tl3869638871_)))
                           (let ((_tl3871238764_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3871038757_)))
                                 (_hd3871138761_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3871038757_))))
                             (if (gx#stx-pair? _tl3871238764_)
                                 (let ((_e3871338767_
                                        (gx#syntax-e _tl3871238764_)))
                                   (let ((_tl3871538774_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3871338767_)))
                                         (_hd3871438771_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3871338767_))))
                                     (if (gx#stx-datum? _hd3871438771_)
                                         (let ((_e3871638777_
                                                (gx#stx-e _hd3871438771_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e3871638777_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl3871538774_)
                                                   (let ((_e3871738781_
                                                          (gx#syntax-e
                                                           _tl3871538774_)))
                                                     (let ((_tl3871938788_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3871738781_)))
                                                           (_hd3871838785_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3871738781_))))
                                                       (if (gx#stx-null?
                                                            _tl3871938788_)
                                                           (___kont4353543536_
                                                            _hd3871838785_)
                                                           (___kont4353743538_))))
                                                   (___kont4353743538_))
                                               (___kont4353743538_)))
                                         (___kont4353743538_))))
                                 (___kont4353743538_))))
                         (___kont4353743538_))
                     (___kont4353743538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4353743538_)))))
                                       (___kont4353743538_))))))
                            (___kont4361343614_
                             (lambda (_L38561_ _L38563_)
                               (let* ((___stx4351243513_ _L38561_)
                                      (_g3857938591_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4351243513_))))
                                 (let ((___kont4351543516_
                                        (lambda (_L38619_ _L38621_)
                                          (let ((__tmp45413
                                                 (lambda (_g3863338635_)
                                                   (let ((__tmp45414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L38563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop37631_
                                                      __tmp45414
                                                      _g3863338635_
                                                      _K37921_)))))
                                            (declare (not safe))
                                            (_loop37631_
                                             _L38621_
                                             _vars37920_
                                             __tmp45413))))
                                       (___kont4351743518_
                                        (lambda () (_K37921_ _vars37920_))))
                                   (if (gx#stx-pair? ___stx4351243513_)
                                       (let ((_e3858338609_
                                              (gx#syntax-e ___stx4351243513_)))
                                         (let ((_tl3858538616_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3858338609_)))
                                               (_hd3858438613_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3858338609_))))
                                           (___kont4351543516_
                                            _tl3858538616_
                                            _hd3858438613_)))
                                       (___kont4351743518_))))))
                            (___kont4361543616_
                             (lambda (_L38530_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37631_ _L38530_ _vars37920_ _K37921_))))
                            (___kont4361743618_
                             (lambda (_L38476_ _L38478_)
                               (let ((__tmp45415
                                      (lambda (_g3849338495_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37631_
                                           _L38476_
                                           _g3849338495_
                                           _K37921_)))))
                                 (declare (not safe))
                                 (_loop37631_
                                  _L38478_
                                  _vars37920_
                                  __tmp45415))))
                            (___kont4361943620_
                             (lambda (_L38412_ _L38414_)
                               (let ((__tmp45416
                                      (lambda (_g3842938431_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37631_
                                           _L38412_
                                           _g3842938431_
                                           _K37921_)))))
                                 (declare (not safe))
                                 (_loop37631_
                                  _L38414_
                                  _vars37920_
                                  __tmp45416))))
                            (___kont4362143622_
                             (lambda (_L38357_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37631_ _L38357_ _vars37920_ _K37921_))))
                            (___kont4362343624_
                             (lambda (_L38307_ _L38309_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37633_
                                  _L38307_
                                  _vars37920_
                                  _K37921_))))
                            (___kont4362543626_
                             (lambda (_L38264_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37633_
                                  _L38264_
                                  _vars37920_
                                  _K37921_))))
                            (___kont4362743628_
                             (lambda (_L38207_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list37635_
                                  _L38207_
                                  _vars37920_
                                  _K37921_))))
                            (___kont4362943630_
                             (lambda (_L38148_ _L38150_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37631_ _L38148_ _vars37920_ _K37921_))))
                            (___kont4363143632_
                             (lambda (_L38086_)
                               (if (find (lambda (_g3810138103_)
                                           (gx#bound-identifier=?
                                            _g3810138103_
                                            _L38086_))
                                         _vars37920_)
                                   (_K37921_ _vars37920_)
                                   (_K37921_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L38086_ _vars37920_))))))
                            (___kont4363343634_
                             (lambda () (_K37921_ _vars37920_))))
                        (let* ((___match4376543766_
                                (lambda (_e3799138287_
                                         _hd3799238291_
                                         _tl3799338294_
                                         _e3799438297_
                                         _hd3799538301_
                                         _tl3799638304_)
                                  (let ((_L38307_ _hd3799538301_)
                                        (_L38309_ _hd3799238291_))
                                    (if (or (gx#stx-eq? 'values: _L38309_)
                                            (gx#stx-eq? 'vector: _L38309_))
                                        (___kont4362343624_ _L38307_ _L38309_)
                                        (if (gx#stx-datum? _hd3799238291_)
                                            (let ((_e3800138240_
                                                   (gx#stx-e _hd3799238291_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3800138240_
                                                            'struct:))
                                                  (___kont4363343634_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3800138240_
                                                                'class:))
                                                      (___kont4363343634_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e3800138240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4363343634_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3800138240_ 'var:))
                      (___kont4363143632_ _hd3799538301_)
                      (___kont4363343634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4363343634_))))))
                               (___match4365943660_
                                (lambda (_e3794638551_
                                         _hd3794738555_
                                         _tl3794838558_)
                                  (let ((_L38561_ _tl3794838558_)
                                        (_L38563_ _hd3794738555_))
                                    (if (or (gx#stx-eq? 'and: _L38563_)
                                            (gx#stx-eq? 'or: _L38563_))
                                        (___kont4361343614_ _L38561_ _L38563_)
                                        (if (gx#stx-datum? _hd3794738555_)
                                            (let ((_e3795338516_
                                                   (gx#stx-e _hd3794738555_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3795338516_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl3794838558_)
                                                      (let ((_e3795438520_
                                                             (gx#syntax-e
                                                              _tl3794838558_)))
                                                        (let ((_tl3795638527_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3795438520_)))
                      (_hd3795538524_
                       (let () (declare (not safe)) (##car _e3795438520_))))
                  (if (gx#stx-null? _tl3795638527_)
                      (___kont4361543616_ _hd3795538524_)
                      (___kont4363343634_))))
              (___kont4363343634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3795338516_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl3794838558_)
                                                          (let ((_e3796338456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3794838558_)))
                    (let ((_tl3796538463_
                           (let () (declare (not safe)) (##cdr _e3796338456_)))
                          (_hd3796438460_
                           (let ()
                             (declare (not safe))
                             (##car _e3796338456_))))
                      (if (gx#stx-pair? _tl3796538463_)
                          (let ((_e3796638466_ (gx#syntax-e _tl3796538463_)))
                            (let ((_tl3796838473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3796638466_)))
                                  (_hd3796738470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3796638466_))))
                              (if (gx#stx-null? _tl3796838473_)
                                  (___kont4361743618_
                                   _hd3796738470_
                                   _hd3796438460_)
                                  (___kont4363343634_))))
                          (if (gx#stx-null? _tl3796538463_)
                              (___match4376543766_
                               _e3794638551_
                               _hd3794738555_
                               _tl3794838558_
                               _e3796338456_
                               _hd3796438460_
                               _tl3796538463_)
                              (___kont4363343634_)))))
                  (___kont4363343634_))
              (if (let () (declare (not safe)) (equal? _e3795338516_ 'splice:))
                  (if (gx#stx-pair? _tl3794838558_)
                      (let ((_e3797538392_ (gx#syntax-e _tl3794838558_)))
                        (let ((_tl3797738399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3797538392_)))
                              (_hd3797638396_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3797538392_))))
                          (if (gx#stx-pair? _tl3797738399_)
                              (let ((_e3797838402_
                                     (gx#syntax-e _tl3797738399_)))
                                (let ((_tl3798038409_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3797838402_)))
                                      (_hd3797938406_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3797838402_))))
                                  (if (gx#stx-null? _tl3798038409_)
                                      (___kont4361943620_
                                       _hd3797938406_
                                       _hd3797638396_)
                                      (___kont4363343634_))))
                              (if (gx#stx-null? _tl3797738399_)
                                  (___match4376543766_
                                   _e3794638551_
                                   _hd3794738555_
                                   _tl3794838558_
                                   _e3797538392_
                                   _hd3797638396_
                                   _tl3797738399_)
                                  (___kont4363343634_)))))
                      (___kont4363343634_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3795338516_ 'box:))
                      (if (gx#stx-pair? _tl3794838558_)
                          (let ((_e3798638347_ (gx#syntax-e _tl3794838558_)))
                            (let ((_tl3798838354_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3798638347_)))
                                  (_hd3798738351_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3798638347_))))
                              (if (gx#stx-null? _tl3798838354_)
                                  (___kont4362143622_ _hd3798738351_)
                                  (___kont4363343634_))))
                          (___kont4363343634_))
                      (if (gx#stx-pair? _tl3794838558_)
                          (let ((_e3799438297_ (gx#syntax-e _tl3794838558_)))
                            (let ((_tl3799638304_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3799438297_)))
                                  (_hd3799538301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3799438297_))))
                              (if (gx#stx-null? _tl3799638304_)
                                  (___match4376543766_
                                   _e3794638551_
                                   _hd3794738555_
                                   _tl3794838558_
                                   _e3799438297_
                                   _hd3799538301_
                                   _tl3799638304_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e3795338516_ 'struct:))
                                      (if (gx#stx-pair? _tl3799638304_)
                                          (let ((_e3800538254_
                                                 (gx#syntax-e _tl3799638304_)))
                                            (let ((_tl3800738261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3800538254_)))
                                                  (_hd3800638258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3800538254_))))
                                              (if (gx#stx-null? _tl3800738261_)
                                                  (___kont4362543626_
                                                   _hd3800638258_)
                                                  (___kont4363343634_))))
                                          (___kont4363343634_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3795338516_ 'class:))
                                          (if (gx#stx-pair? _tl3799638304_)
                                              (let ((_e3801638197_
                                                     (gx#syntax-e
                                                      _tl3799638304_)))
                                                (let ((_tl3801838204_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3801638197_)))
                                                      (_hd3801738201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3801638197_))))
                                                  (if (gx#stx-null?
                                                       _tl3801838204_)
                                                      (___kont4362743628_
                                                       _hd3801738201_)
                                                      (___kont4363343634_))))
                                              (___kont4363343634_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3795338516_ 'apply:))
                                              (if (gx#stx-pair? _tl3799638304_)
                                                  (let ((_e3802838138_
                                                         (gx#syntax-e
                                                          _tl3799638304_)))
                                                    (let ((_tl3803038145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3802838138_)))
                                                          (_hd3802938142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3802838138_))))
                                                      (if (gx#stx-null?
                                                           _tl3803038145_)
                                                          (___kont4362943630_
                                                           _hd3802938142_
                                                           _hd3799538301_)
                                                          (___kont4363343634_))))
                                                  (___kont4363343634_))
                                              (___kont4363343634_)))))))
                          (___kont4363343634_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3794838558_)
                                                (let ((_e3799438297_
                                                       (gx#syntax-e
                                                        _tl3794838558_)))
                                                  (let ((_tl3799638304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3799438297_)))
                                                        (_hd3799538301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3799438297_))))
                                                    (if (gx#stx-null?
                                                         _tl3799638304_)
                                                        (___match4376543766_
                                                         _e3794638551_
                                                         _hd3794738555_
                                                         _tl3794838558_
                                                         _e3799438297_
                                                         _hd3799538301_
                                                         _tl3799638304_)
                                                        (___kont4363343634_))))
                                                (___kont4363343634_))))))))
                          (if (gx#stx-pair? ___stx4360843609_)
                              (let ((_e3793738650_
                                     (gx#syntax-e ___stx4360843609_)))
                                (let ((_tl3793938657_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3793738650_)))
                                      (_hd3793838654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3793738650_))))
                                  (if (gx#stx-datum? _hd3793838654_)
                                      (let ((_e3794038660_
                                             (gx#stx-e _hd3793838654_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3794038660_ '?:))
                                            (if (gx#stx-pair? _tl3793938657_)
                                                (let ((_e3794138664_
                                                       (gx#syntax-e
                                                        _tl3793938657_)))
                                                  (let ((_tl3794338671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3794138664_)))
                                                        (_hd3794238668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3794138664_))))
                                                    (___kont4361143612_
                                                     _tl3794338671_)))
                                                (___match4365943660_
                                                 _e3793738650_
                                                 _hd3793838654_
                                                 _tl3793938657_))
                                            (___match4365943660_
                                             _e3793738650_
                                             _hd3793838654_
                                             _tl3793938657_)))
                                      (___match4365943660_
                                       _e3793738650_
                                       _hd3793838654_
                                       _tl3793938657_))))
                              (___kont4363343634_)))))))
                 (_loop-vector37633_
                  (lambda (_body37794_ _vars37796_ _K37797_)
                    (let* ((___stx4386643867_ _body37794_)
                           (_g3780037823_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4386643867_))))
                      (let ((___kont4386943870_
                             (lambda (_L37900_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list37634_
                                  _L37900_
                                  _vars37796_
                                  _K37797_))))
                            (___kont4387143872_
                             (lambda (_L37854_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37631_
                                  _L37854_
                                  _vars37796_
                                  _K37797_)))))
                        (if (gx#stx-pair? ___stx4386643867_)
                            (let ((_e3780337876_
                                   (gx#syntax-e ___stx4386643867_)))
                              (let ((_tl3780537883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3780337876_)))
                                    (_hd3780437880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3780337876_))))
                                (if (gx#stx-datum? _hd3780437880_)
                                    (let ((_e3780637886_
                                           (gx#stx-e _hd3780437880_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3780637886_ 'simple:))
                                          (if (gx#stx-pair? _tl3780537883_)
                                              (let ((_e3780737890_
                                                     (gx#syntax-e
                                                      _tl3780537883_)))
                                                (let ((_tl3780937897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3780737890_)))
                                                      (_hd3780837894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3780737890_))))
                                                  (if (gx#stx-null?
                                                       _tl3780937897_)
                                                      (___kont4386943870_
                                                       _hd3780837894_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3780037823_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3780037823_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3780637886_ 'list:))
                                              (if (gx#stx-pair? _tl3780537883_)
                                                  (let ((_e3781537844_
                                                         (gx#syntax-e
                                                          _tl3780537883_)))
                                                    (let ((_tl3781737851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3781537844_)))
                                                          (_hd3781637848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3781537844_))))
                                                      (if (gx#stx-null?
                                                           _tl3781737851_)
                                                          (___kont4387143872_
                                                           _hd3781637848_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3780037823_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3780037823_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3780037823_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3780037823_)))))
                            (let () (declare (not safe)) (_g3780037823_)))))))
                 (_loop-list37634_
                  (lambda (_rest37724_ _vars37726_ _K37727_)
                    (let* ((___stx4391643917_ _rest37724_)
                           (_g3773037742_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4391643917_))))
                      (let ((___kont4391943920_
                             (lambda (_L37770_ _L37772_)
                               (let ((__tmp45417
                                      (lambda (_g3778437786_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list37634_
                                           _L37770_
                                           _g3778437786_
                                           _K37727_)))))
                                 (declare (not safe))
                                 (_loop37631_
                                  _L37772_
                                  _vars37726_
                                  __tmp45417))))
                            (___kont4392143922_
                             (lambda () (_K37727_ _vars37726_))))
                        (if (gx#stx-pair? ___stx4391643917_)
                            (let ((_e3773437760_
                                   (gx#syntax-e ___stx4391643917_)))
                              (let ((_tl3773637767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3773437760_)))
                                    (_hd3773537764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3773437760_))))
                                (___kont4391943920_
                                 _tl3773637767_
                                 _hd3773537764_)))
                            (___kont4392143922_))))))
                 (_loop-class-list37635_
                  (lambda (_rest37637_ _vars37639_ _K37640_)
                    (let* ((___stx4393243933_ _rest37637_)
                           (_g3764337658_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4393243933_))))
                      (let ((___kont4393543936_
                             (lambda (_L37696_ _L37698_)
                               (let ((__tmp45418
                                      (lambda (_g3771437716_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list37635_
                                           _L37696_
                                           _g3771437716_
                                           _K37640_)))))
                                 (declare (not safe))
                                 (_loop37631_
                                  _L37698_
                                  _vars37639_
                                  __tmp45418))))
                            (___kont4393743938_
                             (lambda () (_K37640_ _vars37639_))))
                        (if (gx#stx-pair? ___stx4393243933_)
                            (let ((_e3764737676_
                                   (gx#syntax-e ___stx4393243933_)))
                              (let ((_tl3764937683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3764737676_)))
                                    (_hd3764837680_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3764737676_))))
                                (if (gx#stx-pair? _tl3764937683_)
                                    (let ((_e3765037686_
                                           (gx#syntax-e _tl3764937683_)))
                                      (let ((_tl3765237693_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3765037686_)))
                                            (_hd3765137690_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3765037686_))))
                                        (___kont4393543936_
                                         _tl3765237693_
                                         _hd3765137690_)))
                                    (___kont4393743938_))))
                            (___kont4393743938_)))))))
          (let ()
            (declare (not safe))
            (_loop37631_ _ptree37628_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx34589_ _tgt34591_ _ptree34592_ _K34593_ _E34594_)
        (letrec ((_generate134596_
                  (lambda (_tgt35841_ _ptree35843_ _K35844_ _E35845_)
                    (let* ((_g3584735855_
                            (lambda (_g3584835851_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3584835851_)))
                           (_g3584637624_
                            (lambda (_g3584835859_)
                              ((lambda (_L35862_)
                                 (let ()
                                   (let* ((___stx4416844169_ _ptree35843_)
                                          (_g3588936031_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4416844169_))))
                                     (let ((___kont4417144172_
                                            (lambda (_L37339_ _L37341_)
                                              (let* ((___stx4408644087_
                                                      _L37339_)
                                                     (_g3735837393_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4408644087_))))
                                                (let ((___kont4408944090_
                                                       (lambda ()
                                                         (let ((__tmp45419
                                                                (let ((__tmp45422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45425 (gx#datum->syntax '#f '?))
                                     (__tmp45423
                                      (let ((__tmp45424
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35862_ '()))))
                                        (declare (not safe))
                                        (cons _L37341_ __tmp45424))))
                                 (declare (not safe))
                                 (cons __tmp45425 __tmp45423)))
                              (__tmp45420
                               (let ((__tmp45421
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35845_ '()))))
                                 (declare (not safe))
                                 (cons _K35844_ __tmp45421))))
                          (declare (not safe))
                          (cons __tmp45422 __tmp45420))))
                   (declare (not safe))
                   (cons 'if __tmp45419))))
              (___kont4409144092_
               (lambda (_L37594_)
                 (let ((__tmp45426
                        (let ((__tmp45430
                               (let ((__tmp45433 (gx#datum->syntax '#f '?))
                                     (__tmp45431
                                      (let ((__tmp45432
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35862_ '()))))
                                        (declare (not safe))
                                        (cons _L37341_ __tmp45432))))
                                 (declare (not safe))
                                 (cons __tmp45433 __tmp45431)))
                              (__tmp45427
                               (let ((__tmp45429
                                      (let ()
                                        (declare (not safe))
                                        (_generate134596_
                                         _tgt35841_
                                         _L37594_
                                         _K35844_
                                         _E35845_)))
                                     (__tmp45428
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35845_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45429 __tmp45428))))
                          (declare (not safe))
                          (cons __tmp45430 __tmp45427))))
                   (declare (not safe))
                   (cons 'if __tmp45426))))
              (___kont4409344094_
               (lambda (_L37532_)
                 (let* ((_g3754637554_
                         (lambda (_g3754737550_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3754737550_)))
                        (_g3754537573_
                         (lambda (_g3754737558_)
                           ((lambda (_L37561_)
                              (let ()
                                (let ((__tmp45434
                                       (let ((__tmp45441
                                              (let ((__tmp45442
                                                     (let ((__tmp45443
                                                            (let ((__tmp45444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45445
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35862_ '()))))
                             (declare (not safe))
                             (cons _L37341_ __tmp45445))))
                      (declare (not safe))
                      (cons __tmp45444 '()))))
               (declare (not safe))
               (cons _L37561_ __tmp45443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45442 '())))
                                             (__tmp45435
                                              (let ((__tmp45436
                                                     (let ((__tmp45437
                                                            (let ((__tmp45438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45440
                                  (let ()
                                    (declare (not safe))
                                    (_generate134596_
                                     _L37561_
                                     _L37532_
                                     _K35844_
                                     _E35845_)))
                                 (__tmp45439
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35845_ '()))))
                             (declare (not safe))
                             (cons __tmp45440 __tmp45439))))
                      (declare (not safe))
                      (cons _L37561_ __tmp45438))))
               (declare (not safe))
               (cons 'if __tmp45437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45436 '()))))
                                         (declare (not safe))
                                         (cons __tmp45441 __tmp45435))))
                                  (declare (not safe))
                                  (cons 'let __tmp45434))))
                            _g3754737558_)))
                        (__tmp45446 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3754537573_ __tmp45446))))
              (___kont4409544096_
               (lambda (_L37448_ _L37450_)
                 (let* ((_g3747037478_
                         (lambda (_g3747137474_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3747137474_)))
                        (_g3746937497_
                         (lambda (_g3747137482_)
                           ((lambda (_L37485_)
                              (let ()
                                (let ((__tmp45447
                                       (let ((__tmp45459
                                              (let ((__tmp45462
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp45460
                                                     (let ((__tmp45461
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L35862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L37341_ __tmp45461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45462 __tmp45460)))
                                             (__tmp45448
                                              (let ((__tmp45450
                                                     (let ((__tmp45451
                                                            (let ((__tmp45454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45455
                                  (let ((__tmp45456
                                         (let ((__tmp45457
                                                (let ((__tmp45458
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35862_ '()))))
                                                  (declare (not safe))
                                                  (cons _L37450_ __tmp45458))))
                                           (declare (not safe))
                                           (cons __tmp45457 '()))))
                                    (declare (not safe))
                                    (cons _L37485_ __tmp45456))))
                             (declare (not safe))
                             (cons __tmp45455 '())))
                          (__tmp45452
                           (let ((__tmp45453
                                  (let ()
                                    (declare (not safe))
                                    (_generate134596_
                                     _L37485_
                                     _L37448_
                                     _K35844_
                                     _E35845_))))
                             (declare (not safe))
                             (cons __tmp45453 '()))))
                      (declare (not safe))
                      (cons __tmp45454 __tmp45452))))
               (declare (not safe))
               (cons 'let __tmp45451)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45449
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35845_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45450 __tmp45449))))
                                         (declare (not safe))
                                         (cons __tmp45459 __tmp45448))))
                                  (declare (not safe))
                                  (cons 'if __tmp45447))))
                            _g3747137482_)))
                        (__tmp45463 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3746937497_ __tmp45463)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3735537605_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4408644087_)
                                                               (let ((_e3736137584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4408644087_)))
                         (let ((_tl3736337591_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3736137584_)))
                               (_hd3736237588_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3736137584_))))
                           (if (gx#stx-null? _tl3736337591_)
                               (___kont4409144092_ _hd3736237588_)
                               (if (gx#stx-datum? _hd3736237588_)
                                   (let ((_e3736837518_
                                          (gx#stx-e _hd3736237588_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3736837518_ '=>:))
                                         (if (gx#stx-pair? _tl3736337591_)
                                             (let ((_e3736937522_
                                                    (gx#syntax-e
                                                     _tl3736337591_)))
                                               (let ((_tl3737137529_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3736937522_)))
                                                     (_hd3737037526_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3736937522_))))
                                                 (if (gx#stx-null?
                                                      _tl3737137529_)
                                                     (___kont4409344094_
                                                      _hd3737037526_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3735837393_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3735837393_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3736837518_ '::))
                                             (if (gx#stx-pair? _tl3736337591_)
                                                 (let ((_e3737837414_
                                                        (gx#syntax-e
                                                         _tl3736337591_)))
                                                   (let ((_tl3738037421_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3737837414_)))
                                                         (_hd3737937418_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3737837414_))))
                                                     (if (gx#stx-pair?
                                                          _tl3738037421_)
                                                         (let ((_e3738137424_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3738037421_)))
                   (let ((_tl3738337431_
                          (let () (declare (not safe)) (##cdr _e3738137424_)))
                         (_hd3738237428_
                          (let () (declare (not safe)) (##car _e3738137424_))))
                     (if (gx#stx-datum? _hd3738237428_)
                         (let ((_e3738437434_ (gx#stx-e _hd3738237428_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e3738437434_ '=>:))
                               (if (gx#stx-pair? _tl3738337431_)
                                   (let ((_e3738537438_
                                          (gx#syntax-e _tl3738337431_)))
                                     (let ((_tl3738737445_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3738537438_)))
                                           (_hd3738637442_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3738537438_))))
                                       (if (gx#stx-null? _tl3738737445_)
                                           (___kont4409544096_
                                            _hd3738637442_
                                            _hd3737937418_)
                                           (let ()
                                             (declare (not safe))
                                             (_g3735837393_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3735837393_)))
                               (let () (declare (not safe)) (_g3735837393_))))
                         (let () (declare (not safe)) (_g3735837393_)))))
                 (let () (declare (not safe)) (_g3735837393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3735837393_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g3735837393_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3735837393_))))))
                       (let () (declare (not safe)) (_g3735837393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4408644087_)
                                                        (___kont4408944090_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3735537605_))))))))
                                           (___kont4417344174_
                                            (lambda (_L37236_)
                                              (let* ((___stx4407044071_
                                                      _L37236_)
                                                     (_g3724937261_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4407044071_))))
                                                (let ((___kont4407344074_
                                                       (lambda (_L37289_
                                                                _L37291_)
                                                         (let ((__tmp45464
                                                                (let ((__tmp45465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L37289_))))
                          (declare (not safe))
                          (_generate134596_
                           _tgt35841_
                           __tmp45465
                           _K35844_
                           _E35845_))))
                   (declare (not safe))
                   (_generate134596_
                    _tgt35841_
                    _L37291_
                    __tmp45464
                    _E35845_))))
              (___kont4407544076_ (lambda () _K35844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4407044071_)
                                                      (let ((_e3725337279_
                                                             (gx#syntax-e
                                                              ___stx4407044071_)))
                                                        (let ((_tl3725537286_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3725337279_)))
                      (_hd3725437283_
                       (let () (declare (not safe)) (##car _e3725337279_))))
                  (___kont4407344074_ _tl3725537286_ _hd3725437283_)))
              (___kont4407544076_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4417544176_
                                            (lambda (_L37143_)
                                              (let* ((___stx4405444055_
                                                      _L37143_)
                                                     (_g3715637168_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4405444055_))))
                                                (let ((___kont4405744058_
                                                       (lambda (_L37196_
                                                                _L37198_)
                                                         (let ((__tmp45466
                                                                (let ((__tmp45467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L37196_))))
                          (declare (not safe))
                          (_generate134596_
                           _tgt35841_
                           __tmp45467
                           _K35844_
                           _E35845_))))
                   (declare (not safe))
                   (_generate134596_
                    _tgt35841_
                    _L37198_
                    _K35844_
                    __tmp45466))))
              (___kont4405944060_ (lambda () _E35845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4405444055_)
                                                      (let ((_e3716037186_
                                                             (gx#syntax-e
                                                              ___stx4405444055_)))
                                                        (let ((_tl3716237193_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3716037186_)))
                      (_hd3716137190_
                       (let () (declare (not safe)) (##car _e3716037186_))))
                  (___kont4405744058_ _tl3716237193_ _hd3716137190_)))
              (___kont4405944060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4417744178_
                                            (lambda (_L37108_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate134596_
                                                 _tgt35841_
                                                 _L37108_
                                                 _E35845_
                                                 _K35844_))))
                                           (___kont4417944180_
                                            (lambda (_L36990_ _L36992_)
                                              (let* ((_g3700937024_
                                                      (lambda (_g3701037020_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3701037020_)))
                                                     (_g3700837073_
                                                      (lambda (_g3701037028_)
                                                        (if (gx#stx-pair?
                                                             _g3701037028_)
                                                            (let ((_e3701337031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3701037028_)))
                      (let ((_hd3701437035_
                             (let ()
                               (declare (not safe))
                               (##car _e3701337031_)))
                            (_tl3701537038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3701337031_))))
                        (if (gx#stx-pair? _tl3701537038_)
                            (let ((_e3701637041_ (gx#syntax-e _tl3701537038_)))
                              (let ((_hd3701737045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3701637041_)))
                                    (_tl3701837048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3701637041_))))
                                (if (gx#stx-null? _tl3701837048_)
                                    ((lambda (_L37051_ _L37053_)
                                       (let ()
                                         (let ((__tmp45468
                                                (let ((__tmp45506
                                                       (let ((__tmp45508
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp45507
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L35862_ '()))))
                 (declare (not safe))
                 (cons __tmp45508 __tmp45507)))
              (__tmp45469
               (let ((__tmp45471
                      (let ((_hd-pat37069_ (gx#stx-e _L36992_))
                            (_tl-pat37071_ (gx#stx-e _L36990_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat37069_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat37071_ '(any:))))
                            _K35844_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat37071_ '(any:)))
                                (let ((__tmp45472
                                       (let ((__tmp45475
                                              (let ((__tmp45476
                                                     (let ((__tmp45477
                                                            (let ((__tmp45478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45480 (gx#datum->syntax '#f '##car))
                                 (__tmp45479
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35862_ '()))))
                             (declare (not safe))
                             (cons __tmp45480 __tmp45479))))
                      (declare (not safe))
                      (cons __tmp45478 '()))))
               (declare (not safe))
               (cons _L37053_ __tmp45477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45476 '())))
                                             (__tmp45473
                                              (let ((__tmp45474
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate134596_
                                                        _L37053_
                                                        _L36992_
                                                        _K35844_
                                                        _E35845_))))
                                                (declare (not safe))
                                                (cons __tmp45474 '()))))
                                         (declare (not safe))
                                         (cons __tmp45475 __tmp45473))))
                                  (declare (not safe))
                                  (cons 'let __tmp45472))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat37069_ '(any:)))
                                    (let ((__tmp45481
                                           (let ((__tmp45484
                                                  (let ((__tmp45485
                                                         (let ((__tmp45486
                                                                (let ((__tmp45487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45489 (gx#datum->syntax '#f '##cdr))
                                     (__tmp45488
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35862_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45489 __tmp45488))))
                          (declare (not safe))
                          (cons __tmp45487 '()))))
                   (declare (not safe))
                   (cons _L37051_ __tmp45486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45485 '())))
                                                 (__tmp45482
                                                  (let ((__tmp45483
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate134596_
                                                            _L37051_
                                                            _L36990_
                                                            _K35844_
                                                            _E35845_))))
                                                    (declare (not safe))
                                                    (cons __tmp45483 '()))))
                                             (declare (not safe))
                                             (cons __tmp45484 __tmp45482))))
                                      (declare (not safe))
                                      (cons 'let __tmp45481))
                                    (let ((__tmp45490
                                           (let ((__tmp45494
                                                  (let ((__tmp45501
                                                         (let ((__tmp45502
                                                                (let ((__tmp45503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45505 (gx#datum->syntax '#f '##car))
                                     (__tmp45504
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35862_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45505 __tmp45504))))
                          (declare (not safe))
                          (cons __tmp45503 '()))))
                   (declare (not safe))
                   (cons _L37053_ __tmp45502)))
                (__tmp45495
                 (let ((__tmp45496
                        (let ((__tmp45497
                               (let ((__tmp45498
                                      (let ((__tmp45500
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp45499
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35862_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45500 __tmp45499))))
                                 (declare (not safe))
                                 (cons __tmp45498 '()))))
                          (declare (not safe))
                          (cons _L37051_ __tmp45497))))
                   (declare (not safe))
                   (cons __tmp45496 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45501
                                                          __tmp45495)))
                                                 (__tmp45491
                                                  (let ((__tmp45492
                                                         (let ((__tmp45493
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate134596_
                           _L37051_
                           _L36990_
                           _K35844_
                           _E35845_))))
                   (declare (not safe))
                   (_generate134596_ _L37053_ _L36992_ __tmp45493 _E35845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45492 '()))))
                                             (declare (not safe))
                                             (cons __tmp45494 __tmp45491))))
                                      (declare (not safe))
                                      (cons 'let __tmp45490)))))))
                     (__tmp45470
                      (let () (declare (not safe)) (cons _E35845_ '()))))
                 (declare (not safe))
                 (cons __tmp45471 __tmp45470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45506
                                                        __tmp45469))))
                                           (declare (not safe))
                                           (cons 'if __tmp45468))))
                                     _hd3701737045_
                                     _hd3701437035_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3700937024_ _g3701037028_)))))
                            (let ()
                              (declare (not safe))
                              (_g3700937024_ _g3701037028_)))))
                    (let ()
                      (declare (not safe))
                      (_g3700937024_ _g3701037028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45509
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3700837073_ __tmp45509))))
                                           (___kont4418144182_
                                            (lambda ()
                                              (let ((__tmp45510
                                                     (let ((__tmp45513
                                                            (let ((__tmp45515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp45514
                           (let () (declare (not safe)) (cons _L35862_ '()))))
                      (declare (not safe))
                      (cons __tmp45515 __tmp45514)))
                   (__tmp45511
                    (let ((__tmp45512
                           (let () (declare (not safe)) (cons _E35845_ '()))))
                      (declare (not safe))
                      (cons _K35844_ __tmp45512))))
               (declare (not safe))
               (cons __tmp45513 __tmp45511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp45510))))
                                           (___kont4418344184_
                                            (lambda (_L36906_ _L36908_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice34598_
                                                 _tgt35841_
                                                 _L36908_
                                                 _L36906_
                                                 _K35844_
                                                 _E35845_))))
                                           (___kont4418544186_
                                            (lambda (_L36820_)
                                              (let* ((_g3683436842_
                                                      (lambda (_g3683536838_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3683536838_)))
                                                     (_g3683336861_
                                                      (lambda (_g3683536846_)
                                                        ((lambda (_L36849_)
                                                           (let ()
                                                             (let ((__tmp45516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45529
                                   (let ((__tmp45531
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp45530
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35862_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45531 __tmp45530)))
                                  (__tmp45517
                                   (let ((__tmp45519
                                          (let ((__tmp45520
                                                 (let ((__tmp45523
                                                        (let ((__tmp45524
                                                               (let ((__tmp45525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45526
                                     (let ((__tmp45528
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp45527
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35862_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45528 __tmp45527))))
                                (declare (not safe))
                                (cons __tmp45526 '()))))
                         (declare (not safe))
                         (cons _L36849_ __tmp45525))))
                  (declare (not safe))
                  (cons __tmp45524 '())))
               (__tmp45521
                (let ((__tmp45522
                       (let ()
                         (declare (not safe))
                         (_generate134596_
                          _L36849_
                          _L36820_
                          _K35844_
                          _E35845_))))
                  (declare (not safe))
                  (cons __tmp45522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45523
                                                         __tmp45521))))
                                            (declare (not safe))
                                            (cons 'let __tmp45520)))
                                         (__tmp45518
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35845_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45519 __tmp45518))))
                              (declare (not safe))
                              (cons __tmp45529 __tmp45517))))
                       (declare (not safe))
                       (cons 'if __tmp45516))))
                 _g3683536846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45532
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3683336861_ __tmp45532))))
                                           (___kont4418744188_
                                            (lambda (_L36625_)
                                              (let* ((___stx4400444005_
                                                      _L36625_)
                                                     (_g3664036663_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4400444005_))))
                                                (let ((___kont4400744008_
                                                       (lambda (_L36740_)
                                                         (let* ((_g3675436762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3675536758_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3675536758_)))
                        (_g3675336781_
                         (lambda (_g3675536766_)
                           ((lambda (_L36769_)
                              (let ()
                                (let ((__tmp45533
                                       (let ((__tmp45537
                                              (let ((__tmp45543
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp45538
                                                     (let ((__tmp45540
                                                            (let ((__tmp45542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp45541
                           (let () (declare (not safe)) (cons _L35862_ '()))))
                      (declare (not safe))
                      (cons __tmp45542 __tmp45541)))
                   (__tmp45539
                    (let () (declare (not safe)) (cons _L36769_ '()))))
               (declare (not safe))
               (cons __tmp45540 __tmp45539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45543 __tmp45538)))
                                             (__tmp45534
                                              (let ((__tmp45536
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector34599_
                                                        _tgt35841_
                                                        _L36740_
                                                        '0
                                                        _K35844_
                                                        _E35845_)))
                                                    (__tmp45535
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35845_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45536 __tmp45535))))
                                         (declare (not safe))
                                         (cons __tmp45537 __tmp45534))))
                                  (declare (not safe))
                                  (cons 'if __tmp45533))))
                            _g3675536766_)))
                        (__tmp45544 (gx#stx-length _L36740_)))
                   (declare (not safe))
                   (_g3675336781_ __tmp45544))))
              (___kont4400944010_
               (lambda (_L36694_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector34600_
                    _tgt35841_
                    _L36694_
                    'values->list
                    _K35844_
                    _E35845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4400444005_)
                                                      (let ((_e3664336716_
                                                             (gx#syntax-e
                                                              ___stx4400444005_)))
                                                        (let ((_tl3664536723_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3664336716_)))
                      (_hd3664436720_
                       (let () (declare (not safe)) (##car _e3664336716_))))
                  (if (gx#stx-datum? _hd3664436720_)
                      (let ((_e3664636726_ (gx#stx-e _hd3664436720_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3664636726_ 'simple:))
                            (if (gx#stx-pair? _tl3664536723_)
                                (let ((_e3664736730_
                                       (gx#syntax-e _tl3664536723_)))
                                  (let ((_tl3664936737_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3664736730_)))
                                        (_hd3664836734_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3664736730_))))
                                    (if (gx#stx-null? _tl3664936737_)
                                        (___kont4400744008_ _hd3664836734_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3664036663_)))))
                                (let () (declare (not safe)) (_g3664036663_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3664636726_ 'list:))
                                (if (gx#stx-pair? _tl3664536723_)
                                    (let ((_e3665536684_
                                           (gx#syntax-e _tl3664536723_)))
                                      (let ((_tl3665736691_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3665536684_)))
                                            (_hd3665636688_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3665536684_))))
                                        (if (gx#stx-null? _tl3665736691_)
                                            (___kont4400944010_ _hd3665636688_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3664036663_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3664036663_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3664036663_)))))
                      (let () (declare (not safe)) (_g3664036663_)))))
              (let () (declare (not safe)) (_g3664036663_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4418944190_
                                            (lambda (_L36430_)
                                              (let* ((___stx4395443955_
                                                      _L36430_)
                                                     (_g3644536468_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4395443955_))))
                                                (let ((___kont4395743958_
                                                       (lambda (_L36545_)
                                                         (let* ((_g3655936567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3656036563_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3656036563_)))
                        (_g3655836586_
                         (lambda (_g3656036571_)
                           ((lambda (_L36574_)
                              (let ()
                                (let ((__tmp45545
                                       (let ((__tmp45560
                                              (let ((__tmp45562
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp45561
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L35862_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45562 __tmp45561)))
                                             (__tmp45546
                                              (let ((__tmp45548
                                                     (let ((__tmp45549
                                                            (let ((__tmp45553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45559 (gx#datum->syntax '#f '##fx=))
                                 (__tmp45554
                                  (let ((__tmp45556
                                         (let ((__tmp45558
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp45557
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L35862_ '()))))
                                           (declare (not safe))
                                           (cons __tmp45558 __tmp45557)))
                                        (__tmp45555
                                         (let ()
                                           (declare (not safe))
                                           (cons _L36574_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45556 __tmp45555))))
                             (declare (not safe))
                             (cons __tmp45559 __tmp45554)))
                          (__tmp45550
                           (let ((__tmp45552
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector34599_
                                     _tgt35841_
                                     _L36545_
                                     '0
                                     _K35844_
                                     _E35845_)))
                                 (__tmp45551
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35845_ '()))))
                             (declare (not safe))
                             (cons __tmp45552 __tmp45551))))
                      (declare (not safe))
                      (cons __tmp45553 __tmp45550))))
               (declare (not safe))
               (cons 'if __tmp45549)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35845_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45548 __tmp45547))))
                                         (declare (not safe))
                                         (cons __tmp45560 __tmp45546))))
                                  (declare (not safe))
                                  (cons 'if __tmp45545))))
                            _g3656036571_)))
                        (__tmp45563 (gx#stx-length _L36545_)))
                   (declare (not safe))
                   (_g3655836586_ __tmp45563))))
              (___kont4395943960_
               (lambda (_L36499_)
                 (let ((__tmp45564
                        (let ((__tmp45568
                               (let ((__tmp45570
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp45569
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35862_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45570 __tmp45569)))
                              (__tmp45565
                               (let ((__tmp45567
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector34600_
                                         _tgt35841_
                                         _L36499_
                                         'vector->list
                                         _K35844_
                                         _E35845_)))
                                     (__tmp45566
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35845_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45567 __tmp45566))))
                          (declare (not safe))
                          (cons __tmp45568 __tmp45565))))
                   (declare (not safe))
                   (cons 'if __tmp45564)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4395443955_)
                                                      (let ((_e3644836521_
                                                             (gx#syntax-e
                                                              ___stx4395443955_)))
                                                        (let ((_tl3645036528_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3644836521_)))
                      (_hd3644936525_
                       (let () (declare (not safe)) (##car _e3644836521_))))
                  (if (gx#stx-datum? _hd3644936525_)
                      (let ((_e3645136531_ (gx#stx-e _hd3644936525_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3645136531_ 'simple:))
                            (if (gx#stx-pair? _tl3645036528_)
                                (let ((_e3645236535_
                                       (gx#syntax-e _tl3645036528_)))
                                  (let ((_tl3645436542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3645236535_)))
                                        (_hd3645336539_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3645236535_))))
                                    (if (gx#stx-null? _tl3645436542_)
                                        (___kont4395743958_ _hd3645336539_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3644536468_)))))
                                (let () (declare (not safe)) (_g3644536468_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3645136531_ 'list:))
                                (if (gx#stx-pair? _tl3645036528_)
                                    (let ((_e3646036489_
                                           (gx#syntax-e _tl3645036528_)))
                                      (let ((_tl3646236496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3646036489_)))
                                            (_hd3646136493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3646036489_))))
                                        (if (gx#stx-null? _tl3646236496_)
                                            (___kont4395943960_ _hd3646136493_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3644536468_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3644536468_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3644536468_)))))
                      (let () (declare (not safe)) (_g3644536468_)))))
              (let () (declare (not safe)) (_g3644536468_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4419144192_
                                            (lambda (_L36381_ _L36383_)
                                              (let ((__tmp45571
                                                     (gx#stx-e _L36383_)))
                                                (declare (not safe))
                                                (_generate-struct34601_
                                                 __tmp45571
                                                 _tgt35841_
                                                 _L36381_
                                                 _K35844_
                                                 _E35845_))))
                                           (___kont4419344194_
                                            (lambda (_L36322_ _L36324_)
                                              (let ((__tmp45572
                                                     (gx#stx-e _L36324_)))
                                                (declare (not safe))
                                                (_generate-class34604_
                                                 __tmp45572
                                                 _tgt35841_
                                                 _L36322_
                                                 _K35844_
                                                 _E35845_))))
                                           (___kont4419544196_
                                            (lambda (_L36225_)
                                              (let* ((_g3623936247_
                                                      (lambda (_g3624036243_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3624036243_)))
                                                     (_g3623836266_
                                                      (lambda (_g3624036251_)
                                                        ((lambda (_L36254_)
                                                           (let ()
                                                             (let ((__tmp45573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45576
                                   (let ((__tmp45577
                                          (let ((__tmp45578
                                                 (let ((__tmp45579
                                                        (let ((__tmp45581
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp45580
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L36225_ '()))))
                  (declare (not safe))
                  (cons __tmp45581 __tmp45580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45579 '()))))
                                            (declare (not safe))
                                            (cons _L35862_ __tmp45578))))
                                     (declare (not safe))
                                     (cons _L36254_ __tmp45577)))
                                  (__tmp45574
                                   (let ((__tmp45575
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35845_ '()))))
                                     (declare (not safe))
                                     (cons _K35844_ __tmp45575))))
                              (declare (not safe))
                              (cons __tmp45576 __tmp45574))))
                       (declare (not safe))
                       (cons 'if __tmp45573))))
                 _g3624036251_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45582
                                                      (let ((_e36270_
                                                             (gx#stx-e
                                                              _L36225_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e36270_))
                        (keyword? _e36270_)
                        (let () (declare (not safe)) (immediate? _e36270_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e36270_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3623836266_ __tmp45582))))
                                           (___kont4419744198_
                                            (lambda (_L36145_ _L36147_)
                                              (let* ((_g3616336171_
                                                      (lambda (_g3616436167_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3616436167_)))
                                                     (_g3616236190_
                                                      (lambda (_g3616436175_)
                                                        ((lambda (_L36178_)
                                                           (let ()
                                                             (let ((__tmp45583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45586
                                   (let ((__tmp45587
                                          (let ((__tmp45588
                                                 (let ((__tmp45589
                                                        (let ((__tmp45590
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L35862_ '()))))
                  (declare (not safe))
                  (cons _L36147_ __tmp45590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45589 '()))))
                                            (declare (not safe))
                                            (cons _L36178_ __tmp45588))))
                                     (declare (not safe))
                                     (cons __tmp45587 '())))
                                  (__tmp45584
                                   (let ((__tmp45585
                                          (let ()
                                            (declare (not safe))
                                            (_generate134596_
                                             _L36178_
                                             _L36145_
                                             _K35844_
                                             _E35845_))))
                                     (declare (not safe))
                                     (cons __tmp45585 '()))))
                              (declare (not safe))
                              (cons __tmp45586 __tmp45584))))
                       (declare (not safe))
                       (cons 'let __tmp45583))))
                 _g3616436175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45591
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3616236190_ __tmp45591))))
                                           (___kont4419944200_
                                            (lambda (_L36087_)
                                              (let ((__tmp45592
                                                     (let ((__tmp45594
                                                            (let ((__tmp45595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45596
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35862_ '()))))
                             (declare (not safe))
                             (cons _L36087_ __tmp45596))))
                      (declare (not safe))
                      (cons __tmp45595 '())))
                   (__tmp45593
                    (let () (declare (not safe)) (cons _K35844_ '()))))
               (declare (not safe))
               (cons __tmp45594 __tmp45593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp45592))))
                                           (___kont4420144202_
                                            (lambda () _K35844_)))
                                       (if (gx#stx-pair? ___stx4416844169_)
                                           (let ((_e3589337315_
                                                  (gx#syntax-e
                                                   ___stx4416844169_)))
                                             (let ((_tl3589537322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3589337315_)))
                                                   (_hd3589437319_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3589337315_))))
                                               (if (gx#stx-datum?
                                                    _hd3589437319_)
                                                   (let ((_e3589637325_
                                                          (gx#stx-e
                                                           _hd3589437319_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3589637325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl3589537322_)
                     (let ((_e3589737329_ (gx#syntax-e _tl3589537322_)))
                       (let ((_tl3589937336_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3589737329_)))
                             (_hd3589837333_
                              (let ()
                                (declare (not safe))
                                (##car _e3589737329_))))
                         (___kont4417144172_ _tl3589937336_ _hd3589837333_)))
                     (let () (declare (not safe)) (_g3588936031_)))
                 (if (let () (declare (not safe)) (equal? _e3589637325_ 'and:))
                     (___kont4417344174_ _tl3589537322_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3589637325_ 'or:))
                         (___kont4417544176_ _tl3589537322_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3589637325_ 'not:))
                             (if (gx#stx-pair? _tl3589537322_)
                                 (let ((_e3591537098_
                                        (gx#syntax-e _tl3589537322_)))
                                   (let ((_tl3591737105_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3591537098_)))
                                         (_hd3591637102_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3591537098_))))
                                     (if (gx#stx-null? _tl3591737105_)
                                         (___kont4417744178_ _hd3591637102_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588936031_)))))
                                 (let () (declare (not safe)) (_g3588936031_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3589637325_ 'cons:))
                                 (if (gx#stx-pair? _tl3589537322_)
                                     (let ((_e3592436970_
                                            (gx#syntax-e _tl3589537322_)))
                                       (let ((_tl3592636977_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3592436970_)))
                                             (_hd3592536974_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3592436970_))))
                                         (if (gx#stx-pair? _tl3592636977_)
                                             (let ((_e3592736980_
                                                    (gx#syntax-e
                                                     _tl3592636977_)))
                                               (let ((_tl3592936987_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3592736980_)))
                                                     (_hd3592836984_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3592736980_))))
                                                 (if (gx#stx-null?
                                                      _tl3592936987_)
                                                     (___kont4417944180_
                                                      _hd3592836984_
                                                      _hd3592536974_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588936031_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3588936031_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588936031_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3589637325_ 'null:))
                                     (if (gx#stx-null? _tl3589537322_)
                                         (___kont4418144182_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588936031_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3589637325_ 'splice:))
                                         (if (gx#stx-pair? _tl3589537322_)
                                             (let ((_e3594036886_
                                                    (gx#syntax-e
                                                     _tl3589537322_)))
                                               (let ((_tl3594236893_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3594036886_)))
                                                     (_hd3594136890_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3594036886_))))
                                                 (if (gx#stx-pair?
                                                      _tl3594236893_)
                                                     (let ((_e3594336896_
                                                            (gx#syntax-e
                                                             _tl3594236893_)))
                                                       (let ((_tl3594536903_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3594336896_)))
                     (_hd3594436900_
                      (let () (declare (not safe)) (##car _e3594336896_))))
                 (if (gx#stx-null? _tl3594536903_)
                     (___kont4418344184_ _hd3594436900_ _hd3594136890_)
                     (let () (declare (not safe)) (_g3588936031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588936031_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3588936031_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3589637325_ 'box:))
                                             (if (gx#stx-pair? _tl3589537322_)
                                                 (let ((_e3595136810_
                                                        (gx#syntax-e
                                                         _tl3589537322_)))
                                                   (let ((_tl3595336817_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3595136810_)))
                                                         (_hd3595236814_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3595136810_))))
                                                     (if (gx#stx-null?
                                                          _tl3595336817_)
                                                         (___kont4418544186_
                                                          _hd3595236814_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3588936031_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3588936031_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e3589637325_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl3589537322_)
                                                     (let ((_e3595936615_
                                                            (gx#syntax-e
                                                             _tl3589537322_)))
                                                       (let ((_tl3596136622_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3595936615_)))
                     (_hd3596036619_
                      (let () (declare (not safe)) (##car _e3595936615_))))
                 (if (gx#stx-null? _tl3596136622_)
                     (___kont4418744188_ _hd3596036619_)
                     (let () (declare (not safe)) (_g3588936031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588936031_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3589637325_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl3589537322_)
                                                         (let ((_e3596736420_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3589537322_)))
                   (let ((_tl3596936427_
                          (let () (declare (not safe)) (##cdr _e3596736420_)))
                         (_hd3596836424_
                          (let () (declare (not safe)) (##car _e3596736420_))))
                     (if (gx#stx-null? _tl3596936427_)
                         (___kont4418944190_ _hd3596836424_)
                         (let () (declare (not safe)) (_g3588936031_)))))
                 (let () (declare (not safe)) (_g3588936031_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3589637325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl3589537322_)
                     (let ((_e3597636361_ (gx#syntax-e _tl3589537322_)))
                       (let ((_tl3597836368_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3597636361_)))
                             (_hd3597736365_
                              (let ()
                                (declare (not safe))
                                (##car _e3597636361_))))
                         (if (gx#stx-pair? _tl3597836368_)
                             (let ((_e3597936371_
                                    (gx#syntax-e _tl3597836368_)))
                               (let ((_tl3598136378_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3597936371_)))
                                     (_hd3598036375_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3597936371_))))
                                 (if (gx#stx-null? _tl3598136378_)
                                     (___kont4419144192_
                                      _hd3598036375_
                                      _hd3597736365_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3588936031_)))))
                             (let () (declare (not safe)) (_g3588936031_)))))
                     (let () (declare (not safe)) (_g3588936031_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e3589637325_ 'class:))
                     (if (gx#stx-pair? _tl3589537322_)
                         (let ((_e3598836302_ (gx#syntax-e _tl3589537322_)))
                           (let ((_tl3599036309_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3598836302_)))
                                 (_hd3598936306_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3598836302_))))
                             (if (gx#stx-pair? _tl3599036309_)
                                 (let ((_e3599136312_
                                        (gx#syntax-e _tl3599036309_)))
                                   (let ((_tl3599336319_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3599136312_)))
                                         (_hd3599236316_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3599136312_))))
                                     (if (gx#stx-null? _tl3599336319_)
                                         (___kont4419344194_
                                          _hd3599236316_
                                          _hd3598936306_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588936031_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3588936031_)))))
                         (let () (declare (not safe)) (_g3588936031_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3589637325_ 'datum:))
                         (if (gx#stx-pair? _tl3589537322_)
                             (let ((_e3599936215_
                                    (gx#syntax-e _tl3589537322_)))
                               (let ((_tl3600136222_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3599936215_)))
                                     (_hd3600036219_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3599936215_))))
                                 (if (gx#stx-null? _tl3600136222_)
                                     (___kont4419544196_ _hd3600036219_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3588936031_)))))
                             (let () (declare (not safe)) (_g3588936031_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3589637325_ 'apply:))
                             (if (gx#stx-pair? _tl3589537322_)
                                 (let ((_e3600836125_
                                        (gx#syntax-e _tl3589537322_)))
                                   (let ((_tl3601036132_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3600836125_)))
                                         (_hd3600936129_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3600836125_))))
                                     (if (gx#stx-pair? _tl3601036132_)
                                         (let ((_e3601136135_
                                                (gx#syntax-e _tl3601036132_)))
                                           (let ((_tl3601336142_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3601136135_)))
                                                 (_hd3601236139_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3601136135_))))
                                             (if (gx#stx-null? _tl3601336142_)
                                                 (___kont4419744198_
                                                  _hd3601236139_
                                                  _hd3600936129_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3588936031_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3588936031_)))))
                                 (let () (declare (not safe)) (_g3588936031_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3589637325_ 'var:))
                                 (if (gx#stx-pair? _tl3589537322_)
                                     (let ((_e3601936077_
                                            (gx#syntax-e _tl3589537322_)))
                                       (let ((_tl3602136084_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3601936077_)))
                                             (_hd3602036081_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3601936077_))))
                                         (if (gx#stx-null? _tl3602136084_)
                                             (___kont4419944200_
                                              _hd3602036081_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3588936031_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588936031_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3589637325_ 'any:))
                                     (if (gx#stx-null? _tl3589537322_)
                                         (___kont4420144202_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588936031_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588936031_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3588936031_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3588936031_)))))))
                               _g3584835859_))))
                      (declare (not safe))
                      (_g3584637624_ _tgt35841_))))
                 (_generate-splice34598_
                  (lambda (_tgt35213_ _hd35215_ _rest35216_ _K35217_ _E35218_)
                    (let* ((_g3522035237_
                            (lambda (_g3522135233_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3522135233_)))
                           (_g3521935837_
                            (lambda (_g3522135241_)
                              (if (gx#stx-pair/null? _g3522135241_)
                                  (let ((_g45597_
                                         (gx#syntax-split-splice
                                          _g3522135241_
                                          '0)))
                                    (begin
                                      (let ((_g45598_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45597_)
                                                   (##vector-length _g45597_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45598_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45598_)))
                                      (let ((_target3522335244_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45597_ 0)))
                                            (_tl3522535247_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45597_ 1))))
                                        (if (gx#stx-null? _tl3522535247_)
                                            (letrec ((_loop3522635250_
                                                      (lambda (_hd3522435254_
                                                               _var3523035257_)
                                                        (if (gx#stx-pair?
                                                             _hd3522435254_)
                                                            (let ((_e3522735260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3522435254_)))
                      (let ((_lp-hd3522835264_
                             (let ()
                               (declare (not safe))
                               (##car _e3522735260_)))
                            (_lp-tl3522935267_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3522735260_))))
                        (let ((__tmp45599
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3522835264_ _var3523035257_))))
                          (declare (not safe))
                          (_loop3522635250_ _lp-tl3522935267_ __tmp45599))))
                    (let ((_var3523135270_ (reverse _var3523035257_)))
                      ((lambda (_L35274_)
                         (let ()
                           (let* ((_g3529035307_
                                   (lambda (_g3529135303_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3529135303_)))
                                  (_g3528935825_
                                   (lambda (_g3529135311_)
                                     (if (gx#stx-pair/null? _g3529135311_)
                                         (let ((_g45600_
                                                (gx#syntax-split-splice
                                                 _g3529135311_
                                                 '0)))
                                           (begin
                                             (let ((_g45601_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g45600_)
                                                          (##vector-length
                                                           _g45600_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g45601_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g45601_)))
                                             (let ((_target3529335314_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45600_
                                                       0)))
                                                   (_tl3529535317_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45600_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3529535317_)
                                                   (letrec ((_loop3529635320_
                                                             (lambda (_hd3529435324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3530035327_)
                       (if (gx#stx-pair? _hd3529435324_)
                           (let ((_e3529735330_ (gx#syntax-e _hd3529435324_)))
                             (let ((_lp-hd3529835334_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3529735330_)))
                                   (_lp-tl3529935337_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3529735330_))))
                               (let ((__tmp45602
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3529835334_
                                              _var-r3530035327_))))
                                 (declare (not safe))
                                 (_loop3529635320_
                                  _lp-tl3529935337_
                                  __tmp45602))))
                           (let ((_var-r3530135340_
                                  (reverse _var-r3530035327_)))
                             ((lambda (_L35344_)
                                (let ()
                                  (let* ((_g3536135378_
                                          (lambda (_g3536235374_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3536235374_)))
                                         (_g3536035813_
                                          (lambda (_g3536235382_)
                                            (if (gx#stx-pair/null?
                                                 _g3536235382_)
                                                (let ((_g45603_
                                                       (gx#syntax-split-splice
                                                        _g3536235382_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45603_)
                         (##vector-length _g45603_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45604_ 2)))
                  (error "Context expects 2 values" _g45604_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3536435385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45603_
                                                              0)))
                                                          (_tl3536635388_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45603_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3536635388_)
                                                          (letrec ((_loop3536735391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3536535395_ _init3537135398_)
                              (if (gx#stx-pair? _hd3536535395_)
                                  (let ((_e3536835401_
                                         (gx#syntax-e _hd3536535395_)))
                                    (let ((_lp-hd3536935405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3536835401_)))
                                          (_lp-tl3537035408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3536835401_))))
                                      (let ((__tmp45605
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3536935405_
                                                     _init3537135398_))))
                                        (declare (not safe))
                                        (_loop3536735391_
                                         _lp-tl3537035408_
                                         __tmp45605))))
                                  (let ((_init3537235411_
                                         (reverse _init3537135398_)))
                                    ((lambda (_L35415_)
                                       (let ()
                                         (let* ((_g3543235440_
                                                 (lambda (_g3543335436_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3543335436_)))
                                                (_g3543135809_
                                                 (lambda (_g3543335444_)
                                                   ((lambda (_L35447_)
                                                      (let ()
                                                        (let* ((_g3546035468_
                                                                (lambda (_g3546135464_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3546135464_)))
                       (_g3545935805_
                        (lambda (_g3546135472_)
                          ((lambda (_L35475_)
                             (let ()
                               (let* ((_g3548835496_
                                       (lambda (_g3548935492_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3548935492_)))
                                      (_g3548735801_
                                       (lambda (_g3548935500_)
                                         ((lambda (_L35503_)
                                            (let ()
                                              (let* ((_g3551635524_
                                                      (lambda (_g3551735520_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3551735520_)))
                                                     (_g3551535797_
                                                      (lambda (_g3551735528_)
                                                        ((lambda (_L35531_)
                                                           (let ()
                                                             (let* ((_g3554435552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3554535548_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3554535548_)))
                            (_g3554335793_
                             (lambda (_g3554535556_)
                               ((lambda (_L35559_)
                                  (let ()
                                    (let* ((_g3557235580_
                                            (lambda (_g3557335576_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3557335576_)))
                                           (_g3557135789_
                                            (lambda (_g3557335584_)
                                              ((lambda (_L35587_)
                                                 (let ()
                                                   (let* ((_g3560035608_
                                                           (lambda (_g3560135604_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3560135604_)))
                                                          (_g3559935785_
                                                           (lambda (_g3560135612_)
                                                             ((lambda (_L35615_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3562835636_
                                  (lambda (_g3562935632_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3562935632_)))
                                 (_g3562735770_
                                  (lambda (_g3562935640_)
                                    ((lambda (_L35643_)
                                       (let ()
                                         (let* ((_g3565635664_
                                                 (lambda (_g3565735660_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3565735660_)))
                                                (_g3565535758_
                                                 (lambda (_g3565735668_)
                                                   ((lambda (_L35671_)
                                                      (let ()
                                                        (let* ((_g3568435692_
                                                                (lambda (_g3568535688_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3568535688_)))
                       (_g3568335754_
                        (lambda (_g3568535696_)
                          ((lambda (_L35699_)
                             (let ()
                               (let ()
                                 (let ((__tmp45654
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp45606
                                        (let ((__tmp45611
                                               (let ((__tmp45646
                                                      (let ((__tmp45647
                                                             (let ((__tmp45648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45653 (gx#datum->syntax '#f 'lambda))
                                  (__tmp45649
                                   (let ((__tmp45651
                                          (let ((__tmp45652
                                                 (foldr (lambda (_g3571335724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3571435727_)
                  (let ()
                    (declare (not safe))
                    (cons _g3571335724_ _g3571435727_)))
                '()
                _L35274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L35587_ __tmp45652)))
                                         (__tmp45650
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35615_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45651 __tmp45650))))
                              (declare (not safe))
                              (cons __tmp45653 __tmp45649))))
                       (declare (not safe))
                       (cons __tmp45648 '()))))
                (declare (not safe))
                (cons _L35475_ __tmp45647)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45612
                                                      (let ((__tmp45637
                                                             (let ((__tmp45638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45639
                                   (let ((__tmp45645
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp45640
                                          (let ((__tmp45642
                                                 (let ((__tmp45643
                                                        (let ((__tmp45644
                                                               (foldr (lambda (_g3571535730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3571635733_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3571535730_ _g3571635733_)))
                              '()
                              _L35344_)))
                  (declare (not safe))
                  (cons _L35587_ __tmp45644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35559_ __tmp45643)))
                                                (__tmp45641
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L35699_ '()))))
                                            (declare (not safe))
                                            (cons __tmp45642 __tmp45641))))
                                     (declare (not safe))
                                     (cons __tmp45645 __tmp45640))))
                              (declare (not safe))
                              (cons __tmp45639 '()))))
                       (declare (not safe))
                       (cons _L35531_ __tmp45638)))
                    (__tmp45613
                     (let ((__tmp45614
                            (let ((__tmp45615
                                   (let ((__tmp45616
                                          (let ((__tmp45636
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45617
                                                 (let ((__tmp45634
                                                        (let ((__tmp45635
                                                               (foldr (lambda (_g3571735736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3571835739_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3571735736_ _g3571835739_)))
                              '()
                              _L35344_)))
                  (declare (not safe))
                  (cons _L35587_ __tmp45635)))
               (__tmp45618
                (let ((__tmp45619
                       (let ((__tmp45633 (gx#datum->syntax '#f 'if))
                             (__tmp45620
                              (let ((__tmp45630
                                     (let ((__tmp45632
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp45631
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35587_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45632 __tmp45631)))
                                    (__tmp45621
                                     (let ((__tmp45623
                                            (let ((__tmp45624
                                                   (let ((__tmp45627
                                                          (let ((__tmp45629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp45628
                         (let () (declare (not safe)) (cons _L35587_ '()))))
                    (declare (not safe))
                    (cons __tmp45629 __tmp45628)))
                 (__tmp45625
                  (let ((__tmp45626
                         (foldr (lambda (_g3571935742_ _g3572035745_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3571935742_ _g3572035745_)))
                                '()
                                _L35344_)))
                    (declare (not safe))
                    (cons _L35587_ __tmp45626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45627
                                                           __tmp45625))))
                                              (declare (not safe))
                                              (cons _L35531_ __tmp45624)))
                                           (__tmp45622
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35671_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45623 __tmp45622))))
                                (declare (not safe))
                                (cons __tmp45630 __tmp45621))))
                         (declare (not safe))
                         (cons __tmp45633 __tmp45620))))
                  (declare (not safe))
                  (cons __tmp45619 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45634
                                                         __tmp45618))))
                                            (declare (not safe))
                                            (cons __tmp45636 __tmp45617))))
                                     (declare (not safe))
                                     (cons __tmp45616 '()))))
                              (declare (not safe))
                              (cons _L35503_ __tmp45615))))
                       (declare (not safe))
                       (cons __tmp45614 '()))))
                (declare (not safe))
                (cons __tmp45637 __tmp45613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45646 __tmp45612)))
                                              (__tmp45607
                                               (let ((__tmp45608
                                                      (let ((__tmp45609
                                                             (let ((__tmp45610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g3572135748_ _g3572235751_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g3572135748_ _g3572235751_)))
                                   '()
                                   _L35415_)))
                       (declare (not safe))
                       (cons _L35447_ __tmp45610))))
                (declare (not safe))
                (cons _L35503_ __tmp45609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45608 '()))))
                                          (declare (not safe))
                                          (cons __tmp45611 __tmp45607))))
                                   (declare (not safe))
                                   (cons __tmp45654 __tmp45606)))))
                           _g3568535696_)))
                       (__tmp45655
                        (let ()
                          (declare (not safe))
                          (_generate134596_
                           _L35559_
                           _hd35215_
                           _L35643_
                           _L35671_))))
                  (declare (not safe))
                  (_g3568335754_ __tmp45655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3565735668_)))
                                                (__tmp45656
                                                 (let ((__tmp45657
                                                        (let ((__tmp45658
                                                               (foldr (lambda (_g3576135764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3576235767_)
                                (let ((__tmp45659
                                       (let ((__tmp45661
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp45660
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3576135764_ '()))))
                                         (declare (not safe))
                                         (cons __tmp45661 __tmp45660))))
                                  (declare (not safe))
                                  (cons __tmp45659 _g3576235767_)))
                              '()
                              _L35344_)))
                  (declare (not safe))
                  (cons _L35587_ __tmp45658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35475_
                                                         __tmp45657))))
                                           (declare (not safe))
                                           (_g3565535758_ __tmp45656))))
                                     _g3562935640_)))
                                 (__tmp45662
                                  (let ((__tmp45663
                                         (let ((__tmp45669
                                                (let ((__tmp45671
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp45670
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35587_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp45671
                                                        __tmp45670)))
                                               (__tmp45664
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L35344_
                                                   _L35274_)
                                                  (foldr (lambda (_g3577335777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3577435780_
                          _g3577535782_)
                   (let ((__tmp45665
                          (let ((__tmp45668 (gx#datum->syntax '#f 'cons))
                                (__tmp45666
                                 (let ((__tmp45667
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3577335777_ '()))))
                                   (declare (not safe))
                                   (cons _g3577435780_ __tmp45667))))
                            (declare (not safe))
                            (cons __tmp45668 __tmp45666))))
                     (declare (not safe))
                     (cons __tmp45665 _g3577535782_)))
                 '()
                 _L35344_
                 _L35274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp45669 __tmp45664))))
                                    (declare (not safe))
                                    (cons _L35503_ __tmp45663))))
                            (declare (not safe))
                            (_g3562735770_ __tmp45662))))
                      _g3560135612_)))
                  (__tmp45672
                   (let ()
                     (declare (not safe))
                     (_generate134596_
                      _L35587_
                      _rest35216_
                      _K35217_
                      _E35218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3559935785_
                                                      __tmp45672))))
                                               _g3557335584_)))
                                           (__tmp45673 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3557135789_ __tmp45673))))
                                _g3554535556_)))
                            (__tmp45674 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3554335793_ __tmp45674))))
                 _g3551735528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45675
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3551535797_ __tmp45675))))
                                          _g3548935500_)))
                                      (__tmp45676 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3548735801_ __tmp45676))))
                           _g3546135472_)))
                       (__tmp45677 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3545935805_ __tmp45677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3543335444_))))
                                           (declare (not safe))
                                           (_g3543135809_ _tgt35213_))))
                                     _init3537235411_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3536735391_ _target3536435385_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3536135378_ _g3536235382_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3536135378_
                                                   _g3536235382_)))))
                                         (__tmp45678
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g3581635819_
                                                            _g3581735822_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3581635819_
                                                             _g3581735822_)))
                                                   '()
                                                   _L35274_))
                                           (let ((__tmp45679
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp45679 '())))))
                                    (declare (not safe))
                                    (_g3536035813_ __tmp45678))))
                              _var-r3530135340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3529635320_
                                                        _target3529335314_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3529035307_
                                                      _g3529135311_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3529035307_ _g3529135311_)))))
                                  (__tmp45680
                                   (gx#gentemps
                                    (foldr (lambda (_g3582835831_
                                                    _g3582935834_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3582835831_
                                                     _g3582935834_)))
                                           '()
                                           _L35274_))))
                             (declare (not safe))
                             (_g3528935825_ __tmp45680))))
                       _var3523135270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3522635250_
                                                 _target3522335244_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3522035237_
                                               _g3522135241_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3522035237_ _g3522135241_)))))
                           (__tmp45681
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd35215_))))
                      (declare (not safe))
                      (_g3521935837_ __tmp45681))))
                 (_generate-simple-vector34599_
                  (lambda (_tgt35055_
                           _body35057_
                           _start35058_
                           _K35059_
                           _E35060_)
                    (let _recur35062_ ((_rest35065_ _body35057_)
                                       (_off35067_ _start35058_))
                      (let* ((___stx4452644527_ _rest35065_)
                             (_g3507035082_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4452644527_))))
                        (let ((___kont4452944530_
                               (lambda (_L35110_ _L35112_)
                                 (let* ((_g3512735146_
                                         (lambda (_g3512835142_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3512835142_)))
                                        (_g3512635205_
                                         (lambda (_g3512835150_)
                                           (if (gx#stx-pair? _g3512835150_)
                                               (let ((_e3513235153_
                                                      (gx#syntax-e
                                                       _g3512835150_)))
                                                 (let ((_hd3513335157_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3513235153_)))
                                                       (_tl3513435160_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3513235153_))))
                                                   (if (gx#stx-pair?
                                                        _tl3513435160_)
                                                       (let ((_e3513535163_
                                                              (gx#syntax-e
                                                               _tl3513435160_)))
                                                         (let ((_hd3513635167_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3513535163_)))
                       (_tl3513735170_
                        (let () (declare (not safe)) (##cdr _e3513535163_))))
                   (if (gx#stx-pair? _tl3513735170_)
                       (let ((_e3513835173_ (gx#syntax-e _tl3513735170_)))
                         (let ((_hd3513935177_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3513835173_)))
                               (_tl3514035180_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3513835173_))))
                           (if (gx#stx-null? _tl3514035180_)
                               ((lambda (_L35183_ _L35185_ _L35186_)
                                  (let ()
                                    (let ((__tmp45682
                                           (let ((__tmp45687
                                                  (let ((__tmp45688
                                                         (let ((__tmp45689
                                                                (let ((__tmp45690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45693
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp45691
                                      (let ((__tmp45692
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35183_ '()))))
                                        (declare (not safe))
                                        (cons _L35185_ __tmp45692))))
                                 (declare (not safe))
                                 (cons __tmp45693 __tmp45691))))
                          (declare (not safe))
                          (cons __tmp45690 '()))))
                   (declare (not safe))
                   (cons _L35186_ __tmp45689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45688 '())))
                                                 (__tmp45683
                                                  (let ((__tmp45684
                                                         (let ((__tmp45685
                                                                (let ((__tmp45686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off35067_ '1))))
                          (declare (not safe))
                          (_recur35062_ _L35110_ __tmp45686))))
                   (declare (not safe))
                   (_generate134596_ _L35186_ _L35112_ __tmp45685 _E35060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45684 '()))))
                                             (declare (not safe))
                                             (cons __tmp45687 __tmp45683))))
                                      (declare (not safe))
                                      (cons 'let __tmp45682))))
                                _hd3513935177_
                                _hd3513635167_
                                _hd3513335157_)
                               (let ()
                                 (declare (not safe))
                                 (_g3512735146_ _g3512835150_)))))
                       (let ()
                         (declare (not safe))
                         (_g3512735146_ _g3512835150_)))))
               (let () (declare (not safe)) (_g3512735146_ _g3512835150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3512735146_
                                                  _g3512835150_)))))
                                        (__tmp45694
                                         (list (gx#genident 'e)
                                               _tgt35055_
                                               _off35067_)))
                                   (declare (not safe))
                                   (_g3512635205_ __tmp45694))))
                              (___kont4453144532_ (lambda () _K35059_)))
                          (if (gx#stx-pair? ___stx4452644527_)
                              (let ((_e3507435100_
                                     (gx#syntax-e ___stx4452644527_)))
                                (let ((_tl3507635107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3507435100_)))
                                      (_hd3507535104_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3507435100_))))
                                  (___kont4452944530_
                                   _tl3507635107_
                                   _hd3507535104_)))
                              (___kont4453144532_)))))))
                 (_generate-list-vector34600_
                  (lambda (_tgt34947_
                           _body34949_
                           _->list34950_
                           _K34951_
                           _E34952_)
                    (let* ((_g3495434962_
                            (lambda (_g3495534958_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3495534958_)))
                           (_g3495335051_
                            (lambda (_g3495534966_)
                              ((lambda (_L34969_)
                                 (let ()
                                   (let* ((_g3498134989_
                                           (lambda (_g3498234985_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3498234985_)))
                                          (_g3498035047_
                                           (lambda (_g3498234993_)
                                             ((lambda (_L34996_)
                                                (let ()
                                                  (let* ((_g3500935017_
                                                          (lambda (_g3501035013_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3501035013_)))
                                                         (_g3500835039_
                                                          (lambda (_g3501035021_)
                                                            ((lambda (_L35024_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp45695
                                  (let ((__tmp45698
                                         (let ((__tmp45699
                                                (let ((__tmp45700
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35024_ '()))))
                                                  (declare (not safe))
                                                  (cons _L34969_ __tmp45700))))
                                           (declare (not safe))
                                           (cons __tmp45699 '())))
                                        (__tmp45696
                                         (let ((__tmp45697
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate134596_
                                                   _L34969_
                                                   _body34949_
                                                   _K34951_
                                                   _E34952_))))
                                           (declare (not safe))
                                           (cons __tmp45697 '()))))
                                    (declare (not safe))
                                    (cons __tmp45698 __tmp45696))))
                             (declare (not safe))
                             (cons 'let __tmp45695)))))
                     _g3501035021_)))
                 (__tmp45701
                  (let ((_$e35043_ _->list34950_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e35043_))
                        (let ((__tmp45703 (gx#datum->syntax '#f 'values->list))
                              (__tmp45702
                               (let ()
                                 (declare (not safe))
                                 (cons _L34996_ '()))))
                          (declare (not safe))
                          (cons __tmp45703 __tmp45702))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e35043_))
                            (let ((__tmp45705
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp45704
                                   (let ()
                                     (declare (not safe))
                                     (cons _L34996_ '()))))
                              (declare (not safe))
                              (cons __tmp45705 __tmp45704))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e35043_))
                                (let ((__tmp45710
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp45706
                                       (let ((__tmp45707
                                              (let ((__tmp45709
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp45708
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L34996_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45709 __tmp45708))))
                                         (declare (not safe))
                                         (cons __tmp45707 '()))))
                                  (declare (not safe))
                                  (cons __tmp45710 __tmp45706))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx34589_
                                 _->list34950_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3500835039_
                                                     __tmp45701))))
                                              _g3498234993_))))
                                     (declare (not safe))
                                     (_g3498035047_ _tgt34947_))))
                               _g3495534966_)))
                           (__tmp45711 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3495335051_ __tmp45711))))
                 (_generate-struct34601_
                  (lambda (_info34818_
                           _tgt34820_
                           _body34821_
                           _K34822_
                           _E34823_)
                    (let* ((___stx4454244543_ _body34821_)
                           (_g3482634849_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4454244543_))))
                      (let ((___kont4454544546_
                             (lambda (_L34926_)
                               (let* ((_fields34940_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors34603_
                                          _info34818_)))
                                      (__tmp45712
                                       (let ((__tmp45716
                                              (let ((__tmp45718
                                                     (let ((__obj45296
                                                            _info34818_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj45296
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj45296
                                                              '12
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj45296
                                                            'predicate))))
                                                    (__tmp45717
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt34820_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45718 __tmp45717)))
                                             (__tmp45713
                                              (let ((__tmp45715
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body34602_
                                                        _info34818_
                                                        _tgt34820_
                                                        _L34926_
                                                        _K34822_
                                                        _E34823_)))
                                                    (__tmp45714
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E34823_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45715 __tmp45714))))
                                         (declare (not safe))
                                         (cons __tmp45716 __tmp45713))))
                                 (declare (not safe))
                                 (cons 'if __tmp45712))))
                            (___kont4454744548_
                             (lambda (_L34880_)
                               (let ((__tmp45719
                                      (let ((__tmp45723
                                             (let ((__tmp45725
                                                    (let ((__obj45297
                                                           _info34818_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj45297
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj45297
                                                             '12
                                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           __obj45297
                                                           'predicate))))
                                                   (__tmp45724
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt34820_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45725 __tmp45724)))
                                            (__tmp45720
                                             (let ((__tmp45722
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector34600_
                                                       _tgt34820_
                                                       _L34880_
                                                       'struct->list
                                                       _K34822_
                                                       _E34823_)))
                                                   (__tmp45721
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E34823_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45722 __tmp45721))))
                                        (declare (not safe))
                                        (cons __tmp45723 __tmp45720))))
                                 (declare (not safe))
                                 (cons 'if __tmp45719)))))
                        (if (gx#stx-pair? ___stx4454244543_)
                            (let ((_e3482934902_
                                   (gx#syntax-e ___stx4454244543_)))
                              (let ((_tl3483134909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3482934902_)))
                                    (_hd3483034906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3482934902_))))
                                (if (gx#stx-datum? _hd3483034906_)
                                    (let ((_e3483234912_
                                           (gx#stx-e _hd3483034906_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3483234912_ 'simple:))
                                          (if (gx#stx-pair? _tl3483134909_)
                                              (let ((_e3483334916_
                                                     (gx#syntax-e
                                                      _tl3483134909_)))
                                                (let ((_tl3483534923_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3483334916_)))
                                                      (_hd3483434920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3483334916_))))
                                                  (if (gx#stx-null?
                                                       _tl3483534923_)
                                                      (___kont4454544546_
                                                       _hd3483434920_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3482634849_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3482634849_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3483234912_ 'list:))
                                              (if (gx#stx-pair? _tl3483134909_)
                                                  (let ((_e3484134870_
                                                         (gx#syntax-e
                                                          _tl3483134909_)))
                                                    (let ((_tl3484334877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3484134870_)))
                                                          (_hd3484234874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3484134870_))))
                                                      (if (gx#stx-null?
                                                           _tl3484334877_)
                                                          (___kont4454744548_
                                                           _hd3484234874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3482634849_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3482634849_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3482634849_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3482634849_)))))
                            (let () (declare (not safe)) (_g3482634849_)))))))
                 (_generate-simple-struct-body34602_
                  (lambda (_info34738_
                           _tgt34740_
                           _body34741_
                           _K34742_
                           _E34743_)
                    (let _recur34745_ ((_rest34748_ _body34741_)
                                       (_fields34750_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors34603_
                                           _info34738_))))
                      (let* ((___stx4459244593_ _rest34748_)
                             (_g3475334765_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4459244593_))))
                        (let ((___kont4459544596_
                               (lambda (_L34793_ _L34795_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields34750_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx34589_
                                      _info34738_
                                      (let ((__obj45298 _info34738_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj45298
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj45298
                                               '2
                                               gerbil/core/mop$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                             __obj45298
                                             'name))))
                                     (let ((_$tgt34810_ (gx#genident 'e))
                                           (_getf34812_ (car _fields34750_)))
                                       (let ((__tmp45726
                                              (let ((__tmp45731
                                                     (let ((__tmp45732
                                                            (let ((__tmp45733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45734
                                  (let ((__tmp45735
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34740_ '()))))
                                    (declare (not safe))
                                    (cons _getf34812_ __tmp45735))))
                             (declare (not safe))
                             (cons __tmp45734 '()))))
                      (declare (not safe))
                      (cons _$tgt34810_ __tmp45733))))
               (declare (not safe))
               (cons __tmp45732 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45727
                                                     (let ((__tmp45728
                                                            (let ((__tmp45729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45730 (cdr _fields34750_)))
                             (declare (not safe))
                             (_recur34745_ _L34793_ __tmp45730))))
                      (declare (not safe))
                      (_generate134596_
                       _$tgt34810_
                       _L34795_
                       __tmp45729
                       _E34743_))))
               (declare (not safe))
               (cons __tmp45728 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45731 __tmp45727))))
                                         (declare (not safe))
                                         (cons 'let __tmp45726))))))
                              (___kont4459744598_ (lambda () _K34742_)))
                          (if (gx#stx-pair? ___stx4459244593_)
                              (let ((_e3475734783_
                                     (gx#syntax-e ___stx4459244593_)))
                                (let ((_tl3475934790_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3475734783_)))
                                      (_hd3475834787_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3475734783_))))
                                  (___kont4459544596_
                                   _tl3475934790_
                                   _hd3475834787_)))
                              (___kont4459744598_)))))))
                 (_struct-field-accessors34603_
                  (lambda (_info34719_)
                    (let _recur34722_ ((_next34725_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info34719_ '()))))
                      (if (let () (declare (not safe)) (null? _next34725_))
                          '()
                          (let ((_ti34728_ (car _next34725_)))
                            (append (let ((__tmp45736
                                           (map gx#syntax-local-value
                                                (let ((__obj45299 _ti34728_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj45299
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj45299
                                                         '3
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop$<MOP:2>#class-type-info::t
                                                       __obj45299
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur34722_ __tmp45736))
                                    (map (lambda (_slot34731_)
                                           (let ((_$e34734_
                                                  (assgetq _slot34731_
                                                           (let ((__obj45300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti34728_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj45300
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj45300
                            '15
                            gerbil/core/mop$<MOP:2>#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core/mop$<MOP:2>#class-type-info::t
                          __obj45300
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e34734_
                                                 _$e34734_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx34589_
                                                  _info34719_
                                                  _slot34731_))))
                                         (let ((__obj45301 _ti34728_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45301
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45301
                                                  '4
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45301
                                                'slots))))))))))
                 (_generate-class34604_
                  (lambda (_info34712_
                           _tgt34714_
                           _body34715_
                           _K34716_
                           _E34717_)
                    (let ((__tmp45737
                           (let ((__tmp45741
                                  (let ((__tmp45743
                                         (let ((__obj45302 _info34712_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45302
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45302
                                                  '12
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45302
                                                'predicate))))
                                        (__tmp45742
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34714_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45743 __tmp45742)))
                                 (__tmp45738
                                  (let ((__tmp45740
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body34605_
                                            _info34712_
                                            _tgt34714_
                                            _body34715_
                                            _K34716_
                                            _E34717_)))
                                        (__tmp45739
                                         (let ()
                                           (declare (not safe))
                                           (cons _E34717_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45740 __tmp45739))))
                             (declare (not safe))
                             (cons __tmp45741 __tmp45738))))
                      (declare (not safe))
                      (cons 'if __tmp45737))))
                 (_generate-class-body34605_
                  (lambda (_info34607_
                           _tgt34609_
                           _body34610_
                           _K34611_
                           _E34612_)
                    (let _recur34614_ ((_rest34617_ _body34610_))
                      (let* ((___stx4460844609_ _rest34617_)
                             (_g3462134637_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4460844609_))))
                        (let ((___kont4461144612_
                               (lambda (_L34675_ _L34677_ _L34678_)
                                 (let ((_$e34698_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L34678_)))
                                                 (let ((__obj45303
                                                        _info34607_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj45303
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj45303
                                                          '15
                                                          gerbil/core/mop$<MOP:2>#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                                        __obj45303
                                                        'unchecked-accessors))))))
                                   (if _$e34698_
                                       ((lambda (_getf34702_)
                                          (let* ((_$tgt34705_ (gx#genident 'e))
                                                 (__tmp45744
                                                  (let ((__tmp45748
                                                         (let ((__tmp45749
                                                                (let ((__tmp45750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45751
                                      (let ((__tmp45752
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt34609_ '()))))
                                        (declare (not safe))
                                        (cons _getf34702_ __tmp45752))))
                                 (declare (not safe))
                                 (cons __tmp45751 '()))))
                          (declare (not safe))
                          (cons _$tgt34705_ __tmp45750))))
                   (declare (not safe))
                   (cons __tmp45749 '())))
                (__tmp45745
                 (let ((__tmp45746
                        (let ((__tmp45747
                               (let ()
                                 (declare (not safe))
                                 (_recur34614_ _L34675_))))
                          (declare (not safe))
                          (_generate134596_
                           _$tgt34705_
                           _L34677_
                           __tmp45747
                           _E34612_))))
                   (declare (not safe))
                   (cons __tmp45746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45748
                                                          __tmp45745))))
                                            (declare (not safe))
                                            (cons 'let __tmp45744)))
                                        _$e34698_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx34589_
                                        _info34607_
                                        _L34678_)))))
                              (___kont4461344614_ (lambda () _K34611_)))
                          (if (gx#stx-pair? ___stx4460844609_)
                              (let ((_e3462634655_
                                     (gx#syntax-e ___stx4460844609_)))
                                (let ((_tl3462834662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3462634655_)))
                                      (_hd3462734659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3462634655_))))
                                  (if (gx#stx-pair? _tl3462834662_)
                                      (let ((_e3462934665_
                                             (gx#syntax-e _tl3462834662_)))
                                        (let ((_tl3463134672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3462934665_)))
                                              (_hd3463034669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3462934665_))))
                                          (___kont4461144612_
                                           _tl3463134672_
                                           _hd3463034669_
                                           _hd3462734659_)))
                                      (___kont4461344614_))))
                              (___kont4461344614_))))))))
          (let ()
            (declare (not safe))
            (_generate134596_ _tgt34591_ _ptree34592_ _K34593_ _E34594_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx33485_ _tgt-lst33487_ _clauses33488_)
        (letrec ((_parse-body33490_
                  (lambda (_hd-len34411_)
                    (let _lp34414_ ((_rest34417_ _clauses33488_)
                                    (_r34419_ '()))
                      (let* ((___stx4465844659_ _rest34417_)
                             (_g3442234434_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4465844659_))))
                        (let ((___kont4466144662_
                               (lambda (_L34462_ _L34464_)
                                 (let* ((___stx4463044631_ _L34464_)
                                        (_g3448134497_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4463044631_))))
                                   (let ((___kont4463344634_
                                          (lambda (_L34566_)
                                            (if (gx#stx-null? _L34462_)
                                                (let ((__tmp45753
                                                       (let ((__tmp45758
                                                              (gx#genident
                                                               'else))
                                                             (__tmp45754
                                                              (let ((__tmp45755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45756
                                    (gx#stx-wrap-source
                                     (let ((__tmp45757
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp45757 _L34566_))
                                     (let ((_$e34577_
                                            (gx#stx-source _L34464_)))
                                       (if _$e34577_
                                           _$e34577_
                                           (gx#stx-source _stx33485_))))))
                               (declare (not safe))
                               (cons __tmp45756 '()))))
                        (declare (not safe))
                        (cons '#f __tmp45755))))
                 (declare (not safe))
                 (cons __tmp45758 __tmp45754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45753 _r34419_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx33485_
                                                 _L34464_))))
                                         (___kont4463544636_
                                          (lambda (_L34525_ _L34527_)
                                            (let ((__tmp45759
                                                   (let ((__tmp45760
                                                          (let ((__tmp45766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp45761
                         (let ((__tmp45765
                                (gx#stx-map
                                 (lambda (_g3453934541_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/match[1]#parse-match-pattern__%|
                                      _g3453934541_
                                      _stx33485_)))
                                 _L34527_))
                               (__tmp45762
                                (let ((__tmp45763
                                       (gx#stx-wrap-source
                                        (let ((__tmp45764
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp45764 _L34525_))
                                        (let ((_$e34545_
                                               (gx#stx-source _L34464_)))
                                          (if _$e34545_
                                              _$e34545_
                                              (gx#stx-source _stx33485_))))))
                                  (declare (not safe))
                                  (cons __tmp45763 '()))))
                           (declare (not safe))
                           (cons __tmp45765 __tmp45762))))
                    (declare (not safe))
                    (cons __tmp45766 __tmp45761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45760
                                                           _r34419_))))
                                              (declare (not safe))
                                              (_lp34414_
                                               _L34462_
                                               __tmp45759))))
                                         (___kont4463744638_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx33485_
                                             _L34464_))))
                                     (let* ((___match4465544656_
                                             (lambda (_e3448934515_
                                                      _hd3449034519_
                                                      _tl3449134522_)
                                               (let ((_L34525_ _tl3449134522_)
                                                     (_L34527_ _hd3449034519_))
                                                 (if (and (gx#stx-list?
                                                           _L34527_)
                                                          (fx= (gx#stx-length
                                                                _L34527_)
                                                               _hd-len34411_)
                                                          (gx#stx-list?
                                                           _L34525_)
                                                          (let ((__tmp45767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34525_)))
                    (declare (not safe))
                    (not __tmp45767)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4463544636_
                                                      _L34525_
                                                      _L34527_)
                                                     (___kont4463744638_)))))
                                            (___match4464944650_
                                             (lambda (_e3448434556_
                                                      _hd3448534560_
                                                      _tl3448634563_)
                                               (let ((_L34566_ _tl3448634563_))
                                                 (if (and (gx#stx-list?
                                                           _L34566_)
                                                          (let ((__tmp45768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34566_)))
                    (declare (not safe))
                    (not __tmp45768)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4463344634_
                                                      _L34566_)
                                                     (___match4465544656_
                                                      _e3448434556_
                                                      _hd3448534560_
                                                      _tl3448634563_))))))
                                       (if (gx#stx-pair? ___stx4463044631_)
                                           (let ((_e3448434556_
                                                  (gx#syntax-e
                                                   ___stx4463044631_)))
                                             (let ((_tl3448634563_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3448434556_)))
                                                   (_hd3448534560_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3448434556_))))
                                               (if (gx#identifier?
                                                    _hd3448534560_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g45769_|
                                                        _hd3448534560_)
                                                       (___match4464944650_
                                                        _e3448434556_
                                                        _hd3448534560_
                                                        _tl3448634563_)
                                                       (___match4465544656_
                                                        _e3448434556_
                                                        _hd3448534560_
                                                        _tl3448634563_))
                                                   (___match4465544656_
                                                    _e3448434556_
                                                    _hd3448534560_
                                                    _tl3448634563_))))
                                           (___kont4463744638_)))))))
                              (___kont4466344664_ (lambda () _r34419_)))
                          (if (gx#stx-pair? ___stx4465844659_)
                              (let ((_e3442634452_
                                     (gx#syntax-e ___stx4465844659_)))
                                (let ((_tl3442834459_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3442634452_)))
                                      (_hd3442734456_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3442634452_))))
                                  (___kont4466144662_
                                   _tl3442834459_
                                   _hd3442734456_)))
                              (___kont4466344664_)))))))
                 (_generate-body33492_
                  (lambda (_body34196_)
                    (let* ((_g3419934207_
                            (lambda (_g3420034203_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3420034203_)))
                           (_g3419834407_
                            (lambda (_g3420034211_)
                              ((lambda (_L34214_)
                                 (let ()
                                   (let* ((_g3422634243_
                                           (lambda (_g3422734239_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3422734239_)))
                                          (_g3422534403_
                                           (lambda (_g3422734247_)
                                             (if (gx#stx-pair/null?
                                                  _g3422734247_)
                                                 (let ((_g45770_
                                                        (gx#syntax-split-splice
                                                         _g3422734247_
                                                         '0)))
                                                   (begin
                                                     (let ((_g45771_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g45770_)
                          (##vector-length _g45770_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g45771_ 2)))
                   (error "Context expects 2 values" _g45771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3422934250_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45770_
                                                               0)))
                                                           (_tl3423134253_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45770_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3423134253_)
                                                           (letrec ((_loop3423234256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3423034260_ _target3423634263_)
                               (if (gx#stx-pair? _hd3423034260_)
                                   (let ((_e3423334266_
                                          (gx#syntax-e _hd3423034260_)))
                                     (let ((_lp-hd3423434270_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3423334266_)))
                                           (_lp-tl3423534273_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3423334266_))))
                                       (let ((__tmp45772
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3423434270_
                                                      _target3423634263_))))
                                         (declare (not safe))
                                         (_loop3423234256_
                                          _lp-tl3423534273_
                                          __tmp45772))))
                                   (let ((_target3423734276_
                                          (reverse _target3423634263_)))
                                     ((lambda (_L34280_)
                                        (let ()
                                          (let* ((_g3429734305_
                                                  (lambda (_g3429834301_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3429834301_)))
                                                 (_g3429634391_
                                                  (lambda (_g3429834309_)
                                                    ((lambda (_L34312_)
                                                       (let ()
                                                         (let* ((_g3432534333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3432634329_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3432634329_)))
                        (_g3432434387_
                         (lambda (_g3432634337_)
                           ((lambda (_L34340_)
                              (let ()
                                (let* ((_g3435334361_
                                        (lambda (_g3435434357_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3435434357_)))
                                       (_g3435234383_
                                        (lambda (_g3435434365_)
                                          ((lambda (_L34368_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp45776
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp45773
                                                        (let ((__tmp45775
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp45774
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34368_ '()))))
                  (declare (not safe))
                  (cons __tmp45775 __tmp45774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45776
                                                         __tmp45773)))))
                                           _g3435434365_)))
                                       (__tmp45777
                                        (gx#stx-wrap-source
                                         (let ((__tmp45783
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp45778
                                                (let ((__tmp45780
                                                       (let ((__tmp45781
                                                              (let ((__tmp45782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L34312_ '()))))
                        (declare (not safe))
                        (cons _L34214_ __tmp45782))))
                 (declare (not safe))
                 (cons __tmp45781 '())))
              (__tmp45779 (let () (declare (not safe)) (cons _L34340_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45780
                                                        __tmp45779))))
                                           (declare (not safe))
                                           (cons __tmp45783 __tmp45778))
                                         (gx#stx-source _stx33485_))))
                                  (declare (not safe))
                                  (_g3435234383_ __tmp45777))))
                            _g3432634337_)))
                        (__tmp45784
                         (let ((__tmp45785
                                (let ()
                                  (declare (not safe))
                                  (cons _L34214_ '()))))
                           (declare (not safe))
                           (_generate-clauses33493_ _body34196_ __tmp45785))))
                   (declare (not safe))
                   (_g3432434387_ __tmp45784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3429834309_)))
                                                 (__tmp45786
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp45793
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45787
                                                          (let ((__tmp45788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45789
                                (let ((__tmp45792
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp45790
                                       (let ((__tmp45791
                                              (foldr (lambda (_g3439434397_
                                                              _g3439534400_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3439434397_
                                                               _g3439534400_)))
                                                     '()
                                                     _L34280_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp45791))))
                                  (declare (not safe))
                                  (cons __tmp45792 __tmp45790))))
                           (declare (not safe))
                           (cons __tmp45789 '()))))
                    (declare (not safe))
                    (cons '() __tmp45788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45793
                                                           __tmp45787))
                                                   (gx#stx-source
                                                    _stx33485_))))
                                            (declare (not safe))
                                            (_g3429634391_ __tmp45786))))
                                      _target3423734276_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3423234256_ _target3422934250_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3422634243_ _g3422734247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3422634243_
                                                    _g3422734247_))))))
                                     (declare (not safe))
                                     (_g3422534403_ _tgt-lst33487_))))
                               _g3420034211_)))
                           (__tmp45794 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3419834407_ __tmp45794))))
                 (_generate-clauses33493_
                  (lambda (_rest33848_ _E33850_)
                    (let* ((___stx4467444675_ _rest33848_)
                           (_g3385433870_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4467444675_))))
                      (let ((___kont4467744678_
                             (lambda (_L34104_)
                               (let* ((_g3411534133_
                                       (lambda (_g3411634129_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3411634129_)))
                                      (_g3411434188_
                                       (lambda (_g3411634137_)
                                         (if (gx#stx-pair? _g3411634137_)
                                             (let ((_e3411934140_
                                                    (gx#syntax-e
                                                     _g3411634137_)))
                                               (let ((_hd3412034144_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3411934140_)))
                                                     (_tl3412134147_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3411934140_))))
                                                 (if (gx#stx-pair?
                                                      _tl3412134147_)
                                                     (let ((_e3412234150_
                                                            (gx#syntax-e
                                                             _tl3412134147_)))
                                                       (let ((_hd3412334154_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3412234150_)))
                     (_tl3412434157_
                      (let () (declare (not safe)) (##cdr _e3412234150_))))
                 (if (gx#stx-pair? _tl3412434157_)
                     (let ((_e3412534160_ (gx#syntax-e _tl3412434157_)))
                       (let ((_hd3412634164_
                              (let ()
                                (declare (not safe))
                                (##car _e3412534160_)))
                             (_tl3412734167_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3412534160_))))
                         (if (gx#stx-null? _tl3412734167_)
                             ((lambda (_L34170_ _L34172_)
                                (let ((__tmp45795
                                       (let ((__tmp45796
                                              (let ((__tmp45797
                                                     (if (gx#stx-e _L34172_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate133494_
                                                            _L34172_
                                                            _L34170_
                                                            _E33850_))
                                                         _L34170_)))
                                                (declare (not safe))
                                                (cons __tmp45797 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp45796))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp45795)))
                              _hd3412634164_
                              _hd3412334154_)
                             (let ()
                               (declare (not safe))
                               (_g3411534133_ _g3411634137_)))))
                     (let ()
                       (declare (not safe))
                       (_g3411534133_ _g3411634137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3411534133_
                                                        _g3411634137_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3411534133_
                                                _g3411634137_))))))
                                 (declare (not safe))
                                 (_g3411434188_ _L34104_))))
                            (___kont4467944680_
                             (lambda (_L33898_ _L33900_)
                               (let* ((_g3391333932_
                                       (lambda (_g3391433928_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3391433928_)))
                                      (_g3391234083_
                                       (lambda (_g3391433936_)
                                         (if (gx#stx-pair? _g3391433936_)
                                             (let ((_e3391833939_
                                                    (gx#syntax-e
                                                     _g3391433936_)))
                                               (let ((_hd3391933943_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3391833939_)))
                                                     (_tl3392033946_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3391833939_))))
                                                 (if (gx#stx-pair?
                                                      _tl3392033946_)
                                                     (let ((_e3392133949_
                                                            (gx#syntax-e
                                                             _tl3392033946_)))
                                                       (let ((_hd3392233953_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3392133949_)))
                     (_tl3392333956_
                      (let () (declare (not safe)) (##cdr _e3392133949_))))
                 (if (gx#stx-pair? _tl3392333956_)
                     (let ((_e3392433959_ (gx#syntax-e _tl3392333956_)))
                       (let ((_hd3392533963_
                              (let ()
                                (declare (not safe))
                                (##car _e3392433959_)))
                             (_tl3392633966_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3392433959_))))
                         (if (gx#stx-null? _tl3392633966_)
                             ((lambda (_L33969_ _L33971_ _L33972_)
                                (if (gx#stx-e _L33971_)
                                    (let* ((_g3398934004_
                                            (lambda (_g3399034000_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3399034000_)))
                                           (_g3398834049_
                                            (lambda (_g3399034008_)
                                              (if (gx#stx-pair? _g3399034008_)
                                                  (let ((_e3399334011_
                                                         (gx#syntax-e
                                                          _g3399034008_)))
                                                    (let ((_hd3399434015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3399334011_)))
                                                          (_tl3399534018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3399334011_))))
                                                      (if (gx#stx-pair?
                                                           _tl3399534018_)
                                                          (let ((_e3399634021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3399534018_)))
                    (let ((_hd3399734025_
                           (let () (declare (not safe)) (##car _e3399634021_)))
                          (_tl3399834028_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3399634021_))))
                      (if (gx#stx-null? _tl3399834028_)
                          ((lambda (_L34031_ _L34033_)
                             (let ()
                               (let ((__tmp45807 (gx#datum->syntax '#f 'let))
                                     (__tmp45798
                                      (let ((__tmp45800
                                             (let ((__tmp45801
                                                    (let ((__tmp45802
                                                           (let ((__tmp45803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45806 (gx#datum->syntax '#f 'lambda))
                                (__tmp45804
                                 (let ((__tmp45805
                                        (let ()
                                          (declare (not safe))
                                          (cons _L34033_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp45805))))
                            (declare (not safe))
                            (cons __tmp45806 __tmp45804))))
                     (declare (not safe))
                     (cons __tmp45803 '()))))
              (declare (not safe))
              (cons _L33972_ __tmp45802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45801 '())))
                                            (__tmp45799
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34031_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45800 __tmp45799))))
                                 (declare (not safe))
                                 (cons __tmp45807 __tmp45798))))
                           _hd3399734025_
                           _hd3399434015_)
                          (let ()
                            (declare (not safe))
                            (_g3398934004_ _g3399034008_)))))
                  (let ()
                    (declare (not safe))
                    (_g3398934004_ _g3399034008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3398934004_
                                                     _g3399034008_)))))
                                           (__tmp45808
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate133494_
                                                     _L33971_
                                                     _L33969_
                                                     _E33850_))
                                                  (let ((__tmp45809
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L33972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses33493_
                                                     _L33898_
                                                     __tmp45809)))))
                                      (declare (not safe))
                                      (_g3398834049_ __tmp45808))
                                    (let* ((_g3405334061_
                                            (lambda (_g3405434057_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3405434057_)))
                                           (_g3405234079_
                                            (lambda (_g3405434065_)
                                              ((lambda (_L34068_)
                                                 (let ()
                                                   (let ((__tmp45824
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45810
                                                          (let ((__tmp45812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45813
                                (let ((__tmp45814
                                       (let ((__tmp45815
                                              (let ((__tmp45823
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp45816
                                                     (let ((__tmp45822
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp45817
                                                            (let ((__tmp45818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45821 (gx#datum->syntax '#f 'lambda))
                                 (__tmp45819
                                  (let ((__tmp45820
                                         (let ()
                                           (declare (not safe))
                                           (cons _L33969_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp45820))))
                             (declare (not safe))
                             (cons __tmp45821 __tmp45819))))
                      (declare (not safe))
                      (cons __tmp45818 '()))))
               (declare (not safe))
               (cons __tmp45822 __tmp45817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45823 __tmp45816))))
                                         (declare (not safe))
                                         (cons __tmp45815 '()))))
                                  (declare (not safe))
                                  (cons _L33972_ __tmp45814))))
                           (declare (not safe))
                           (cons __tmp45813 '())))
                        (__tmp45811
                         (let () (declare (not safe)) (cons _L34068_ '()))))
                    (declare (not safe))
                    (cons __tmp45812 __tmp45811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45824
                                                           __tmp45810))))
                                               _g3405434065_)))
                                           (__tmp45825
                                            (let ((__tmp45826
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L33972_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses33493_
                                               _L33898_
                                               __tmp45826))))
                                      (declare (not safe))
                                      (_g3405234079_ __tmp45825))))
                              _hd3392533963_
                              _hd3392233953_
                              _hd3391933943_)
                             (let ()
                               (declare (not safe))
                               (_g3391333932_ _g3391433936_)))))
                     (let ()
                       (declare (not safe))
                       (_g3391333932_ _g3391433936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3391333932_
                                                        _g3391433936_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3391333932_
                                                _g3391433936_))))))
                                 (declare (not safe))
                                 (_g3391234083_ _L33900_))))
                            (___kont4468144682_
                             (lambda ()
                               (let ((__tmp45827
                                      (let ((__tmp45828
                                             (let ()
                                               (declare (not safe))
                                               (cons _E33850_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp45828))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp45827)))))
                        (if (gx#stx-pair? ___stx4467444675_)
                            (let ((_e3385734094_
                                   (gx#syntax-e ___stx4467444675_)))
                              (let ((_tl3385934101_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3385734094_)))
                                    (_hd3385834098_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3385734094_))))
                                (if (gx#stx-null? _tl3385934101_)
                                    (___kont4467744678_ _hd3385834098_)
                                    (___kont4467944680_
                                     _tl3385934101_
                                     _hd3385834098_))))
                            (___kont4468144682_))))))
                 (_generate133494_
                  (lambda (_clause33496_ _body33498_ _E33499_)
                    (let* ((_g3350133525_
                            (lambda (_g3350233521_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3350233521_)))
                           (_g3350033844_
                            (lambda (_g3350233529_)
                              (if (gx#stx-pair? _g3350233529_)
                                  (let ((_e3350533532_
                                         (gx#syntax-e _g3350233529_)))
                                    (let ((_hd3350633536_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3350533532_)))
                                          (_tl3350733539_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3350533532_))))
                                      (if (gx#stx-pair? _tl3350733539_)
                                          (let ((_e3350833542_
                                                 (gx#syntax-e _tl3350733539_)))
                                            (let ((_hd3350933546_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3350833542_)))
                                                  (_tl3351033549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3350833542_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3350933546_)
                                                  (let ((_g45829_
                                                         (gx#syntax-split-splice
                                                          _hd3350933546_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45830_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45829_)
                           (##vector-length _g45829_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45830_ 2)))
                    (error "Context expects 2 values" _g45830_)))
              (let ((_target3351133552_
                     (let () (declare (not safe)) (##vector-ref _g45829_ 0)))
                    (_tl3351333555_
                     (let () (declare (not safe)) (##vector-ref _g45829_ 1))))
                (if (gx#stx-null? _tl3351333555_)
                    (letrec ((_loop3351433558_
                              (lambda (_hd3351233562_ _var3351833565_)
                                (if (gx#stx-pair? _hd3351233562_)
                                    (let ((_e3351533568_
                                           (gx#syntax-e _hd3351233562_)))
                                      (let ((_lp-hd3351633572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3351533568_)))
                                            (_lp-tl3351733575_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3351533568_))))
                                        (let ((__tmp45831
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd3351633572_
                                                       _var3351833565_))))
                                          (declare (not safe))
                                          (_loop3351433558_
                                           _lp-tl3351733575_
                                           __tmp45831))))
                                    (let ((_var3351933578_
                                           (reverse _var3351833565_)))
                                      (if (gx#stx-null? _tl3351033549_)
                                          ((lambda (_L33582_ _L33584_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g3360533608_
                                                                _g3360633611_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g3360533608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3360633611_)))
               '()
               _L33582_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx33485_)
                                               (let* ((_g3361433622_
                                                       (lambda (_g3361533618_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3361533618_)))
                                                      (_g3361333716_
                                                       (lambda (_g3361533626_)
                                                         ((lambda (_L33629_)
                                                            (let ()
                                                              (let* ((_g3364233650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3364333646_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3364333646_)))
                             (_g3364133712_
                              (lambda (_g3364333654_)
                                ((lambda (_L33657_)
                                   (let ()
                                     (let* ((_g3367033678_
                                             (lambda (_g3367133674_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3367133674_)))
                                            (_g3366933700_
                                             (lambda (_g3367133682_)
                                               ((lambda (_L33685_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp45836
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp45832
                                                              (let ((__tmp45834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45835
                                    (let ()
                                      (declare (not safe))
                                      (cons _L33685_ '()))))
                               (declare (not safe))
                               (cons _L33584_ __tmp45835)))
                            (__tmp45833
                             (let ()
                               (declare (not safe))
                               (cons _L33629_ '()))))
                        (declare (not safe))
                        (cons __tmp45834 __tmp45833))))
                 (declare (not safe))
                 (cons __tmp45836 __tmp45832))
               (gx#stx-source _stx33485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3367133682_)))
                                            (__tmp45837
                                             (gx#stx-wrap-source
                                              (let ((__tmp45841
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp45838
                                                     (let ((__tmp45840
                                                            (foldr (lambda (_g3370333706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3370433709_)
                             (let ()
                               (declare (not safe))
                               (cons _g3370333706_ _g3370433709_)))
                           '()
                           _L33582_))
                   (__tmp45839
                    (let () (declare (not safe)) (cons _L33657_ '()))))
               (declare (not safe))
               (cons __tmp45840 __tmp45839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45841 __tmp45838))
                                              (gx#stx-source _stx33485_))))
                                       (declare (not safe))
                                       (_g3366933700_ __tmp45837))))
                                 _g3364333654_))))
                        (declare (not safe))
                        (_g3364133712_ _body33498_))))
                  _g3361533626_)))
              (__tmp45842
               (let _recur33720_ ((_rest33723_ _clause33496_)
                                  (_rest-targets33725_ _tgt-lst33487_))
                 (let* ((___stx4470044701_ _rest33723_)
                        (_g3372833740_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4470044701_))))
                   (let ((___kont4470344704_
                          (lambda (_L33776_ _L33778_)
                            (let* ((_g3379333805_
                                    (lambda (_g3379433801_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3379433801_)))
                                   (_g3379233836_
                                    (lambda (_g3379433809_)
                                      (if (gx#stx-pair? _g3379433809_)
                                          (let ((_e3379733812_
                                                 (gx#syntax-e _g3379433809_)))
                                            (let ((_hd3379833816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3379733812_)))
                                                  (_tl3379933819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3379733812_))))
                                              ((lambda (_L33822_ _L33824_)
                                                 (let ((__tmp45843
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur33720_
                                                           _L33776_
                                                           _L33822_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx33485_
                                                    _L33824_
                                                    _L33778_
                                                    __tmp45843
                                                    _E33499_)))
                                               _tl3379933819_
                                               _hd3379833816_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3379333805_ _g3379433809_))))))
                              (declare (not safe))
                              (_g3379233836_ _rest-targets33725_))))
                         (___kont4470544706_
                          (lambda ()
                            (let ((__tmp45844
                                   (foldr (lambda (_g3375033753_ _g3375133756_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3375033753_
                                                    _g3375133756_)))
                                          '()
                                          _L33582_)))
                              (declare (not safe))
                              (cons _L33584_ __tmp45844)))))
                     (if (gx#stx-pair? ___stx4470044701_)
                         (let ((_e3373233766_ (gx#syntax-e ___stx4470044701_)))
                           (let ((_tl3373433773_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3373233766_)))
                                 (_hd3373333770_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3373233766_))))
                             (___kont4470344704_
                              _tl3373433773_
                              _hd3373333770_)))
                         (___kont4470544706_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3361333716_ __tmp45842))))
                                           _var3351933578_
                                           _hd3350633536_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3350133525_
                                             _g3350233529_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3351433558_ _target3351133552_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3350133525_ _g3350233529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3350133525_
                                                     _g3350233529_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3350133525_ _g3350233529_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3350133525_ _g3350233529_)))))
                           (__tmp45845
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause33496_)))))
                      (declare (not safe))
                      (_g3350033844_ __tmp45845)))))
          (let ((__tmp45846
                 (let ((__tmp45847 (gx#stx-length _tgt-lst33487_)))
                   (declare (not safe))
                   (_parse-body33490_ __tmp45847))))
            (declare (not safe))
            (_generate-body33492_ __tmp45846)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx33387_ _tgt33389_ _clauses33390_)
        (letrec ((_reclause33392_
                  (lambda (_clause33395_)
                    (let* ((___stx4471644717_ _clause33395_)
                           (_g3340033415_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4471644717_))))
                      (let ((___kont4471944720_ (lambda () _clause33395_))
                            (___kont4472144722_
                             (lambda (_L33443_ _L33445_)
                               (gx#stx-wrap-source
                                (let ((__tmp45848
                                       (let ()
                                         (declare (not safe))
                                         (cons _L33445_ '()))))
                                  (declare (not safe))
                                  (cons __tmp45848 _L33443_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4472344724_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx33387_
                                _clause33395_))))
                        (if (gx#stx-pair? ___stx4471644717_)
                            (let ((_e3340233467_
                                   (gx#syntax-e ___stx4471644717_)))
                              (let ((_tl3340433474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3340233467_)))
                                    (_hd3340333471_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3340233467_))))
                                (if (gx#identifier? _hd3340333471_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45849_|
                                         _hd3340333471_)
                                        (___kont4471944720_)
                                        (___kont4472144722_
                                         _tl3340433474_
                                         _hd3340333471_))
                                    (___kont4472144722_
                                     _tl3340433474_
                                     _hd3340333471_))))
                            (___kont4472344724_)))))))
          (let ((__tmp45851
                 (let () (declare (not safe)) (cons _tgt33389_ '())))
                (__tmp45850 (gx#stx-map _reclause33392_ _clauses33390_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx33387_
             __tmp45851
             __tmp45850)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx40617_)
        (let* ((___stx4474444745_ _stx40617_)
               (_g4062240651_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4474444745_))))
          (let ((___kont4474744748_
                 (lambda (_L40891_)
                   (let* ((_g4090440912_
                           (lambda (_g4090540908_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4090540908_)))
                          (_g4090340965_
                           (lambda (_g4090540916_)
                             ((lambda (_L40919_)
                                (let ()
                                  (let* ((_g4093140939_
                                          (lambda (_g4093240935_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4093240935_)))
                                         (_g4093040961_
                                          (lambda (_g4093240943_)
                                            ((lambda (_L40946_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45855
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45852
                                                          (let ((__tmp45854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40919_ '())))
                        (__tmp45853
                         (let () (declare (not safe)) (cons _L40946_ '()))))
                    (declare (not safe))
                    (cons __tmp45854 __tmp45853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45855
                                                           __tmp45852)))))
                                             _g4093240943_))))
                                    (_g4093040961_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45857
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45856
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40919_ _L40891_))))
                                        (declare (not safe))
                                        (cons __tmp45857 __tmp45856))
                                      (gx#stx-source _stx40617_))))))
                              _g4090540916_))))
                     (_g4090340965_ (gx#genident 'e)))))
                (___kont4474944750_
                 (lambda (_L40786_)
                   (let* ((_g4079940807_
                           (lambda (_g4080040803_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4080040803_)))
                          (_g4079840860_
                           (lambda (_g4080040811_)
                             ((lambda (_L40814_)
                                (let ()
                                  (let* ((_g4082640834_
                                          (lambda (_g4082740830_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4082740830_)))
                                         (_g4082540856_
                                          (lambda (_g4082740838_)
                                            ((lambda (_L40841_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45860
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45858
                                                          (let ((__tmp45859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40841_ '()))))
                    (declare (not safe))
                    (cons _L40814_ __tmp45859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45860
                                                           __tmp45858)))))
                                             _g4082740838_))))
                                    (_g4082540856_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45862
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45861
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40814_ _L40786_))))
                                        (declare (not safe))
                                        (cons __tmp45862 __tmp45861))
                                      (gx#stx-source _stx40617_))))))
                              _g4080040811_))))
                     (_g4079840860_ (gx#genident 'args)))))
                (___kont4475144752_
                 (lambda (_L40678_ _L40680_)
                   (let* ((_g4069440702_
                           (lambda (_g4069540698_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4069540698_)))
                          (_g4069340755_
                           (lambda (_g4069540706_)
                             ((lambda (_L40709_)
                                (let ()
                                  (let* ((_g4072140729_
                                          (lambda (_g4072240725_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4072240725_)))
                                         (_g4072040751_
                                          (lambda (_g4072240733_)
                                            ((lambda (_L40736_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45868
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45863
                                                          (let ((__tmp45865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45866
                                (let ((__tmp45867
                                       (let ()
                                         (declare (not safe))
                                         (cons _L40680_ '()))))
                                  (declare (not safe))
                                  (cons _L40709_ __tmp45867))))
                           (declare (not safe))
                           (cons __tmp45866 '())))
                        (__tmp45864
                         (let () (declare (not safe)) (cons _L40736_ '()))))
                    (declare (not safe))
                    (cons __tmp45865 __tmp45864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45868
                                                           __tmp45863)))))
                                             _g4072240733_))))
                                    (_g4072040751_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx40617_
                                        _L40709_
                                        _L40678_))))))
                              _g4069540706_))))
                     (_g4069340755_ (gx#genident _L40680_))))))
            (let* ((___match4479744798_
                    (lambda (_e4064040658_
                             _hd4064140662_
                             _tl4064240665_
                             _e4064340668_
                             _hd4064440672_
                             _tl4064540675_)
                      (let ((_L40678_ _tl4064540675_)
                            (_L40680_ _hd4064440672_))
                        (if (gx#stx-list? _L40678_)
                            (___kont4475144752_ _L40678_ _L40680_)
                            (let () (declare (not safe)) (_g4062240651_))))))
                   (___match4478544786_
                    (lambda (_e4063240766_
                             _hd4063340770_
                             _tl4063440773_
                             _e4063540776_
                             _hd4063640780_
                             _tl4063740783_)
                      (let ((_L40786_ _tl4063740783_))
                        (if (gx#stx-list? _L40786_)
                            (___kont4474944750_ _L40786_)
                            (___match4479744798_
                             _e4063240766_
                             _hd4063340770_
                             _tl4063440773_
                             _e4063540776_
                             _hd4063640780_
                             _tl4063740783_)))))
                   (___match4476944770_
                    (lambda (_e4062540871_
                             _hd4062640875_
                             _tl4062740878_
                             _e4062840881_
                             _hd4062940885_
                             _tl4063040888_)
                      (let ((_L40891_ _tl4063040888_))
                        (if (gx#stx-list? _L40891_)
                            (___kont4474744748_ _L40891_)
                            (___match4479744798_
                             _e4062540871_
                             _hd4062640875_
                             _tl4062740878_
                             _e4062840881_
                             _hd4062940885_
                             _tl4063040888_))))))
              (if (gx#stx-pair? ___stx4474444745_)
                  (let ((_e4062540871_ (gx#syntax-e ___stx4474444745_)))
                    (let ((_tl4062740878_
                           (let () (declare (not safe)) (##cdr _e4062540871_)))
                          (_hd4062640875_
                           (let ()
                             (declare (not safe))
                             (##car _e4062540871_))))
                      (if (gx#stx-pair? _tl4062740878_)
                          (let ((_e4062840881_ (gx#syntax-e _tl4062740878_)))
                            (let ((_tl4063040888_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4062840881_)))
                                  (_hd4062940885_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4062840881_))))
                              (if (gx#identifier? _hd4062940885_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45869_|
                                       _hd4062940885_)
                                      (___match4476944770_
                                       _e4062540871_
                                       _hd4062640875_
                                       _tl4062740878_
                                       _e4062840881_
                                       _hd4062940885_
                                       _tl4063040888_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45870_|
                                           _hd4062940885_)
                                          (___match4478544786_
                                           _e4062540871_
                                           _hd4062640875_
                                           _tl4062740878_
                                           _e4062840881_
                                           _hd4062940885_
                                           _tl4063040888_)
                                          (___match4479744798_
                                           _e4062540871_
                                           _hd4062640875_
                                           _tl4062740878_
                                           _e4062840881_
                                           _hd4062940885_
                                           _tl4063040888_)))
                                  (___match4479744798_
                                   _e4062540871_
                                   _hd4062640875_
                                   _tl4062740878_
                                   _e4062840881_
                                   _hd4062940885_
                                   _tl4063040888_))))
                          (let () (declare (not safe)) (_g4062240651_)))))
                  (let () (declare (not safe)) (_g4062240651_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx40973_)
        (let* ((_g4097641000_
                (lambda (_g4097740996_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4097740996_)))
               (_g4097541212_
                (lambda (_g4097741004_)
                  (if (gx#stx-pair? _g4097741004_)
                      (let ((_e4098041007_ (gx#syntax-e _g4097741004_)))
                        (let ((_hd4098141011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4098041007_)))
                              (_tl4098241014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4098041007_))))
                          (if (gx#stx-pair? _tl4098241014_)
                              (let ((_e4098341017_
                                     (gx#syntax-e _tl4098241014_)))
                                (let ((_hd4098441021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4098341017_)))
                                      (_tl4098541024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4098341017_))))
                                  (if (gx#stx-pair/null? _hd4098441021_)
                                      (let ((_g45871_
                                             (gx#syntax-split-splice
                                              _hd4098441021_
                                              '0)))
                                        (begin
                                          (let ((_g45872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45871_)
                                                       (##vector-length
                                                        _g45871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45872_)))
                                          (let ((_target4098641027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45871_ 0)))
                                                (_tl4098841030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45871_ 1))))
                                            (if (gx#stx-null? _tl4098841030_)
                                                (letrec ((_loop4098941033_
                                                          (lambda (_hd4098741037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e4099341040_)
                    (if (gx#stx-pair? _hd4098741037_)
                        (let ((_e4099041043_ (gx#syntax-e _hd4098741037_)))
                          (let ((_lp-hd4099141047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4099041043_)))
                                (_lp-tl4099241050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4099041043_))))
                            (_loop4098941033_
                             _lp-tl4099241050_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd4099141047_ _e4099341040_)))))
                        (let ((_e4099441053_ (reverse _e4099341040_)))
                          ((lambda (_L41057_ _L41059_)
                             (if (gx#stx-list? _L41057_)
                                 (let* ((_g4107741094_
                                         (lambda (_g4107841090_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4107841090_)))
                                        (_g4107641200_
                                         (lambda (_g4107841098_)
                                           (if (gx#stx-pair/null?
                                                _g4107841098_)
                                               (let ((_g45873_
                                                      (gx#syntax-split-splice
                                                       _g4107841098_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45874_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45873_)
                        (##vector-length _g45873_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45874_ 2)))
                 (error "Context expects 2 values" _g45874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4108041101_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45873_
                                                             0)))
                                                         (_tl4108241104_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45873_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4108241104_)
                                                         (letrec ((_loop4108341107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4108141111_ _$e4108741114_)
                             (if (gx#stx-pair? _hd4108141111_)
                                 (let ((_e4108441117_
                                        (gx#syntax-e _hd4108141111_)))
                                   (let ((_lp-hd4108541121_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4108441117_)))
                                         (_lp-tl4108641124_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4108441117_))))
                                     (_loop4108341107_
                                      _lp-tl4108641124_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd4108541121_
                                              _$e4108741114_)))))
                                 (let ((_$e4108841127_
                                        (reverse _$e4108741114_)))
                                   ((lambda (_L41131_)
                                      (let ()
                                        (let* ((_g4114741155_
                                                (lambda (_g4114841151_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g4114841151_)))
                                               (_g4114641188_
                                                (lambda (_g4114841159_)
                                                  ((lambda (_L41162_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp45880
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp45875
                        (let ((__tmp45877
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L41059_
                                  _L41131_)
                                 (foldr (lambda (_g4117641180_
                                                 _g4117741183_
                                                 _g4117841185_)
                                          (let ((__tmp45878
                                                 (let ((__tmp45879
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4117641180_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4117741183_
                                                         __tmp45879))))
                                            (declare (not safe))
                                            (cons __tmp45878 _g4117841185_)))
                                        '()
                                        _L41059_
                                        _L41131_)))
                              (__tmp45876
                               (let ()
                                 (declare (not safe))
                                 (cons _L41162_ '()))))
                          (declare (not safe))
                          (cons __tmp45877 __tmp45876))))
                   (declare (not safe))
                   (cons __tmp45880 __tmp45875)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4114841159_))))
                                          (_g4114641188_
                                           (let ((__tmp45881
                                                  (foldr (lambda (_g4119141194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4119241197_)
                   (let ()
                     (declare (not safe))
                     (cons _g4119141194_ _g4119241197_)))
                 '()
                 _L41131_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx40973_
                                              __tmp45881
                                              _L41057_))))))
                                    _$e4108841127_))))))
                   (_loop4108341107_ _target4108041101_ '()))
                 (_g4107741094_ _g4107841098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4107741094_
                                                _g4107841098_)))))
                                   (_g4107641200_
                                    (gx#gentemps
                                     (foldr (lambda (_g4120341206_
                                                     _g4120441209_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4120341206_
                                                      _g4120441209_)))
                                            '()
                                            _L41059_))))
                                 (_g4097641000_ _g4097741004_)))
                           _tl4098541024_
                           _e4099441053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4098941033_
                                                   _target4098641027_
                                                   '()))
                                                (_g4097641000_
                                                 _g4097741004_)))))
                                      (_g4097641000_ _g4097741004_))))
                              (_g4097641000_ _g4097741004_))))
                      (_g4097641000_ _g4097741004_)))))
          (_g4097541212_ _stx40973_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx41218_)
        (let* ((___stx4480044801_ _$stx41218_)
               (_g4122441307_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4480044801_))))
          (let ((___kont4480344804_
                 (lambda (_L41637_)
                   (let ((__tmp45884 (gx#datum->syntax '#f 'let))
                         (__tmp45882
                          (let ((__tmp45883
                                 (foldr (lambda (_g4165341656_ _g4165441659_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4165341656_
                                                  _g4165441659_)))
                                        '()
                                        _L41637_)))
                            (declare (not safe))
                            (cons '() __tmp45883))))
                     (declare (not safe))
                     (cons __tmp45884 __tmp45882))))
                (___kont4480744808_
                 (lambda (_L41545_ _L41547_ _L41548_ _L41549_)
                   (let ((__tmp45885
                          (let ((__tmp45887
                                 (let ((__tmp45888
                                        (let ((__tmp45889
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41547_ '()))))
                                          (declare (not safe))
                                          (cons _L41548_ __tmp45889))))
                                   (declare (not safe))
                                   (cons __tmp45888 '())))
                                (__tmp45886
                                 (foldr (lambda (_g4157141574_ _g4157241577_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4157141574_
                                                  _g4157241577_)))
                                        '()
                                        _L41545_)))
                            (declare (not safe))
                            (cons __tmp45887 __tmp45886))))
                     (declare (not safe))
                     (cons _L41549_ __tmp45885))))
                (___kont4481144812_
                 (lambda (_L41418_ _L41420_ _L41421_)
                   (let ((__tmp45896 (gx#datum->syntax '#f 'match*))
                         (__tmp45890
                          (let ((__tmp45895
                                 (foldr (lambda (_g4144341450_ _g4144441453_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4144341450_
                                                  _g4144441453_)))
                                        '()
                                        _L41420_))
                                (__tmp45891
                                 (let ((__tmp45892
                                        (let ((__tmp45894
                                               (foldr (lambda (_g4144541456_
                                                               _g4144641459_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4144541456_
                                                                _g4144641459_)))
                                                      '()
                                                      _L41421_))
                                              (__tmp45893
                                               (foldr (lambda (_g4144741462_
                                                               _g4144841465_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4144741462_
                                                                _g4144841465_)))
                                                      '()
                                                      _L41418_)))
                                          (declare (not safe))
                                          (cons __tmp45894 __tmp45893))))
                                   (declare (not safe))
                                   (cons __tmp45892 '()))))
                            (declare (not safe))
                            (cons __tmp45895 __tmp45891))))
                     (declare (not safe))
                     (cons __tmp45896 __tmp45890)))))
            (let* ((___match4489344894_
                    (lambda (_e4127041314_
                             _hd4127141318_
                             _tl4127241321_
                             _e4127341324_
                             _hd4127441328_
                             _tl4127541331_
                             ___splice4481344814_
                             _target4127641334_
                             _tl4127841337_)
                      (letrec ((_loop4127941340_
                                (lambda (_hd4127741344_
                                         _expr4128341347_
                                         _hd4128441349_)
                                  (if (gx#stx-pair? _hd4127741344_)
                                      (let ((_e4128041352_
                                             (gx#syntax-e _hd4127741344_)))
                                        (let ((_lp-tl4128241359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4128041352_)))
                                              (_lp-hd4128141356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4128041352_))))
                                          (if (gx#stx-pair? _lp-hd4128141356_)
                                              (let ((_e4128741362_
                                                     (gx#syntax-e
                                                      _lp-hd4128141356_)))
                                                (let ((_tl4128941369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4128741362_)))
                                                      (_hd4128841366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4128741362_))))
                                                  (if (gx#stx-pair?
                                                       _tl4128941369_)
                                                      (let ((_e4129041372_
                                                             (gx#syntax-e
                                                              _tl4128941369_)))
                                                        (let ((_tl4129241379_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4129041372_)))
                      (_hd4129141376_
                       (let () (declare (not safe)) (##car _e4129041372_))))
                  (if (gx#stx-null? _tl4129241379_)
                      (_loop4127941340_
                       _lp-tl4128241359_
                       (let ()
                         (declare (not safe))
                         (cons _hd4129141376_ _expr4128341347_))
                       (let ()
                         (declare (not safe))
                         (cons _hd4128841366_ _hd4128441349_)))
                      (let () (declare (not safe)) (_g4122441307_)))))
              (let () (declare (not safe)) (_g4122441307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4122441307_)))))
                                      (let ((_hd4128641385_
                                             (reverse _hd4128441349_))
                                            (_expr4128541382_
                                             (reverse _expr4128341347_)))
                                        (if (gx#stx-pair/null? _tl4127541331_)
                                            (let ((___splice4481544816_
                                                   (gx#syntax-split-splice
                                                    _tl4127541331_
                                                    '0)))
                                              (let ((_tl4129541391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4481544816_
                                                        '1)))
                                                    (_target4129341388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4481544816_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4129541391_)
                                                    (letrec ((_loop4129641394_
                                                              (lambda (_hd4129441398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4130041401_)
                        (if (gx#stx-pair? _hd4129441398_)
                            (let ((_e4129741404_ (gx#syntax-e _hd4129441398_)))
                              (let ((_lp-tl4129941411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4129741404_)))
                                    (_lp-hd4129841408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4129741404_))))
                                (_loop4129641394_
                                 _lp-tl4129941411_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4129841408_
                                         _body4130041401_)))))
                            (let ((_body4130141414_
                                   (reverse _body4130041401_)))
                              (___kont4481144812_
                               _body4130141414_
                               _expr4128541382_
                               _hd4128641385_))))))
              (_loop4129641394_ _target4129341388_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4122441307_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4122441307_))))))))
                        (_loop4127941340_ _target4127641334_ '() '()))))
                   (___match4488544886_
                    (lambda (_e4127041314_
                             _hd4127141318_
                             _tl4127241321_
                             _e4127341324_
                             _hd4127441328_
                             _tl4127541331_)
                      (if (gx#stx-pair/null? _hd4127441328_)
                          (let ((___splice4481344814_
                                 (gx#syntax-split-splice _hd4127441328_ '0)))
                            (let ((_tl4127841337_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4481344814_ '1)))
                                  (_target4127641334_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4481344814_ '0))))
                              (if (gx#stx-null? _tl4127841337_)
                                  (___match4489344894_
                                   _e4127041314_
                                   _hd4127141318_
                                   _tl4127241321_
                                   _e4127341324_
                                   _hd4127441328_
                                   _tl4127541331_
                                   ___splice4481344814_
                                   _target4127641334_
                                   _tl4127841337_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4122441307_)))))
                          (let () (declare (not safe)) (_g4122441307_)))))
                   (___match4487344874_
                    (lambda (_e4124641475_
                             _hd4124741479_
                             _tl4124841482_
                             _e4124941485_
                             _hd4125041489_
                             _tl4125141492_
                             _e4125241495_
                             _hd4125341499_
                             _tl4125441502_
                             _e4125541505_
                             _hd4125641509_
                             _tl4125741512_
                             ___splice4480944810_
                             _target4125841515_
                             _tl4126041518_)
                      (letrec ((_loop4126141521_
                                (lambda (_hd4125941525_ _body4126541528_)
                                  (if (gx#stx-pair? _hd4125941525_)
                                      (let ((_e4126241531_
                                             (gx#syntax-e _hd4125941525_)))
                                        (let ((_lp-tl4126441538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4126241531_)))
                                              (_lp-hd4126341535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4126241531_))))
                                          (_loop4126141521_
                                           _lp-tl4126441538_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4126341535_
                                                   _body4126541528_)))))
                                      (let ((_body4126641541_
                                             (reverse _body4126541528_)))
                                        (let ((_L41545_ _body4126641541_)
                                              (_L41547_ _hd4125641509_)
                                              (_L41548_ _hd4125341499_)
                                              (_L41549_ _hd4124741479_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L41548_))
                                              (___kont4480744808_
                                               _L41545_
                                               _L41547_
                                               _L41548_
                                               _L41549_)
                                              (___match4488544886_
                                               _e4124641475_
                                               _hd4124741479_
                                               _tl4124841482_
                                               _e4124941485_
                                               _hd4125041489_
                                               _tl4125141492_))))))))
                        (_loop4126141521_ _target4125841515_ '()))))
                   (___match4483944840_
                    (lambda (_e4122741587_
                             _hd4122841591_
                             _tl4122941594_
                             _e4123041597_
                             _hd4123141601_
                             _tl4123241604_
                             ___splice4480544806_
                             _target4123341607_
                             _tl4123541610_)
                      (letrec ((_loop4123641613_
                                (lambda (_hd4123441617_ _body4124041620_)
                                  (if (gx#stx-pair? _hd4123441617_)
                                      (let ((_e4123741623_
                                             (gx#syntax-e _hd4123441617_)))
                                        (let ((_lp-tl4123941630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4123741623_)))
                                              (_lp-hd4123841627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4123741623_))))
                                          (_loop4123641613_
                                           _lp-tl4123941630_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4123841627_
                                                   _body4124041620_)))))
                                      (let ((_body4124141633_
                                             (reverse _body4124041620_)))
                                        (___kont4480344804_
                                         _body4124141633_))))))
                        (_loop4123641613_ _target4123341607_ '())))))
              (if (gx#stx-pair? ___stx4480044801_)
                  (let ((_e4122741587_ (gx#syntax-e ___stx4480044801_)))
                    (let ((_tl4122941594_
                           (let () (declare (not safe)) (##cdr _e4122741587_)))
                          (_hd4122841591_
                           (let ()
                             (declare (not safe))
                             (##car _e4122741587_))))
                      (if (gx#stx-pair? _tl4122941594_)
                          (let ((_e4123041597_ (gx#syntax-e _tl4122941594_)))
                            (let ((_tl4123241604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4123041597_)))
                                  (_hd4123141601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4123041597_))))
                              (if (gx#stx-null? _hd4123141601_)
                                  (if (gx#stx-pair/null? _tl4123241604_)
                                      (let ((___splice4480544806_
                                             (gx#syntax-split-splice
                                              _tl4123241604_
                                              '0)))
                                        (let ((_tl4123541610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4480544806_
                                                  '1)))
                                              (_target4123341607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4480544806_
                                                  '0))))
                                          (if (gx#stx-null? _tl4123541610_)
                                              (___match4483944840_
                                               _e4122741587_
                                               _hd4122841591_
                                               _tl4122941594_
                                               _e4123041597_
                                               _hd4123141601_
                                               _tl4123241604_
                                               ___splice4480544806_
                                               _target4123341607_
                                               _tl4123541610_)
                                              (if (gx#stx-pair/null?
                                                   _hd4123141601_)
                                                  (let ((___splice4481344814_
                                                         (gx#syntax-split-splice
                                                          _hd4123141601_
                                                          '0)))
                                                    (let ((_tl4127841337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4481344814_
                                                              '1)))
                                                          (_target4127641334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4481344814_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4127841337_)
                                                          (___match4489344894_
                                                           _e4122741587_
                                                           _hd4122841591_
                                                           _tl4122941594_
                                                           _e4123041597_
                                                           _hd4123141601_
                                                           _tl4123241604_
                                                           ___splice4481344814_
                                                           _target4127641334_
                                                           _tl4127841337_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4122441307_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4122441307_))))))
                                      (if (gx#stx-pair/null? _hd4123141601_)
                                          (let ((___splice4481344814_
                                                 (gx#syntax-split-splice
                                                  _hd4123141601_
                                                  '0)))
                                            (let ((_tl4127841337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4481344814_
                                                      '1)))
                                                  (_target4127641334_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4481344814_
                                                      '0))))
                                              (if (gx#stx-null? _tl4127841337_)
                                                  (___match4489344894_
                                                   _e4122741587_
                                                   _hd4122841591_
                                                   _tl4122941594_
                                                   _e4123041597_
                                                   _hd4123141601_
                                                   _tl4123241604_
                                                   ___splice4481344814_
                                                   _target4127641334_
                                                   _tl4127841337_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4122441307_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4122441307_))))
                                  (if (gx#stx-pair? _hd4123141601_)
                                      (let ((_e4125241495_
                                             (gx#syntax-e _hd4123141601_)))
                                        (let ((_tl4125441502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4125241495_)))
                                              (_hd4125341499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4125241495_))))
                                          (if (gx#stx-pair? _tl4125441502_)
                                              (let ((_e4125541505_
                                                     (gx#syntax-e
                                                      _tl4125441502_)))
                                                (let ((_tl4125741512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4125541505_)))
                                                      (_hd4125641509_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4125541505_))))
                                                  (if (gx#stx-null?
                                                       _tl4125741512_)
                                                      (if (gx#stx-pair/null?
                                                           _tl4123241604_)
                                                          (let ((___splice4480944810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl4123241604_ '0)))
                    (let ((_tl4126041518_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480944810_ '1)))
                          (_target4125841515_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480944810_ '0))))
                      (if (gx#stx-null? _tl4126041518_)
                          (___match4487344874_
                           _e4122741587_
                           _hd4122841591_
                           _tl4122941594_
                           _e4123041597_
                           _hd4123141601_
                           _tl4123241604_
                           _e4125241495_
                           _hd4125341499_
                           _tl4125441502_
                           _e4125541505_
                           _hd4125641509_
                           _tl4125741512_
                           ___splice4480944810_
                           _target4125841515_
                           _tl4126041518_)
                          (if (gx#stx-pair/null? _hd4123141601_)
                              (let ((___splice4481344814_
                                     (gx#syntax-split-splice
                                      _hd4123141601_
                                      '0)))
                                (let ((_tl4127841337_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4481344814_
                                          '1)))
                                      (_target4127641334_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4481344814_
                                          '0))))
                                  (if (gx#stx-null? _tl4127841337_)
                                      (___match4489344894_
                                       _e4122741587_
                                       _hd4122841591_
                                       _tl4122941594_
                                       _e4123041597_
                                       _hd4123141601_
                                       _tl4123241604_
                                       ___splice4481344814_
                                       _target4127641334_
                                       _tl4127841337_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4122441307_)))))
                              (let () (declare (not safe)) (_g4122441307_))))))
                  (if (gx#stx-pair/null? _hd4123141601_)
                      (let ((___splice4481344814_
                             (gx#syntax-split-splice _hd4123141601_ '0)))
                        (let ((_tl4127841337_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4481344814_ '1)))
                              (_target4127641334_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4481344814_ '0))))
                          (if (gx#stx-null? _tl4127841337_)
                              (___match4489344894_
                               _e4122741587_
                               _hd4122841591_
                               _tl4122941594_
                               _e4123041597_
                               _hd4123141601_
                               _tl4123241604_
                               ___splice4481344814_
                               _target4127641334_
                               _tl4127841337_)
                              (let () (declare (not safe)) (_g4122441307_)))))
                      (let () (declare (not safe)) (_g4122441307_))))
              (if (gx#stx-pair/null? _hd4123141601_)
                  (let ((___splice4481344814_
                         (gx#syntax-split-splice _hd4123141601_ '0)))
                    (let ((_tl4127841337_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4481344814_ '1)))
                          (_target4127641334_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4481344814_ '0))))
                      (if (gx#stx-null? _tl4127841337_)
                          (___match4489344894_
                           _e4122741587_
                           _hd4122841591_
                           _tl4122941594_
                           _e4123041597_
                           _hd4123141601_
                           _tl4123241604_
                           ___splice4481344814_
                           _target4127641334_
                           _tl4127841337_)
                          (let () (declare (not safe)) (_g4122441307_)))))
                  (let () (declare (not safe)) (_g4122441307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4123141601_)
                                                  (let ((___splice4481344814_
                                                         (gx#syntax-split-splice
                                                          _hd4123141601_
                                                          '0)))
                                                    (let ((_tl4127841337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4481344814_
                                                              '1)))
                                                          (_target4127641334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4481344814_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4127841337_)
                                                          (___match4489344894_
                                                           _e4122741587_
                                                           _hd4122841591_
                                                           _tl4122941594_
                                                           _e4123041597_
                                                           _hd4123141601_
                                                           _tl4123241604_
                                                           ___splice4481344814_
                                                           _target4127641334_
                                                           _tl4127841337_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4122441307_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4122441307_))))))
                                      (if (gx#stx-pair/null? _hd4123141601_)
                                          (let ((___splice4481344814_
                                                 (gx#syntax-split-splice
                                                  _hd4123141601_
                                                  '0)))
                                            (let ((_tl4127841337_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4481344814_
                                                      '1)))
                                                  (_target4127641334_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4481344814_
                                                      '0))))
                                              (if (gx#stx-null? _tl4127841337_)
                                                  (___match4489344894_
                                                   _e4122741587_
                                                   _hd4122841591_
                                                   _tl4122941594_
                                                   _e4123041597_
                                                   _hd4123141601_
                                                   _tl4123241604_
                                                   ___splice4481344814_
                                                   _target4127641334_
                                                   _tl4127841337_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4122441307_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4122441307_)))))))
                          (let () (declare (not safe)) (_g4122441307_)))))
                  (let () (declare (not safe)) (_g4122441307_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx41670_)
        (let* ((___stx4489644897_ _$stx41670_)
               (_g4167541727_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4489644897_))))
          (let ((___kont4489944900_
                 (lambda (_L41897_ _L41899_ _L41900_ _L41901_ _L41902_)
                   (let ((__tmp45905 (gx#datum->syntax '#f 'with))
                         (__tmp45897
                          (let ((__tmp45902
                                 (let ((__tmp45903
                                        (let ((__tmp45904
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41900_ '()))))
                                          (declare (not safe))
                                          (cons _L41901_ __tmp45904))))
                                   (declare (not safe))
                                   (cons __tmp45903 '())))
                                (__tmp45898
                                 (let ((__tmp45899
                                        (let ((__tmp45900
                                               (let ((__tmp45901
                                                      (foldr (lambda (_g4192741930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4192841933_)
                       (let ()
                         (declare (not safe))
                         (cons _g4192741930_ _g4192841933_)))
                     '()
                     _L41897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L41899_ __tmp45901))))
                                          (declare (not safe))
                                          (cons _L41902_ __tmp45900))))
                                   (declare (not safe))
                                   (cons __tmp45899 '()))))
                            (declare (not safe))
                            (cons __tmp45902 __tmp45898))))
                     (declare (not safe))
                     (cons __tmp45905 __tmp45897))))
                (___kont4490344904_
                 (lambda (_L41784_)
                   (let ((__tmp45908 (gx#datum->syntax '#f 'let))
                         (__tmp45906
                          (let ((__tmp45907
                                 (foldr (lambda (_g4180141804_ _g4180241807_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4180141804_
                                                  _g4180241807_)))
                                        '()
                                        _L41784_)))
                            (declare (not safe))
                            (cons '() __tmp45907))))
                     (declare (not safe))
                     (cons __tmp45908 __tmp45906)))))
            (let* ((___match4496944970_
                    (lambda (_e4170741734_
                             _hd4170841738_
                             _tl4170941741_
                             _e4171041744_
                             _hd4171141748_
                             _tl4171241751_
                             ___splice4490544906_
                             _target4171341754_
                             _tl4171541757_)
                      (letrec ((_loop4171641760_
                                (lambda (_hd4171441764_ _body4172041767_)
                                  (if (gx#stx-pair? _hd4171441764_)
                                      (let ((_e4171741770_
                                             (gx#syntax-e _hd4171441764_)))
                                        (let ((_lp-tl4171941777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4171741770_)))
                                              (_lp-hd4171841774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4171741770_))))
                                          (_loop4171641760_
                                           _lp-tl4171941777_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4171841774_
                                                   _body4172041767_)))))
                                      (let ((_body4172141780_
                                             (reverse _body4172041767_)))
                                        (___kont4490344904_
                                         _body4172141780_))))))
                        (_loop4171641760_ _target4171341754_ '()))))
                   (___match4494744948_
                    (lambda (_e4168241817_
                             _hd4168341821_
                             _tl4168441824_
                             _e4168541827_
                             _hd4168641831_
                             _tl4168741834_
                             _e4168841837_
                             _hd4168941841_
                             _tl4169041844_
                             _e4169141847_
                             _hd4169241851_
                             _tl4169341854_
                             _e4169441857_
                             _hd4169541861_
                             _tl4169641864_
                             ___splice4490144902_
                             _target4169741867_
                             _tl4169941870_)
                      (letrec ((_loop4170041873_
                                (lambda (_hd4169841877_ _body4170441880_)
                                  (if (gx#stx-pair? _hd4169841877_)
                                      (let ((_e4170141883_
                                             (gx#syntax-e _hd4169841877_)))
                                        (let ((_lp-tl4170341890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4170141883_)))
                                              (_lp-hd4170241887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4170141883_))))
                                          (_loop4170041873_
                                           _lp-tl4170341890_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4170241887_
                                                   _body4170441880_)))))
                                      (let ((_body4170541893_
                                             (reverse _body4170441880_)))
                                        (___kont4489944900_
                                         _body4170541893_
                                         _tl4169041844_
                                         _hd4169541861_
                                         _hd4169241851_
                                         _hd4168341821_))))))
                        (_loop4170041873_ _target4169741867_ '())))))
              (if (gx#stx-pair? ___stx4489644897_)
                  (let ((_e4168241817_ (gx#syntax-e ___stx4489644897_)))
                    (let ((_tl4168441824_
                           (let () (declare (not safe)) (##cdr _e4168241817_)))
                          (_hd4168341821_
                           (let ()
                             (declare (not safe))
                             (##car _e4168241817_))))
                      (if (gx#stx-pair? _tl4168441824_)
                          (let ((_e4168541827_ (gx#syntax-e _tl4168441824_)))
                            (let ((_tl4168741834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4168541827_)))
                                  (_hd4168641831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4168541827_))))
                              (if (gx#stx-pair? _hd4168641831_)
                                  (let ((_e4168841837_
                                         (gx#syntax-e _hd4168641831_)))
                                    (let ((_tl4169041844_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4168841837_)))
                                          (_hd4168941841_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4168841837_))))
                                      (if (gx#stx-pair? _hd4168941841_)
                                          (let ((_e4169141847_
                                                 (gx#syntax-e _hd4168941841_)))
                                            (let ((_tl4169341854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4169141847_)))
                                                  (_hd4169241851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4169141847_))))
                                              (if (gx#stx-pair? _tl4169341854_)
                                                  (let ((_e4169441857_
                                                         (gx#syntax-e
                                                          _tl4169341854_)))
                                                    (let ((_tl4169641864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4169441857_)))
                                                          (_hd4169541861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4169441857_))))
                                                      (if (gx#stx-null?
                                                           _tl4169641864_)
                                                          (if (gx#stx-pair/null?
                                                               _tl4168741834_)
                                                              (let ((___splice4490144902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl4168741834_ '0)))
                        (let ((_tl4169941870_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4490144902_ '1)))
                              (_target4169741867_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4490144902_ '0))))
                          (if (gx#stx-null? _tl4169941870_)
                              (___match4494744948_
                               _e4168241817_
                               _hd4168341821_
                               _tl4168441824_
                               _e4168541827_
                               _hd4168641831_
                               _tl4168741834_
                               _e4168841837_
                               _hd4168941841_
                               _tl4169041844_
                               _e4169141847_
                               _hd4169241851_
                               _tl4169341854_
                               _e4169441857_
                               _hd4169541861_
                               _tl4169641864_
                               ___splice4490144902_
                               _target4169741867_
                               _tl4169941870_)
                              (let () (declare (not safe)) (_g4167541727_)))))
                      (let () (declare (not safe)) (_g4167541727_)))
                  (let () (declare (not safe)) (_g4167541727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4167541727_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4167541727_)))))
                                  (if (gx#stx-null? _hd4168641831_)
                                      (if (gx#stx-pair/null? _tl4168741834_)
                                          (let ((___splice4490544906_
                                                 (gx#syntax-split-splice
                                                  _tl4168741834_
                                                  '0)))
                                            (let ((_tl4171541757_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4490544906_
                                                      '1)))
                                                  (_target4171341754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4490544906_
                                                      '0))))
                                              (if (gx#stx-null? _tl4171541757_)
                                                  (___match4496944970_
                                                   _e4168241817_
                                                   _hd4168341821_
                                                   _tl4168441824_
                                                   _e4168541827_
                                                   _hd4168641831_
                                                   _tl4168741834_
                                                   ___splice4490544906_
                                                   _target4171341754_
                                                   _tl4171541757_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4167541727_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4167541727_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4167541727_))))))
                          (let () (declare (not safe)) (_g4167541727_)))))
                  (let () (declare (not safe)) (_g4167541727_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx41942_)
        (let* ((___stx4497244973_ _$stx41942_)
               (_g4195342099_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4497244973_))))
          (let ((___kont4497544976_
                 (lambda (_L42703_ _L42705_ _L42706_)
                   (let ((__tmp45913 (gx#datum->syntax '#f 'and))
                         (__tmp45909
                          (foldr (lambda (_g4272742730_ _g4272842733_)
                                   (let ((__tmp45910
                                          (let ((__tmp45911
                                                 (let ((__tmp45912
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42703_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4272742730_
                                                         __tmp45912))))
                                            (declare (not safe))
                                            (cons _L42706_ __tmp45911))))
                                     (declare (not safe))
                                     (cons __tmp45910 _g4272842733_)))
                                 '()
                                 _L42705_)))
                     (declare (not safe))
                     (cons __tmp45913 __tmp45909))))
                (___kont4497944980_
                 (lambda (_L42593_ _L42595_ _L42596_)
                   (let ((__tmp45918 (gx#datum->syntax '#f 'or))
                         (__tmp45914
                          (foldr (lambda (_g4261742620_ _g4261842623_)
                                   (let ((__tmp45915
                                          (let ((__tmp45916
                                                 (let ((__tmp45917
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42593_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4261742620_
                                                         __tmp45917))))
                                            (declare (not safe))
                                            (cons _L42596_ __tmp45916))))
                                     (declare (not safe))
                                     (cons __tmp45915 _g4261842623_)))
                                 '()
                                 _L42595_)))
                     (declare (not safe))
                     (cons __tmp45918 __tmp45914))))
                (___kont4498344984_
                 (lambda (_L42493_ _L42495_ _L42496_)
                   (let ((__tmp45923 (gx#datum->syntax '#f 'not))
                         (__tmp45919
                          (let ((__tmp45920
                                 (let ((__tmp45921
                                        (let ((__tmp45922
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L42493_ '()))))
                                          (declare (not safe))
                                          (cons _L42495_ __tmp45922))))
                                   (declare (not safe))
                                   (cons _L42496_ __tmp45921))))
                            (declare (not safe))
                            (cons __tmp45920 '()))))
                     (declare (not safe))
                     (cons __tmp45923 __tmp45919))))
                (___kont4498544986_
                 (lambda (_L42419_ _L42421_)
                   (let ((__tmp45924
                          (let () (declare (not safe)) (cons _L42419_ '()))))
                     (declare (not safe))
                     (cons _L42421_ __tmp45924))))
                (___kont4498744988_
                 (lambda (_L42367_ _L42369_)
                   (let ((__tmp45933 (gx#datum->syntax '#f 'lambda))
                         (__tmp45925
                          (let ((__tmp45931
                                 (let ((__tmp45932
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45932 '())))
                                (__tmp45926
                                 (let ((__tmp45927
                                        (let ((__tmp45928
                                               (let ((__tmp45929
                                                      (let ((__tmp45930
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp45930
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L42367_ __tmp45929))))
                                          (declare (not safe))
                                          (cons _L42369_ __tmp45928))))
                                   (declare (not safe))
                                   (cons __tmp45927 '()))))
                            (declare (not safe))
                            (cons __tmp45931 __tmp45926))))
                     (declare (not safe))
                     (cons __tmp45933 __tmp45925))))
                (___kont4498944990_
                 (lambda (_L42319_ _L42321_ _L42322_)
                   (let ((__tmp45952 (gx#datum->syntax '#f 'lambda))
                         (__tmp45934
                          (let ((__tmp45950
                                 (let ((__tmp45951
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45951 '())))
                                (__tmp45935
                                 (let ((__tmp45936
                                        (let ((__tmp45949
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp45937
                                               (let ((__tmp45942
                                                      (let ((__tmp45948
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp45943
                                                             (let ((__tmp45944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45945
                                   (let ((__tmp45946
                                          (let ((__tmp45947
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45947 '()))))
                                     (declare (not safe))
                                     (cons _L42321_ __tmp45946))))
                              (declare (not safe))
                              (cons _L42322_ __tmp45945))))
                       (declare (not safe))
                       (cons __tmp45944 '()))))
                (declare (not safe))
                (cons __tmp45948 __tmp45943)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45938
                                                      (let ((__tmp45939
                                                             (let ((__tmp45940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45941 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp45941 '()))))
                       (declare (not safe))
                       (cons _L42319_ __tmp45940))))
                (declare (not safe))
                (cons __tmp45939 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45942
                                                       __tmp45938))))
                                          (declare (not safe))
                                          (cons __tmp45949 __tmp45937))))
                                   (declare (not safe))
                                   (cons __tmp45936 '()))))
                            (declare (not safe))
                            (cons __tmp45950 __tmp45935))))
                     (declare (not safe))
                     (cons __tmp45952 __tmp45934))))
                (___kont4499144992_
                 (lambda (_L42250_ _L42252_ _L42253_)
                   (let ((__tmp45968 (gx#datum->syntax '#f 'lambda))
                         (__tmp45953
                          (let ((__tmp45966
                                 (let ((__tmp45967
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45967 '())))
                                (__tmp45954
                                 (let ((__tmp45955
                                        (let ((__tmp45965
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45956
                                               (let ((__tmp45961
                                                      (let ((__tmp45962
                                                             (let ((__tmp45963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45964 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45964 '()))))
                       (declare (not safe))
                       (cons _L42252_ __tmp45963))))
                (declare (not safe))
                (cons _L42253_ __tmp45962)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45957
                                                      (let ((__tmp45958
                                                             (let ((__tmp45959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45960 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45960 '()))))
                       (declare (not safe))
                       (cons _L42250_ __tmp45959))))
                (declare (not safe))
                (cons __tmp45958 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45961
                                                       __tmp45957))))
                                          (declare (not safe))
                                          (cons __tmp45965 __tmp45956))))
                                   (declare (not safe))
                                   (cons __tmp45955 '()))))
                            (declare (not safe))
                            (cons __tmp45966 __tmp45954))))
                     (declare (not safe))
                     (cons __tmp45968 __tmp45953))))
                (___kont4499344994_
                 (lambda (_L42170_ _L42172_ _L42173_ _L42174_)
                   (let ((__tmp45986 (gx#datum->syntax '#f 'lambda))
                         (__tmp45969
                          (let ((__tmp45984
                                 (let ((__tmp45985
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45985 '())))
                                (__tmp45970
                                 (let ((__tmp45971
                                        (let ((__tmp45983
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45972
                                               (let ((__tmp45979
                                                      (let ((__tmp45980
                                                             (let ((__tmp45981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45982 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45982 '()))))
                       (declare (not safe))
                       (cons _L42173_ __tmp45981))))
                (declare (not safe))
                (cons _L42174_ __tmp45980)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45973
                                                      (let ((__tmp45974
                                                             (let ((__tmp45975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45976
                                   (let ((__tmp45977
                                          (let ((__tmp45978
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45978 '()))))
                                     (declare (not safe))
                                     (cons _L42172_ __tmp45977))))
                              (declare (not safe))
                              (cons __tmp45976 '()))))
                       (declare (not safe))
                       (cons _L42170_ __tmp45975))))
                (declare (not safe))
                (cons __tmp45974 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45979
                                                       __tmp45973))))
                                          (declare (not safe))
                                          (cons __tmp45983 __tmp45972))))
                                   (declare (not safe))
                                   (cons __tmp45971 '()))))
                            (declare (not safe))
                            (cons __tmp45984 __tmp45970))))
                     (declare (not safe))
                     (cons __tmp45986 __tmp45969)))))
            (let* ((___match4514545146_
                    (lambda (_e4204342279_
                             _hd4204442283_
                             _tl4204542286_
                             _e4204642289_
                             _hd4204742293_
                             _tl4204842296_
                             _e4204942299_
                             _hd4205042303_
                             _tl4205142306_)
                      (if (gx#identifier? _hd4205042303_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45987_|
                               _hd4205042303_)
                              (if (gx#stx-pair? _tl4205142306_)
                                  (let ((_e4205242309_
                                         (gx#syntax-e _tl4205142306_)))
                                    (let ((_tl4205442316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4205242309_)))
                                          (_hd4205342313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4205242309_))))
                                      (if (gx#stx-null? _tl4205442316_)
                                          (___kont4498944990_
                                           _hd4205342313_
                                           _hd4204742293_
                                           _hd4204442283_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))
                              (let () (declare (not safe)) (_g4195342099_)))
                          (if (gx#stx-datum? _hd4205042303_)
                              (let ((_e4206742236_ (gx#stx-e _hd4205042303_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4206742236_ '::))
                                    (if (gx#stx-pair? _tl4205142306_)
                                        (let ((_e4206842240_
                                               (gx#syntax-e _tl4205142306_)))
                                          (let ((_tl4207042247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4206842240_)))
                                                (_hd4206942244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4206842240_))))
                                            (if (gx#stx-null? _tl4207042247_)
                                                (___kont4499144992_
                                                 _hd4206942244_
                                                 _hd4204742293_
                                                 _hd4204442283_)
                                                (if (gx#stx-pair?
                                                     _tl4207042247_)
                                                    (let ((_e4208842150_
                                                           (gx#syntax-e
                                                            _tl4207042247_)))
                                                      (let ((_tl4209042157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4208842150_)))
                    (_hd4208942154_
                     (let () (declare (not safe)) (##car _e4208842150_))))
                (if (gx#identifier? _hd4208942154_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45988_|
                         _hd4208942154_)
                        (if (gx#stx-pair? _tl4209042157_)
                            (let ((_e4209142160_ (gx#syntax-e _tl4209042157_)))
                              (let ((_tl4209342167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4209142160_)))
                                    (_hd4209242164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4209142160_))))
                                (if (gx#stx-null? _tl4209342167_)
                                    (___kont4499344994_
                                     _hd4209242164_
                                     _hd4206942244_
                                     _hd4204742293_
                                     _hd4204442283_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))))
                            (let () (declare (not safe)) (_g4195342099_)))
                        (let () (declare (not safe)) (_g4195342099_)))
                    (let () (declare (not safe)) (_g4195342099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_))))
                              (let () (declare (not safe)) (_g4195342099_))))))
                   (___match4512545126_
                    (lambda (_e4203442347_
                             _hd4203542351_
                             _tl4203642354_
                             _e4203742357_
                             _hd4203842361_
                             _tl4203942364_)
                      (if (gx#stx-null? _tl4203942364_)
                          (___kont4498744988_ _hd4203842361_ _hd4203542351_)
                          (if (gx#stx-pair? _tl4203942364_)
                              (let ((_e4204942299_
                                     (gx#syntax-e _tl4203942364_)))
                                (let ((_tl4205142306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4204942299_)))
                                      (_hd4205042303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4204942299_))))
                                  (if (gx#identifier? _hd4205042303_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45987_|
                                           _hd4205042303_)
                                          (if (gx#stx-pair? _tl4205142306_)
                                              (let ((_e4205242309_
                                                     (gx#syntax-e
                                                      _tl4205142306_)))
                                                (let ((_tl4205442316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4205242309_)))
                                                      (_hd4205342313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4205242309_))))
                                                  (if (gx#stx-null?
                                                       _tl4205442316_)
                                                      (___kont4498944990_
                                                       _hd4205342313_
                                                       _hd4203842361_
                                                       _hd4203542351_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4195342099_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))
                                      (if (gx#stx-datum? _hd4205042303_)
                                          (let ((_e4206742236_
                                                 (gx#stx-e _hd4205042303_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4206742236_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4205142306_)
                                                    (let ((_e4206842240_
                                                           (gx#syntax-e
                                                            _tl4205142306_)))
                                                      (let ((_tl4207042247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4206842240_)))
                    (_hd4206942244_
                     (let () (declare (not safe)) (##car _e4206842240_))))
                (if (gx#stx-null? _tl4207042247_)
                    (___kont4499144992_
                     _hd4206942244_
                     _hd4203842361_
                     _hd4203542351_)
                    (if (gx#stx-pair? _tl4207042247_)
                        (let ((_e4208842150_ (gx#syntax-e _tl4207042247_)))
                          (let ((_tl4209042157_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4208842150_)))
                                (_hd4208942154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4208842150_))))
                            (if (gx#identifier? _hd4208942154_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45988_|
                                     _hd4208942154_)
                                    (if (gx#stx-pair? _tl4209042157_)
                                        (let ((_e4209142160_
                                               (gx#syntax-e _tl4209042157_)))
                                          (let ((_tl4209342167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4209142160_)))
                                                (_hd4209242164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4209142160_))))
                                            (if (gx#stx-null? _tl4209342167_)
                                                (___kont4499344994_
                                                 _hd4209242164_
                                                 _hd4206942244_
                                                 _hd4203842361_
                                                 _hd4203542351_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4195342099_)))))
                        (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_))))))
                              (let () (declare (not safe)) (_g4195342099_))))))
                   (___match4505545056_
                    (lambda (_e4198242523_
                             _hd4198342527_
                             _tl4198442530_
                             _e4198542533_
                             _hd4198642537_
                             _tl4198742540_
                             _e4198842543_
                             _hd4198942547_
                             _tl4199042550_
                             ___splice4498144982_
                             _target4199142553_
                             _tl4199342556_)
                      (letrec ((_loop4199442559_
                                (lambda (_hd4199242563_ _pred4199842566_)
                                  (if (gx#stx-pair? _hd4199242563_)
                                      (let ((_e4199542569_
                                             (gx#syntax-e _hd4199242563_)))
                                        (let ((_lp-tl4199742576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4199542569_)))
                                              (_lp-hd4199642573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4199542569_))))
                                          (_loop4199442559_
                                           _lp-tl4199742576_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4199642573_
                                                   _pred4199842566_)))))
                                      (let ((_pred4199942579_
                                             (reverse _pred4199842566_)))
                                        (if (gx#stx-pair? _tl4198742540_)
                                            (let ((_e4200042583_
                                                   (gx#syntax-e
                                                    _tl4198742540_)))
                                              (let ((_tl4200242590_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4200042583_)))
                                                    (_hd4200142587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4200042583_))))
                                                (if (gx#stx-null?
                                                     _tl4200242590_)
                                                    (___kont4497944980_
                                                     _hd4200142587_
                                                     _pred4199942579_
                                                     _hd4198342527_)
                                                    (___match4514545146_
                                                     _e4198242523_
                                                     _hd4198342527_
                                                     _tl4198442530_
                                                     _e4198542533_
                                                     _hd4198642537_
                                                     _tl4198742540_
                                                     _e4200042583_
                                                     _hd4200142587_
                                                     _tl4200242590_))))
                                            (___match4512545126_
                                             _e4198242523_
                                             _hd4198342527_
                                             _tl4198442530_
                                             _e4198542533_
                                             _hd4198642537_
                                             _tl4198742540_)))))))
                        (_loop4199442559_ _target4199142553_ '()))))
                   (___match4502545026_
                    (lambda (_e4195842633_
                             _hd4195942637_
                             _tl4196042640_
                             _e4196142643_
                             _hd4196242647_
                             _tl4196342650_
                             _e4196442653_
                             _hd4196542657_
                             _tl4196642660_
                             ___splice4497744978_
                             _target4196742663_
                             _tl4196942666_)
                      (letrec ((_loop4197042669_
                                (lambda (_hd4196842673_ _pred4197442676_)
                                  (if (gx#stx-pair? _hd4196842673_)
                                      (let ((_e4197142679_
                                             (gx#syntax-e _hd4196842673_)))
                                        (let ((_lp-tl4197342686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4197142679_)))
                                              (_lp-hd4197242683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4197142679_))))
                                          (_loop4197042669_
                                           _lp-tl4197342686_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4197242683_
                                                   _pred4197442676_)))))
                                      (let ((_pred4197542689_
                                             (reverse _pred4197442676_)))
                                        (if (gx#stx-pair? _tl4196342650_)
                                            (let ((_e4197642693_
                                                   (gx#syntax-e
                                                    _tl4196342650_)))
                                              (let ((_tl4197842700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4197642693_)))
                                                    (_hd4197742697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4197642693_))))
                                                (if (gx#stx-null?
                                                     _tl4197842700_)
                                                    (___kont4497544976_
                                                     _hd4197742697_
                                                     _pred4197542689_
                                                     _hd4195942637_)
                                                    (___match4514545146_
                                                     _e4195842633_
                                                     _hd4195942637_
                                                     _tl4196042640_
                                                     _e4196142643_
                                                     _hd4196242647_
                                                     _tl4196342650_
                                                     _e4197642693_
                                                     _hd4197742697_
                                                     _tl4197842700_))))
                                            (___match4512545126_
                                             _e4195842633_
                                             _hd4195942637_
                                             _tl4196042640_
                                             _e4196142643_
                                             _hd4196242647_
                                             _tl4196342650_)))))))
                        (_loop4197042669_ _target4196742663_ '())))))
              (if (gx#stx-pair? ___stx4497244973_)
                  (let ((_e4195842633_ (gx#syntax-e ___stx4497244973_)))
                    (let ((_tl4196042640_
                           (let () (declare (not safe)) (##cdr _e4195842633_)))
                          (_hd4195942637_
                           (let ()
                             (declare (not safe))
                             (##car _e4195842633_))))
                      (if (gx#stx-pair? _tl4196042640_)
                          (let ((_e4196142643_ (gx#syntax-e _tl4196042640_)))
                            (let ((_tl4196342650_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4196142643_)))
                                  (_hd4196242647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4196142643_))))
                              (if (gx#stx-pair? _hd4196242647_)
                                  (let ((_e4196442653_
                                         (gx#syntax-e _hd4196242647_)))
                                    (let ((_tl4196642660_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4196442653_)))
                                          (_hd4196542657_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4196442653_))))
                                      (if (gx#identifier? _hd4196542657_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45989_|
                                               _hd4196542657_)
                                              (if (gx#stx-pair/null?
                                                   _tl4196642660_)
                                                  (let ((___splice4497744978_
                                                         (gx#syntax-split-splice
                                                          _tl4196642660_
                                                          '0)))
                                                    (let ((_tl4196942666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4497744978_
                                                              '1)))
                                                          (_target4196742663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4497744978_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4196942666_)
                                                          (___match4502545026_
                                                           _e4195842633_
                                                           _hd4195942637_
                                                           _tl4196042640_
                                                           _e4196142643_
                                                           _hd4196242647_
                                                           _tl4196342650_
                                                           _e4196442653_
                                                           _hd4196542657_
                                                           _tl4196642660_
                                                           ___splice4497744978_
                                                           _target4196742663_
                                                           _tl4196942666_)
                                                          (if (gx#stx-pair?
                                                               _tl4196342650_)
                                                              (let ((_e4202942409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl4196342650_)))
                        (let ((_tl4203142416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4202942409_)))
                              (_hd4203042413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4202942409_))))
                          (if (gx#stx-null? _tl4203142416_)
                              (___kont4498544986_
                               _hd4203042413_
                               _hd4196242647_)
                              (if (gx#identifier? _hd4203042413_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45987_|
                                       _hd4203042413_)
                                      (if (gx#stx-pair? _tl4203142416_)
                                          (let ((_e4205242309_
                                                 (gx#syntax-e _tl4203142416_)))
                                            (let ((_tl4205442316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4205242309_)))
                                                  (_hd4205342313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4205242309_))))
                                              (if (gx#stx-null? _tl4205442316_)
                                                  (___kont4498944990_
                                                   _hd4205342313_
                                                   _hd4196242647_
                                                   _hd4195942637_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4195342099_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))
                                  (if (gx#stx-datum? _hd4203042413_)
                                      (let ((_e4206742236_
                                             (gx#stx-e _hd4203042413_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4206742236_ '::))
                                            (if (gx#stx-pair? _tl4203142416_)
                                                (let ((_e4206842240_
                                                       (gx#syntax-e
                                                        _tl4203142416_)))
                                                  (let ((_tl4207042247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4206842240_)))
                                                        (_hd4206942244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4206842240_))))
                                                    (if (gx#stx-null?
                                                         _tl4207042247_)
                                                        (___kont4499144992_
                                                         _hd4206942244_
                                                         _hd4196242647_
                                                         _hd4195942637_)
                                                        (if (gx#stx-pair?
                                                             _tl4207042247_)
                                                            (let ((_e4208842150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4207042247_)))
                      (let ((_tl4209042157_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4208842150_)))
                            (_hd4208942154_
                             (let ()
                               (declare (not safe))
                               (##car _e4208842150_))))
                        (if (gx#identifier? _hd4208942154_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45988_|
                                 _hd4208942154_)
                                (if (gx#stx-pair? _tl4209042157_)
                                    (let ((_e4209142160_
                                           (gx#syntax-e _tl4209042157_)))
                                      (let ((_tl4209342167_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4209142160_)))
                                            (_hd4209242164_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4209142160_))))
                                        (if (gx#stx-null? _tl4209342167_)
                                            (___kont4499344994_
                                             _hd4209242164_
                                             _hd4206942244_
                                             _hd4196242647_
                                             _hd4195942637_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))
                                (let () (declare (not safe)) (_g4195342099_)))
                            (let () (declare (not safe)) (_g4195342099_)))))
                    (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))))))
                      (if (gx#stx-null? _tl4196342650_)
                          (___kont4498744988_ _hd4196242647_ _hd4195942637_)
                          (let () (declare (not safe)) (_g4195342099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4196342650_)
                                                      (let ((_e4202942409_
                                                             (gx#syntax-e
                                                              _tl4196342650_)))
                                                        (let ((_tl4203142416_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4202942409_)))
                      (_hd4203042413_
                       (let () (declare (not safe)) (##car _e4202942409_))))
                  (if (gx#stx-null? _tl4203142416_)
                      (___kont4498544986_ _hd4203042413_ _hd4196242647_)
                      (if (gx#identifier? _hd4203042413_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45987_|
                               _hd4203042413_)
                              (if (gx#stx-pair? _tl4203142416_)
                                  (let ((_e4205242309_
                                         (gx#syntax-e _tl4203142416_)))
                                    (let ((_tl4205442316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4205242309_)))
                                          (_hd4205342313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4205242309_))))
                                      (if (gx#stx-null? _tl4205442316_)
                                          (___kont4498944990_
                                           _hd4205342313_
                                           _hd4196242647_
                                           _hd4195942637_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))
                              (let () (declare (not safe)) (_g4195342099_)))
                          (if (gx#stx-datum? _hd4203042413_)
                              (let ((_e4206742236_ (gx#stx-e _hd4203042413_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4206742236_ '::))
                                    (if (gx#stx-pair? _tl4203142416_)
                                        (let ((_e4206842240_
                                               (gx#syntax-e _tl4203142416_)))
                                          (let ((_tl4207042247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4206842240_)))
                                                (_hd4206942244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4206842240_))))
                                            (if (gx#stx-null? _tl4207042247_)
                                                (___kont4499144992_
                                                 _hd4206942244_
                                                 _hd4196242647_
                                                 _hd4195942637_)
                                                (if (gx#stx-pair?
                                                     _tl4207042247_)
                                                    (let ((_e4208842150_
                                                           (gx#syntax-e
                                                            _tl4207042247_)))
                                                      (let ((_tl4209042157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4208842150_)))
                    (_hd4208942154_
                     (let () (declare (not safe)) (##car _e4208842150_))))
                (if (gx#identifier? _hd4208942154_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45988_|
                         _hd4208942154_)
                        (if (gx#stx-pair? _tl4209042157_)
                            (let ((_e4209142160_ (gx#syntax-e _tl4209042157_)))
                              (let ((_tl4209342167_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4209142160_)))
                                    (_hd4209242164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4209142160_))))
                                (if (gx#stx-null? _tl4209342167_)
                                    (___kont4499344994_
                                     _hd4209242164_
                                     _hd4206942244_
                                     _hd4196242647_
                                     _hd4195942637_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))))
                            (let () (declare (not safe)) (_g4195342099_)))
                        (let () (declare (not safe)) (_g4195342099_)))
                    (let () (declare (not safe)) (_g4195342099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_))))
                              (let ()
                                (declare (not safe))
                                (_g4195342099_)))))))
              (if (gx#stx-null? _tl4196342650_)
                  (___kont4498744988_ _hd4196242647_ _hd4195942637_)
                  (let () (declare (not safe)) (_g4195342099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45990_|
                                                   _hd4196542657_)
                                                  (if (gx#stx-pair/null?
                                                       _tl4196642660_)
                                                      (let ((___splice4498144982_
                                                             (gx#syntax-split-splice
                                                              _tl4196642660_
                                                              '0)))
                                                        (let ((_tl4199342556_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4498144982_ '1)))
                      (_target4199142553_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4498144982_ '0))))
                  (if (gx#stx-null? _tl4199342556_)
                      (___match4505545056_
                       _e4195842633_
                       _hd4195942637_
                       _tl4196042640_
                       _e4196142643_
                       _hd4196242647_
                       _tl4196342650_
                       _e4196442653_
                       _hd4196542657_
                       _tl4196642660_
                       ___splice4498144982_
                       _target4199142553_
                       _tl4199342556_)
                      (if (gx#stx-pair? _tl4196342650_)
                          (let ((_e4202942409_ (gx#syntax-e _tl4196342650_)))
                            (let ((_tl4203142416_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4202942409_)))
                                  (_hd4203042413_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4202942409_))))
                              (if (gx#stx-null? _tl4203142416_)
                                  (___kont4498544986_
                                   _hd4203042413_
                                   _hd4196242647_)
                                  (if (gx#identifier? _hd4203042413_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45987_|
                                           _hd4203042413_)
                                          (if (gx#stx-pair? _tl4203142416_)
                                              (let ((_e4205242309_
                                                     (gx#syntax-e
                                                      _tl4203142416_)))
                                                (let ((_tl4205442316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4205242309_)))
                                                      (_hd4205342313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4205242309_))))
                                                  (if (gx#stx-null?
                                                       _tl4205442316_)
                                                      (___kont4498944990_
                                                       _hd4205342313_
                                                       _hd4196242647_
                                                       _hd4195942637_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4195342099_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))
                                      (if (gx#stx-datum? _hd4203042413_)
                                          (let ((_e4206742236_
                                                 (gx#stx-e _hd4203042413_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4206742236_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4203142416_)
                                                    (let ((_e4206842240_
                                                           (gx#syntax-e
                                                            _tl4203142416_)))
                                                      (let ((_tl4207042247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4206842240_)))
                    (_hd4206942244_
                     (let () (declare (not safe)) (##car _e4206842240_))))
                (if (gx#stx-null? _tl4207042247_)
                    (___kont4499144992_
                     _hd4206942244_
                     _hd4196242647_
                     _hd4195942637_)
                    (if (gx#stx-pair? _tl4207042247_)
                        (let ((_e4208842150_ (gx#syntax-e _tl4207042247_)))
                          (let ((_tl4209042157_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4208842150_)))
                                (_hd4208942154_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4208842150_))))
                            (if (gx#identifier? _hd4208942154_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45988_|
                                     _hd4208942154_)
                                    (if (gx#stx-pair? _tl4209042157_)
                                        (let ((_e4209142160_
                                               (gx#syntax-e _tl4209042157_)))
                                          (let ((_tl4209342167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4209142160_)))
                                                (_hd4209242164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4209142160_))))
                                            (if (gx#stx-null? _tl4209342167_)
                                                (___kont4499344994_
                                                 _hd4209242164_
                                                 _hd4206942244_
                                                 _hd4196242647_
                                                 _hd4195942637_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4195342099_)))))
                        (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))))))
                          (if (gx#stx-null? _tl4196342650_)
                              (___kont4498744988_
                               _hd4196242647_
                               _hd4195942637_)
                              (let ()
                                (declare (not safe))
                                (_g4195342099_)))))))
              (if (gx#stx-pair? _tl4196342650_)
                  (let ((_e4202942409_ (gx#syntax-e _tl4196342650_)))
                    (let ((_tl4203142416_
                           (let () (declare (not safe)) (##cdr _e4202942409_)))
                          (_hd4203042413_
                           (let ()
                             (declare (not safe))
                             (##car _e4202942409_))))
                      (if (gx#stx-null? _tl4203142416_)
                          (___kont4498544986_ _hd4203042413_ _hd4196242647_)
                          (if (gx#identifier? _hd4203042413_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45987_|
                                   _hd4203042413_)
                                  (if (gx#stx-pair? _tl4203142416_)
                                      (let ((_e4205242309_
                                             (gx#syntax-e _tl4203142416_)))
                                        (let ((_tl4205442316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4205242309_)))
                                              (_hd4205342313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4205242309_))))
                                          (if (gx#stx-null? _tl4205442316_)
                                              (___kont4498944990_
                                               _hd4205342313_
                                               _hd4196242647_
                                               _hd4195942637_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))
                              (if (gx#stx-datum? _hd4203042413_)
                                  (let ((_e4206742236_
                                         (gx#stx-e _hd4203042413_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4206742236_ '::))
                                        (if (gx#stx-pair? _tl4203142416_)
                                            (let ((_e4206842240_
                                                   (gx#syntax-e
                                                    _tl4203142416_)))
                                              (let ((_tl4207042247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4206842240_)))
                                                    (_hd4206942244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4206842240_))))
                                                (if (gx#stx-null?
                                                     _tl4207042247_)
                                                    (___kont4499144992_
                                                     _hd4206942244_
                                                     _hd4196242647_
                                                     _hd4195942637_)
                                                    (if (gx#stx-pair?
                                                         _tl4207042247_)
                                                        (let ((_e4208842150_
                                                               (gx#syntax-e
                                                                _tl4207042247_)))
                                                          (let ((_tl4209042157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4208842150_)))
                        (_hd4208942154_
                         (let () (declare (not safe)) (##car _e4208842150_))))
                    (if (gx#identifier? _hd4208942154_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45988_|
                             _hd4208942154_)
                            (if (gx#stx-pair? _tl4209042157_)
                                (let ((_e4209142160_
                                       (gx#syntax-e _tl4209042157_)))
                                  (let ((_tl4209342167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4209142160_)))
                                        (_hd4209242164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4209142160_))))
                                    (if (gx#stx-null? _tl4209342167_)
                                        (___kont4499344994_
                                         _hd4209242164_
                                         _hd4206942244_
                                         _hd4196242647_
                                         _hd4195942637_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))))
                                (let () (declare (not safe)) (_g4195342099_)))
                            (let () (declare (not safe)) (_g4195342099_)))
                        (let () (declare (not safe)) (_g4195342099_)))))
                (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))))))
                  (if (gx#stx-null? _tl4196342650_)
                      (___kont4498744988_ _hd4196242647_ _hd4195942637_)
                      (let () (declare (not safe)) (_g4195342099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g46016_|
                                                       _hd4196542657_)
                                                      (if (gx#stx-pair?
                                                           _tl4196642660_)
                                                          (let ((_e4201542473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4196642660_)))
                    (let ((_tl4201742480_
                           (let () (declare (not safe)) (##cdr _e4201542473_)))
                          (_hd4201642477_
                           (let ()
                             (declare (not safe))
                             (##car _e4201542473_))))
                      (if (gx#stx-null? _tl4201742480_)
                          (if (gx#stx-pair? _tl4196342650_)
                              (let ((_e4201842483_
                                     (gx#syntax-e _tl4196342650_)))
                                (let ((_tl4202042490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4201842483_)))
                                      (_hd4201942487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4201842483_))))
                                  (if (gx#stx-null? _tl4202042490_)
                                      (___kont4498344984_
                                       _hd4201942487_
                                       _hd4201642477_
                                       _hd4195942637_)
                                      (if (gx#identifier? _hd4201942487_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45987_|
                                               _hd4201942487_)
                                              (if (gx#stx-pair? _tl4202042490_)
                                                  (let ((_e4205242309_
                                                         (gx#syntax-e
                                                          _tl4202042490_)))
                                                    (let ((_tl4205442316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4205242309_)))
                                                          (_hd4205342313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4205242309_))))
                                                      (if (gx#stx-null?
                                                           _tl4205442316_)
                                                          (___kont4498944990_
                                                           _hd4205342313_
                                                           _hd4196242647_
                                                           _hd4195942637_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4195342099_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4195342099_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))
                                          (if (gx#stx-datum? _hd4201942487_)
                                              (let ((_e4206742236_
                                                     (gx#stx-e
                                                      _hd4201942487_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4206742236_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4202042490_)
                                                        (let ((_e4206842240_
                                                               (gx#syntax-e
                                                                _tl4202042490_)))
                                                          (let ((_tl4207042247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4206842240_)))
                        (_hd4206942244_
                         (let () (declare (not safe)) (##car _e4206842240_))))
                    (if (gx#stx-null? _tl4207042247_)
                        (___kont4499144992_
                         _hd4206942244_
                         _hd4196242647_
                         _hd4195942637_)
                        (if (gx#stx-pair? _tl4207042247_)
                            (let ((_e4208842150_ (gx#syntax-e _tl4207042247_)))
                              (let ((_tl4209042157_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208842150_)))
                                    (_hd4208942154_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208842150_))))
                                (if (gx#identifier? _hd4208942154_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45988_|
                                         _hd4208942154_)
                                        (if (gx#stx-pair? _tl4209042157_)
                                            (let ((_e4209142160_
                                                   (gx#syntax-e
                                                    _tl4209042157_)))
                                              (let ((_tl4209342167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4209142160_)))
                                                    (_hd4209242164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4209142160_))))
                                                (if (gx#stx-null?
                                                     _tl4209342167_)
                                                    (___kont4499344994_
                                                     _hd4209242164_
                                                     _hd4206942244_
                                                     _hd4196242647_
                                                     _hd4195942637_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))))
                            (let () (declare (not safe)) (_g4195342099_))))))
                (let () (declare (not safe)) (_g4195342099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))))))
                              (if (gx#stx-null? _tl4196342650_)
                                  (___kont4498744988_
                                   _hd4196242647_
                                   _hd4195942637_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_))))
                          (if (gx#stx-pair? _tl4196342650_)
                              (let ((_e4202942409_
                                     (gx#syntax-e _tl4196342650_)))
                                (let ((_tl4203142416_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4202942409_)))
                                      (_hd4203042413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4202942409_))))
                                  (if (gx#stx-null? _tl4203142416_)
                                      (___kont4498544986_
                                       _hd4203042413_
                                       _hd4196242647_)
                                      (if (gx#identifier? _hd4203042413_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45987_|
                                               _hd4203042413_)
                                              (if (gx#stx-pair? _tl4203142416_)
                                                  (let ((_e4205242309_
                                                         (gx#syntax-e
                                                          _tl4203142416_)))
                                                    (let ((_tl4205442316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4205242309_)))
                                                          (_hd4205342313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4205242309_))))
                                                      (if (gx#stx-null?
                                                           _tl4205442316_)
                                                          (___kont4498944990_
                                                           _hd4205342313_
                                                           _hd4196242647_
                                                           _hd4195942637_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4195342099_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4195342099_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))
                                          (if (gx#stx-datum? _hd4203042413_)
                                              (let ((_e4206742236_
                                                     (gx#stx-e
                                                      _hd4203042413_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4206742236_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4203142416_)
                                                        (let ((_e4206842240_
                                                               (gx#syntax-e
                                                                _tl4203142416_)))
                                                          (let ((_tl4207042247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4206842240_)))
                        (_hd4206942244_
                         (let () (declare (not safe)) (##car _e4206842240_))))
                    (if (gx#stx-null? _tl4207042247_)
                        (___kont4499144992_
                         _hd4206942244_
                         _hd4196242647_
                         _hd4195942637_)
                        (if (gx#stx-pair? _tl4207042247_)
                            (let ((_e4208842150_ (gx#syntax-e _tl4207042247_)))
                              (let ((_tl4209042157_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208842150_)))
                                    (_hd4208942154_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208842150_))))
                                (if (gx#identifier? _hd4208942154_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45988_|
                                         _hd4208942154_)
                                        (if (gx#stx-pair? _tl4209042157_)
                                            (let ((_e4209142160_
                                                   (gx#syntax-e
                                                    _tl4209042157_)))
                                              (let ((_tl4209342167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4209142160_)))
                                                    (_hd4209242164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4209142160_))))
                                                (if (gx#stx-null?
                                                     _tl4209342167_)
                                                    (___kont4499344994_
                                                     _hd4209242164_
                                                     _hd4206942244_
                                                     _hd4196242647_
                                                     _hd4195942637_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))))
                            (let () (declare (not safe)) (_g4195342099_))))))
                (let () (declare (not safe)) (_g4195342099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))))))
                              (if (gx#stx-null? _tl4196342650_)
                                  (___kont4498744988_
                                   _hd4196242647_
                                   _hd4195942637_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))))))
                  (if (gx#stx-pair? _tl4196342650_)
                      (let ((_e4202942409_ (gx#syntax-e _tl4196342650_)))
                        (let ((_tl4203142416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4202942409_)))
                              (_hd4203042413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4202942409_))))
                          (if (gx#stx-null? _tl4203142416_)
                              (___kont4498544986_
                               _hd4203042413_
                               _hd4196242647_)
                              (if (gx#identifier? _hd4203042413_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45987_|
                                       _hd4203042413_)
                                      (if (gx#stx-pair? _tl4203142416_)
                                          (let ((_e4205242309_
                                                 (gx#syntax-e _tl4203142416_)))
                                            (let ((_tl4205442316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4205242309_)))
                                                  (_hd4205342313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4205242309_))))
                                              (if (gx#stx-null? _tl4205442316_)
                                                  (___kont4498944990_
                                                   _hd4205342313_
                                                   _hd4196242647_
                                                   _hd4195942637_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4195342099_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))
                                  (if (gx#stx-datum? _hd4203042413_)
                                      (let ((_e4206742236_
                                             (gx#stx-e _hd4203042413_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4206742236_ '::))
                                            (if (gx#stx-pair? _tl4203142416_)
                                                (let ((_e4206842240_
                                                       (gx#syntax-e
                                                        _tl4203142416_)))
                                                  (let ((_tl4207042247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4206842240_)))
                                                        (_hd4206942244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4206842240_))))
                                                    (if (gx#stx-null?
                                                         _tl4207042247_)
                                                        (___kont4499144992_
                                                         _hd4206942244_
                                                         _hd4196242647_
                                                         _hd4195942637_)
                                                        (if (gx#stx-pair?
                                                             _tl4207042247_)
                                                            (let ((_e4208842150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4207042247_)))
                      (let ((_tl4209042157_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4208842150_)))
                            (_hd4208942154_
                             (let ()
                               (declare (not safe))
                               (##car _e4208842150_))))
                        (if (gx#identifier? _hd4208942154_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45988_|
                                 _hd4208942154_)
                                (if (gx#stx-pair? _tl4209042157_)
                                    (let ((_e4209142160_
                                           (gx#syntax-e _tl4209042157_)))
                                      (let ((_tl4209342167_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4209142160_)))
                                            (_hd4209242164_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4209142160_))))
                                        (if (gx#stx-null? _tl4209342167_)
                                            (___kont4499344994_
                                             _hd4209242164_
                                             _hd4206942244_
                                             _hd4196242647_
                                             _hd4195942637_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_)))
                                (let () (declare (not safe)) (_g4195342099_)))
                            (let () (declare (not safe)) (_g4195342099_)))))
                    (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))))))
                      (if (gx#stx-null? _tl4196342650_)
                          (___kont4498744988_ _hd4196242647_ _hd4195942637_)
                          (let () (declare (not safe)) (_g4195342099_)))))
              (if (gx#stx-pair? _tl4196342650_)
                  (let ((_e4202942409_ (gx#syntax-e _tl4196342650_)))
                    (let ((_tl4203142416_
                           (let () (declare (not safe)) (##cdr _e4202942409_)))
                          (_hd4203042413_
                           (let ()
                             (declare (not safe))
                             (##car _e4202942409_))))
                      (if (gx#stx-null? _tl4203142416_)
                          (___kont4498544986_ _hd4203042413_ _hd4196242647_)
                          (if (gx#identifier? _hd4203042413_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45987_|
                                   _hd4203042413_)
                                  (if (gx#stx-pair? _tl4203142416_)
                                      (let ((_e4205242309_
                                             (gx#syntax-e _tl4203142416_)))
                                        (let ((_tl4205442316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4205242309_)))
                                              (_hd4205342313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4205242309_))))
                                          (if (gx#stx-null? _tl4205442316_)
                                              (___kont4498944990_
                                               _hd4205342313_
                                               _hd4196242647_
                                               _hd4195942637_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4195342099_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4195342099_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))
                              (if (gx#stx-datum? _hd4203042413_)
                                  (let ((_e4206742236_
                                         (gx#stx-e _hd4203042413_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4206742236_ '::))
                                        (if (gx#stx-pair? _tl4203142416_)
                                            (let ((_e4206842240_
                                                   (gx#syntax-e
                                                    _tl4203142416_)))
                                              (let ((_tl4207042247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4206842240_)))
                                                    (_hd4206942244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4206842240_))))
                                                (if (gx#stx-null?
                                                     _tl4207042247_)
                                                    (___kont4499144992_
                                                     _hd4206942244_
                                                     _hd4196242647_
                                                     _hd4195942637_)
                                                    (if (gx#stx-pair?
                                                         _tl4207042247_)
                                                        (let ((_e4208842150_
                                                               (gx#syntax-e
                                                                _tl4207042247_)))
                                                          (let ((_tl4209042157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4208842150_)))
                        (_hd4208942154_
                         (let () (declare (not safe)) (##car _e4208842150_))))
                    (if (gx#identifier? _hd4208942154_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45988_|
                             _hd4208942154_)
                            (if (gx#stx-pair? _tl4209042157_)
                                (let ((_e4209142160_
                                       (gx#syntax-e _tl4209042157_)))
                                  (let ((_tl4209342167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4209142160_)))
                                        (_hd4209242164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4209142160_))))
                                    (if (gx#stx-null? _tl4209342167_)
                                        (___kont4499344994_
                                         _hd4209242164_
                                         _hd4206942244_
                                         _hd4196242647_
                                         _hd4195942637_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_)))))
                                (let () (declare (not safe)) (_g4195342099_)))
                            (let () (declare (not safe)) (_g4195342099_)))
                        (let () (declare (not safe)) (_g4195342099_)))))
                (let () (declare (not safe)) (_g4195342099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4195342099_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))))))
                  (if (gx#stx-null? _tl4196342650_)
                      (___kont4498744988_ _hd4196242647_ _hd4195942637_)
                      (let () (declare (not safe)) (_g4195342099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4196342650_)
                                              (let ((_e4202942409_
                                                     (gx#syntax-e
                                                      _tl4196342650_)))
                                                (let ((_tl4203142416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4202942409_)))
                                                      (_hd4203042413_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4202942409_))))
                                                  (if (gx#stx-null?
                                                       _tl4203142416_)
                                                      (___kont4498544986_
                                                       _hd4203042413_
                                                       _hd4196242647_)
                                                      (if (gx#identifier?
                                                           _hd4203042413_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g45987_|
                                                               _hd4203042413_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4203142416_)
                          (let ((_e4205242309_ (gx#syntax-e _tl4203142416_)))
                            (let ((_tl4205442316_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4205242309_)))
                                  (_hd4205342313_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4205242309_))))
                              (if (gx#stx-null? _tl4205442316_)
                                  (___kont4498944990_
                                   _hd4205342313_
                                   _hd4196242647_
                                   _hd4195942637_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4195342099_)))))
                          (let () (declare (not safe)) (_g4195342099_)))
                      (let () (declare (not safe)) (_g4195342099_)))
                  (if (gx#stx-datum? _hd4203042413_)
                      (let ((_e4206742236_ (gx#stx-e _hd4203042413_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e4206742236_ '::))
                            (if (gx#stx-pair? _tl4203142416_)
                                (let ((_e4206842240_
                                       (gx#syntax-e _tl4203142416_)))
                                  (let ((_tl4207042247_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4206842240_)))
                                        (_hd4206942244_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4206842240_))))
                                    (if (gx#stx-null? _tl4207042247_)
                                        (___kont4499144992_
                                         _hd4206942244_
                                         _hd4196242647_
                                         _hd4195942637_)
                                        (if (gx#stx-pair? _tl4207042247_)
                                            (let ((_e4208842150_
                                                   (gx#syntax-e
                                                    _tl4207042247_)))
                                              (let ((_tl4209042157_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4208842150_)))
                                                    (_hd4208942154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4208842150_))))
                                                (if (gx#identifier?
                                                     _hd4208942154_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g45988_|
                                                         _hd4208942154_)
                                                        (if (gx#stx-pair?
                                                             _tl4209042157_)
                                                            (let ((_e4209142160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4209042157_)))
                      (let ((_tl4209342167_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4209142160_)))
                            (_hd4209242164_
                             (let ()
                               (declare (not safe))
                               (##car _e4209142160_))))
                        (if (gx#stx-null? _tl4209342167_)
                            (___kont4499344994_
                             _hd4209242164_
                             _hd4206942244_
                             _hd4196242647_
                             _hd4195942637_)
                            (let () (declare (not safe)) (_g4195342099_)))))
                    (let () (declare (not safe)) (_g4195342099_)))
                (let () (declare (not safe)) (_g4195342099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_))))))
                                (let () (declare (not safe)) (_g4195342099_)))
                            (let () (declare (not safe)) (_g4195342099_))))
                      (let () (declare (not safe)) (_g4195342099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl4196342650_)
                                                  (___kont4498744988_
                                                   _hd4196242647_
                                                   _hd4195942637_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4195342099_)))))))
                                  (if (gx#stx-pair? _tl4196342650_)
                                      (let ((_e4202942409_
                                             (gx#syntax-e _tl4196342650_)))
                                        (let ((_tl4203142416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4202942409_)))
                                              (_hd4203042413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4202942409_))))
                                          (if (gx#stx-null? _tl4203142416_)
                                              (___kont4498544986_
                                               _hd4203042413_
                                               _hd4196242647_)
                                              (if (gx#identifier?
                                                   _hd4203042413_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45987_|
                                                       _hd4203042413_)
                                                      (if (gx#stx-pair?
                                                           _tl4203142416_)
                                                          (let ((_e4205242309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4203142416_)))
                    (let ((_tl4205442316_
                           (let () (declare (not safe)) (##cdr _e4205242309_)))
                          (_hd4205342313_
                           (let ()
                             (declare (not safe))
                             (##car _e4205242309_))))
                      (if (gx#stx-null? _tl4205442316_)
                          (___kont4498944990_
                           _hd4205342313_
                           _hd4196242647_
                           _hd4195942637_)
                          (let () (declare (not safe)) (_g4195342099_)))))
                  (let () (declare (not safe)) (_g4195342099_)))
              (let () (declare (not safe)) (_g4195342099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd4203042413_)
                                                      (let ((_e4206742236_
                                                             (gx#stx-e
                                                              _hd4203042413_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e4206742236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl4203142416_)
                        (let ((_e4206842240_ (gx#syntax-e _tl4203142416_)))
                          (let ((_tl4207042247_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4206842240_)))
                                (_hd4206942244_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4206842240_))))
                            (if (gx#stx-null? _tl4207042247_)
                                (___kont4499144992_
                                 _hd4206942244_
                                 _hd4196242647_
                                 _hd4195942637_)
                                (if (gx#stx-pair? _tl4207042247_)
                                    (let ((_e4208842150_
                                           (gx#syntax-e _tl4207042247_)))
                                      (let ((_tl4209042157_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4208842150_)))
                                            (_hd4208942154_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4208842150_))))
                                        (if (gx#identifier? _hd4208942154_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45988_|
                                                 _hd4208942154_)
                                                (if (gx#stx-pair?
                                                     _tl4209042157_)
                                                    (let ((_e4209142160_
                                                           (gx#syntax-e
                                                            _tl4209042157_)))
                                                      (let ((_tl4209342167_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4209142160_)))
                    (_hd4209242164_
                     (let () (declare (not safe)) (##car _e4209142160_))))
                (if (gx#stx-null? _tl4209342167_)
                    (___kont4499344994_
                     _hd4209242164_
                     _hd4206942244_
                     _hd4196242647_
                     _hd4195942637_)
                    (let () (declare (not safe)) (_g4195342099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4195342099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4195342099_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4195342099_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4195342099_))))))
                        (let () (declare (not safe)) (_g4195342099_)))
                    (let () (declare (not safe)) (_g4195342099_))))
              (let () (declare (not safe)) (_g4195342099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl4196342650_)
                                          (___kont4498744988_
                                           _hd4196242647_
                                           _hd4195942637_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4195342099_)))))))
                          (let () (declare (not safe)) (_g4195342099_)))))
                  (let () (declare (not safe)) (_g4195342099_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx42742_)
        (let* ((___stx4524045241_ _$stx42742_)
               (_g4274742781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4524045241_))))
          (let ((___kont4524345244_
                 (lambda (_L42885_ _L42887_ _L42888_)
                   (let ((__tmp46078 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp46017
                          (let ((__tmp46018
                                 (let ((__tmp46019
                                        (let ((__tmp46077
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp46020
                                               (let ((__tmp46021
                                                      (let ((__tmp46022
                                                             (let ((__tmp46076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp46023
                            (let ((__tmp46068
                                   (let ((__tmp46073
                                          (let ((__tmp46075
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp46074
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L42887_ '()))))
                                            (declare (not safe))
                                            (cons __tmp46075 __tmp46074)))
                                         (__tmp46069
                                          (let ((__tmp46070
                                                 (let ((__tmp46072
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp46071
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42885_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp46072
                                                         __tmp46071))))
                                            (declare (not safe))
                                            (cons __tmp46070 '()))))
                                     (declare (not safe))
                                     (cons __tmp46073 __tmp46069)))
                                  (__tmp46024
                                   (let ((__tmp46025
                                          (let ((__tmp46067
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp46026
                                                 (let ((__tmp46065
                                                        (let ((__tmp46066
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp46066
                                                                '())))
                                                       (__tmp46027
                                                        (let ((__tmp46028
                                                               (let ((__tmp46064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp46029
                              (let ((__tmp46063 (gx#datum->syntax '#f '$stx))
                                    (__tmp46030
                                     (let ((__tmp46031
                                            (let ((__tmp46042
                                                   (let ((__tmp46061
                                                          (let ((__tmp46062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp46062)))
                 (__tmp46043
                  (let ((__tmp46044
                         (let ((__tmp46060
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp46045
                                (let ((__tmp46059
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp46046
                                       (let ((__tmp46047
                                              (let ((__tmp46058
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp46048
                                                     (let ((__tmp46054
                                                            (let ((__tmp46057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp46055
                           (let ((__tmp46056 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp46056 '()))))
                      (declare (not safe))
                      (cons __tmp46057 __tmp46055)))
                   (__tmp46049
                    (let ((__tmp46050
                           (let ((__tmp46053
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp46051
                                  (let ((__tmp46052
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp46052 '()))))
                             (declare (not safe))
                             (cons __tmp46053 __tmp46051))))
                      (declare (not safe))
                      (cons __tmp46050 '()))))
               (declare (not safe))
               (cons __tmp46054 __tmp46049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp46058 __tmp46048))))
                                         (declare (not safe))
                                         (cons __tmp46047 '()))))
                                  (declare (not safe))
                                  (cons __tmp46059 __tmp46046))))
                           (declare (not safe))
                           (cons __tmp46060 __tmp46045))))
                    (declare (not safe))
                    (cons __tmp46044 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46061
                                                           __tmp46043)))
                                                  (__tmp46032
                                                   (let ((__tmp46033
                                                          (let ((__tmp46041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp46034
                         (let ((__tmp46035
                                (let ((__tmp46040
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp46036
                                       (let ((__tmp46039
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp46037
                                              (let ((__tmp46038
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp46038 '()))))
                                         (declare (not safe))
                                         (cons __tmp46039 __tmp46037))))
                                  (declare (not safe))
                                  (cons __tmp46040 __tmp46036))))
                           (declare (not safe))
                           (cons __tmp46035 '()))))
                    (declare (not safe))
                    (cons __tmp46041 __tmp46034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46033 '()))))
                                              (declare (not safe))
                                              (cons __tmp46042 __tmp46032))))
                                       (declare (not safe))
                                       (cons '() __tmp46031))))
                                (declare (not safe))
                                (cons __tmp46063 __tmp46030))))
                         (declare (not safe))
                         (cons __tmp46064 __tmp46029))))
                  (declare (not safe))
                  (cons __tmp46028 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46065
                                                         __tmp46027))))
                                            (declare (not safe))
                                            (cons __tmp46067 __tmp46026))))
                                     (declare (not safe))
                                     (cons __tmp46025 '()))))
                              (declare (not safe))
                              (cons __tmp46068 __tmp46024))))
                       (declare (not safe))
                       (cons __tmp46076 __tmp46023))))
                (declare (not safe))
                (cons __tmp46022 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp46021))))
                                          (declare (not safe))
                                          (cons __tmp46077 __tmp46020))))
                                   (declare (not safe))
                                   (cons __tmp46019 '()))))
                            (declare (not safe))
                            (cons _L42888_ __tmp46018))))
                     (declare (not safe))
                     (cons __tmp46078 __tmp46017))))
                (___kont4524545246_
                 (lambda (_L42818_ _L42820_ _L42821_)
                   (let ((__tmp46079
                          (let ((__tmp46080
                                 (let ((__tmp46081
                                        (let ((__tmp46082
                                               (let ((__tmp46093
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp46083
                                                      (let ((__tmp46091
                                                             (let ((__tmp46092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp46092 '())))
                    (__tmp46084
                     (let ((__tmp46085
                            (let ((__tmp46090
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp46086
                                   (let ((__tmp46087
                                          (let ((__tmp46088
                                                 (let ((__tmp46089
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp46089 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp46088))))
                                     (declare (not safe))
                                     (cons '#f __tmp46087))))
                              (declare (not safe))
                              (cons __tmp46090 __tmp46086))))
                       (declare (not safe))
                       (cons __tmp46085 '()))))
                (declare (not safe))
                (cons __tmp46091 __tmp46084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46093
                                                       __tmp46083))))
                                          (declare (not safe))
                                          (cons __tmp46082 '()))))
                                   (declare (not safe))
                                   (cons _L42818_ __tmp46081))))
                            (declare (not safe))
                            (cons _L42820_ __tmp46080))))
                     (declare (not safe))
                     (cons _L42821_ __tmp46079)))))
            (let ((___match4527345274_
                   (lambda (_e4275242845_
                            _hd4275342849_
                            _tl4275442852_
                            _e4275542855_
                            _hd4275642859_
                            _tl4275742862_
                            _e4275842865_
                            _hd4275942869_
                            _tl4276042872_
                            _e4276142875_
                            _hd4276242879_
                            _tl4276342882_)
                     (let ((_L42885_ _hd4276242879_)
                           (_L42887_ _hd4275942869_)
                           (_L42888_ _hd4275642859_))
                       (if (gx#identifier? _L42888_)
                           (___kont4524345244_ _L42885_ _L42887_ _L42888_)
                           (let () (declare (not safe)) (_g4274742781_)))))))
              (if (gx#stx-pair? ___stx4524045241_)
                  (let ((_e4275242845_ (gx#syntax-e ___stx4524045241_)))
                    (let ((_tl4275442852_
                           (let () (declare (not safe)) (##cdr _e4275242845_)))
                          (_hd4275342849_
                           (let ()
                             (declare (not safe))
                             (##car _e4275242845_))))
                      (if (gx#stx-pair? _tl4275442852_)
                          (let ((_e4275542855_ (gx#syntax-e _tl4275442852_)))
                            (let ((_tl4275742862_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4275542855_)))
                                  (_hd4275642859_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4275542855_))))
                              (if (gx#stx-pair? _tl4275742862_)
                                  (let ((_e4275842865_
                                         (gx#syntax-e _tl4275742862_)))
                                    (let ((_tl4276042872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4275842865_)))
                                          (_hd4275942869_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4275842865_))))
                                      (if (gx#stx-pair? _tl4276042872_)
                                          (let ((_e4276142875_
                                                 (gx#syntax-e _tl4276042872_)))
                                            (let ((_tl4276342882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4276142875_)))
                                                  (_hd4276242879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4276142875_))))
                                              (if (gx#stx-null? _tl4276342882_)
                                                  (___match4527345274_
                                                   _e4275242845_
                                                   _hd4275342849_
                                                   _tl4275442852_
                                                   _e4275542855_
                                                   _hd4275642859_
                                                   _tl4275742862_
                                                   _e4275842865_
                                                   _hd4275942869_
                                                   _tl4276042872_
                                                   _e4276142875_
                                                   _hd4276242879_
                                                   _tl4276342882_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4274742781_)))))
                                          (if (gx#stx-null? _tl4276042872_)
                                              (___kont4524545246_
                                               _hd4275942869_
                                               _hd4275642859_
                                               _hd4275342849_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4274742781_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4274742781_)))))
                          (let () (declare (not safe)) (_g4274742781_)))))
                  (let () (declare (not safe)) (_g4274742781_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx42910_)
        (let* ((_g4291442929_
                (lambda (_g4291542925_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4291542925_)))
               (_g4291342972_
                (lambda (_g4291542933_)
                  (if (gx#stx-pair? _g4291542933_)
                      (let ((_e4291842936_ (gx#syntax-e _g4291542933_)))
                        (let ((_hd4291942940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4291842936_)))
                              (_tl4292042943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4291842936_))))
                          (if (gx#stx-pair? _tl4292042943_)
                              (let ((_e4292142946_
                                     (gx#syntax-e _tl4292042943_)))
                                (let ((_hd4292242950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4292142946_)))
                                      (_tl4292342953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4292142946_))))
                                  ((lambda (_L42956_ _L42958_)
                                     (let ((__tmp46098
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp46094
                                            (let ((__tmp46095
                                                   (let ((__tmp46096
                                                          (let ((__tmp46097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp46097 _L42956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46096 '()))))
                                              (declare (not safe))
                                              (cons _L42958_ __tmp46095))))
                                       (declare (not safe))
                                       (cons __tmp46098 __tmp46094)))
                                   _tl4292342953_
                                   _hd4292242950_)))
                              (_g4291442929_ _g4291542933_))))
                      (_g4291442929_ _g4291542933_)))))
          (_g4291342972_ _$stx42910_))))))
