(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g45312_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45313_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45369_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45370_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45371_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45373_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45374_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45375_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45376_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45377_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45378_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45379_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45380_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45381_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45382_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45762_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45842_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45862_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45863_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45980_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45981_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45982_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45983_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45984_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
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
      (lambda _$args40598_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args40598_)))
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
      (lambda (_stx40595_)
        (if (gx#identifier? _stx40595_)
            (let ((__tmp45297 (gx#syntax-local-value _stx40595_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp45297))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx38901_ _match-stx38903_)
        (letrec ((_parse138905_
                  (lambda (_hd39258_)
                    (let* ((___stx4308543086_ _hd39258_)
                           (_g3928439426_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4308543086_))))
                      (let ((___kont4308843089_
                             (lambda (_L40358_ _L40360_)
                               (let* ((___stx4300543006_ _L40358_)
                                      (_g4037740410_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4300543006_))))
                                 (let ((___kont4300843009_
                                        (lambda ()
                                          (let ((__tmp45298
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L40360_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp45298))))
                                       (___kont4301043011_
                                        (lambda (_L40551_)
                                          (let ((__tmp45299
                                                 (let ((__tmp45300
                                                        (let ((__tmp45301
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse138905_ _L40551_))))
                  (declare (not safe))
                  (cons __tmp45301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40360_
                                                         __tmp45300))))
                                            (declare (not safe))
                                            (cons '?: __tmp45299))))
                                       (___kont4301243013_
                                        (lambda (_L40521_)
                                          (let ((__tmp45302
                                                 (let ((__tmp45303
                                                        (let ((__tmp45304
                                                               (let ((__tmp45305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse138905_ _L40521_))))
                         (declare (not safe))
                         (cons __tmp45305 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp45304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40360_
                                                         __tmp45303))))
                                            (declare (not safe))
                                            (cons '?: __tmp45302))))
                                       (___kont4301443015_
                                        (lambda (_L40472_ _L40474_)
                                          (let ((__tmp45306
                                                 (let ((__tmp45307
                                                        (let ((__tmp45308
                                                               (let ((__tmp45309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45310
                                     (let ((__tmp45311
                                            (let ()
                                              (declare (not safe))
                                              (_parse138905_ _L40472_))))
                                       (declare (not safe))
                                       (cons __tmp45311 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp45310))))
                         (declare (not safe))
                         (cons _L40474_ __tmp45309))))
                  (declare (not safe))
                  (cons ':: __tmp45308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40360_
                                                         __tmp45307))))
                                            (declare (not safe))
                                            (cons '?: __tmp45306))))
                                       (___kont4301643017_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error38912_ _hd39258_)))))
                                   (let ((_g4037340562_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4300543006_)
                                                (let ((_e4038240541_
                                                       (gx#syntax-e
                                                        ___stx4300543006_)))
                                                  (let ((_tl4038040548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4038240541_)))
                                                        (_hd4038140545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4038240541_))))
                                                    (if (gx#stx-null?
                                                         _tl4038040548_)
                                                        (___kont4301043011_
                                                         _hd4038140545_)
                                                        (if (gx#identifier?
                                                             _hd4038140545_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45313_|
                         _hd4038140545_)
                        (if (gx#stx-pair? _tl4038040548_)
                            (let ((_e4038940511_ (gx#syntax-e _tl4038040548_)))
                              (let ((_tl4038740518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4038940511_)))
                                    (_hd4038840515_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4038940511_))))
                                (if (gx#stx-null? _tl4038740518_)
                                    (___kont4301243013_ _hd4038840515_)
                                    (___kont4301643017_))))
                            (___kont4301643017_))
                        (___kont4301643017_))
                    (if (gx#stx-datum? _hd4038140545_)
                        (let ((_e4039540438_ (gx#stx-e _hd4038140545_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e4039540438_ '::))
                              (if (gx#stx-pair? _tl4038040548_)
                                  (let ((_e4039840442_
                                         (gx#syntax-e _tl4038040548_)))
                                    (let ((_tl4039640449_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4039840442_)))
                                          (_hd4039740446_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4039840442_))))
                                      (if (gx#stx-pair? _tl4039640449_)
                                          (let ((_e4040140452_
                                                 (gx#syntax-e _tl4039640449_)))
                                            (let ((_tl4039940459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4040140452_)))
                                                  (_hd4040040456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4040140452_))))
                                              (if (gx#identifier?
                                                   _hd4040040456_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45312_|
                                                       _hd4040040456_)
                                                      (if (gx#stx-pair?
                                                           _tl4039940459_)
                                                          (let ((_e4040440462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4039940459_)))
                    (let ((_tl4040240469_
                           (let () (declare (not safe)) (##cdr _e4040440462_)))
                          (_hd4040340466_
                           (let ()
                             (declare (not safe))
                             (##car _e4040440462_))))
                      (if (gx#stx-null? _tl4040240469_)
                          (___kont4301443015_ _hd4040340466_ _hd4039740446_)
                          (___kont4301643017_))))
                  (___kont4301643017_))
              (___kont4301643017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4301643017_))))
                                          (___kont4301643017_))))
                                  (___kont4301643017_))
                              (___kont4301643017_)))
                        (___kont4301643017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4301643017_)))))
                                     (if (gx#stx-null? ___stx4300543006_)
                                         (___kont4300843009_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4037340562_))))))))
                            (___kont4309043091_
                             (lambda (_L40263_)
                               (let* ((___stx4298742988_ _L40263_)
                                      (_g4027540286_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4298742988_))))
                                 (let ((___kont4299042991_
                                        (lambda (_L40314_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138905_ _L40314_))))
                                       (___kont4299242993_
                                        (lambda ()
                                          (let ((__tmp45314
                                                 (gx#stx-map
                                                  _parse138905_
                                                  _L40263_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp45314)))))
                                   (if (gx#stx-pair? ___stx4298742988_)
                                       (let ((_e4028040304_
                                              (gx#syntax-e ___stx4298742988_)))
                                         (let ((_tl4027840311_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4028040304_)))
                                               (_hd4027940308_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4028040304_))))
                                           (if (gx#stx-null? _tl4027840311_)
                                               (___kont4299042991_
                                                _hd4027940308_)
                                               (___kont4299242993_))))
                                       (___kont4299242993_))))))
                            (___kont4309243093_
                             (lambda (_L40178_)
                               (let* ((___stx4296942970_ _L40178_)
                                      (_g4019040201_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4296942970_))))
                                 (let ((___kont4297242973_
                                        (lambda (_L40229_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138905_ _L40229_))))
                                       (___kont4297442975_
                                        (lambda ()
                                          (let ((__tmp45315
                                                 (gx#stx-map
                                                  _parse138905_
                                                  _L40178_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp45315)))))
                                   (if (gx#stx-pair? ___stx4296942970_)
                                       (let ((_e4019540219_
                                              (gx#syntax-e ___stx4296942970_)))
                                         (let ((_tl4019340226_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4019540219_)))
                                               (_hd4019440223_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4019540219_))))
                                           (if (gx#stx-null? _tl4019340226_)
                                               (___kont4297242973_
                                                _hd4019440223_)
                                               (___kont4297442975_))))
                                       (___kont4297442975_))))))
                            (___kont4309443095_
                             (lambda (_L40148_)
                               (let ((__tmp45316
                                      (let ((__tmp45317
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L40148_))))
                                        (declare (not safe))
                                        (cons __tmp45317 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp45316))))
                            (___kont4309643097_
                             (lambda (_L40104_ _L40106_)
                               (let ((__tmp45318
                                      (let ((__tmp45321
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L40106_)))
                                            (__tmp45319
                                             (let ((__tmp45320
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138905_
                                                       _L40104_))))
                                               (declare (not safe))
                                               (cons __tmp45320 '()))))
                                        (declare (not safe))
                                        (cons __tmp45321 __tmp45319))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45318))))
                            (___kont4309843099_
                             (lambda (_L40048_ _L40050_ _L40051_)
                               (if (gx#stx-null? _L40048_)
                                   (let ((__tmp45329
                                          (let ((__tmp45332
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138905_ _L40051_)))
                                                (__tmp45330
                                                 (let ((__tmp45331
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse138905_
                                                           _L40050_))))
                                                   (declare (not safe))
                                                   (cons __tmp45331 '()))))
                                            (declare (not safe))
                                            (cons __tmp45332 __tmp45330))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45329))
                                   (let ((__tmp45322
                                          (let ((__tmp45328
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138905_ _L40051_)))
                                                (__tmp45323
                                                 (let ((__tmp45324
                                                        (let ((__tmp45325
                                                               (let ((__tmp45327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp45326
                              (let ()
                                (declare (not safe))
                                (cons _L40050_ _L40048_))))
                         (declare (not safe))
                         (cons __tmp45327 __tmp45326))))
                  (declare (not safe))
                  (_parse138905_ __tmp45325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45324 '()))))
                                            (declare (not safe))
                                            (cons __tmp45328 __tmp45323))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45322)))))
                            (___kont4310043101_
                             (lambda (_L40000_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list38907_ _L40000_))))
                            (___kont4310243103_
                             (lambda (_L39970_)
                               (let ((__tmp45333
                                      (let ((__tmp45334
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L39970_))))
                                        (declare (not safe))
                                        (cons __tmp45334 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45333))))
                            (___kont4310443105_
                             (lambda (_L39933_)
                               (let ((__tmp45335
                                      (let ((__tmp45336
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L39933_))))
                                        (declare (not safe))
                                        (cons __tmp45336 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45335))))
                            (___kont4310643107_
                             (lambda (_L39909_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138905_ _L39909_))))
                            (___kont4310843109_
                             (lambda (_L39871_)
                               (let ((__tmp45337
                                      (let ((__tmp45338
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38908_
                                                _L39871_))))
                                        (declare (not safe))
                                        (cons __tmp45338 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp45337))))
                            (___kont4311043111_
                             (lambda (_L39843_)
                               (let ((__tmp45339
                                      (let ((__tmp45340
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38908_
                                                _L39843_))))
                                        (declare (not safe))
                                        (cons __tmp45340 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45339))))
                            (___kont4311243113_
                             (lambda (_L39804_)
                               (let ((__tmp45341
                                      (let ((__tmp45342
                                             (let ((__tmp45343
                                                    (foldr (lambda (_g3981739820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3981839823_)
                     (let ()
                       (declare (not safe))
                       (cons _g3981739820_ _g3981839823_)))
                   '()
                   _L39804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector38908_
                                                __tmp45343))))
                                        (declare (not safe))
                                        (cons __tmp45342 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45341))))
                            (___kont4311643117_
                             (lambda (_L39750_ _L39752_)
                               (let ((__tmp45344
                                      (let ((__tmp45347
                                             (gx#syntax-local-value _L39752_))
                                            (__tmp45345
                                             (let ((__tmp45346
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector38908_
                                                       _L39750_))))
                                               (declare (not safe))
                                               (cons __tmp45346 '()))))
                                        (declare (not safe))
                                        (cons __tmp45347 __tmp45345))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp45344))))
                            (___kont4311843119_
                             (lambda (_L39720_ _L39722_)
                               (let ((__tmp45348
                                      (let ((__tmp45351
                                             (gx#syntax-local-value _L39722_))
                                            (__tmp45349
                                             (let ((__tmp45350
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body38910_
                                                       _L39720_))))
                                               (declare (not safe))
                                               (cons __tmp45350 '()))))
                                        (declare (not safe))
                                        (cons __tmp45351 __tmp45349))))
                                 (declare (not safe))
                                 (cons 'class: __tmp45348))))
                            (___kont4312043121_
                             (lambda (_L39680_ _L39682_)
                               (let ((__tmp45352
                                      (let ((__tmp45353
                                             (let ((__tmp45358
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp45354
                                                    (let ((__tmp45355
                                                           (let ((__tmp45357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp45356
                          (let () (declare (not safe)) (cons _L39680_ '()))))
                     (declare (not safe))
                     (cons __tmp45357 __tmp45356))))
              (declare (not safe))
              (cons _L39682_ __tmp45355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45358 __tmp45354))))
                                        (declare (not safe))
                                        (cons __tmp45353 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp45352))))
                            (___kont4312243123_
                             (lambda (_L39640_)
                               (let ((__tmp45359
                                      (let ((__tmp45360 (gx#stx-e _L39640_)))
                                        (declare (not safe))
                                        (cons __tmp45360 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45359))))
                            (___kont4312443125_
                             (lambda (_L39600_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq38911_ _L39600_))))
                            (___kont4312643127_
                             (lambda (_L39556_ _L39558_)
                               (let ((__tmp45361
                                      (let ((__tmp45362
                                             (let ((__tmp45363
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138905_
                                                       _L39556_))))
                                               (declare (not safe))
                                               (cons __tmp45363 '()))))
                                        (declare (not safe))
                                        (cons _L39558_ __tmp45362))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp45361))))
                            (___kont4312843129_
                             (lambda (_L39504_)
                               (let ((__tmp45364
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L39504_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd39258_))
                                        (let ((_$e39515_
                                               (gx#stx-source _hd39258_)))
                                          (if _$e39515_
                                              _$e39515_
                                              (gx#stx-source _stx38901_)))))))
                                 (declare (not safe))
                                 (_parse138905_ __tmp45364))))
                            (___kont4313043131_
                             (lambda (_L39478_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4313243133_
                             (lambda (_L39462_)
                               (let ((__tmp45365
                                      (let ()
                                        (declare (not safe))
                                        (cons _L39462_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp45365))))
                            (___kont4313443135_
                             (lambda (_L39444_)
                               (let ((__tmp45366
                                      (let ((__tmp45367 (gx#stx-e _L39444_)))
                                        (declare (not safe))
                                        (cons __tmp45367 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45366))))
                            (___kont4313643137_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error38912_ _hd39258_)))))
                        (let* ((_g3928239455_
                                (lambda ()
                                  (let ((_L39444_ ___stx4308543086_))
                                    (if (gx#stx-datum? _L39444_)
                                        (___kont4313443135_ _L39444_)
                                        (___kont4313643137_)))))
                               (_g3928139471_
                                (lambda ()
                                  (let ((_L39462_ ___stx4308543086_))
                                    (if (and (gx#identifier? _L39462_)
                                             (let ((__tmp45368
                                                    (gx#ellipsis? _L39462_)))
                                               (declare (not safe))
                                               (not __tmp45368)))
                                        (___kont4313243133_ _L39462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928239455_))))))
                               (_g3928039487_
                                (lambda ()
                                  (let ((_L39478_ ___stx4308543086_))
                                    (if (gx#underscore? _L39478_)
                                        (___kont4313043131_ _L39478_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928139471_))))))
                               (___match4341243413_
                                (lambda (_e3941739494_
                                         _hd3941639498_
                                         _tl3941539501_)
                                  (let ((_L39504_ _hd3941639498_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L39504_))
                                        (___kont4312843129_ _L39504_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3928039487_))))))
                               (___match4334643347_
                                (lambda (_e3938539660_
                                         _hd3938439664_
                                         _tl3938339667_
                                         _e3938839670_
                                         _hd3938739674_
                                         _tl3938639677_)
                                  (let ((_L39680_ _hd3938739674_)
                                        (_L39682_ _hd3938439664_))
                                    (if (and (gx#identifier? _L39682_)
                                             (or (gx#free-identifier=?
                                                  _L39682_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L39682_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L39682_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4312043121_ _L39680_ _L39682_)
                                        (if (gx#identifier? _hd3938439664_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45370_|
                                                 _hd3938439664_)
                                                (___kont4312243123_
                                                 _hd3938739674_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g45369_|
                                                     _hd3938439664_)
                                                    (___kont4312443125_
                                                     _hd3938739674_)
                                                    (___match4341243413_
                                                     _e3938539660_
                                                     _hd3938439664_
                                                     _tl3938339667_)))
                                            (___match4341243413_
                                             _e3938539660_
                                             _hd3938439664_
                                             _tl3938339667_))))))
                               (___match4333243333_
                                (lambda (_e3938039710_
                                         _hd3937939714_
                                         _tl3937839717_)
                                  (let ((_L39720_ _tl3937839717_)
                                        (_L39722_ _hd3937939714_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                           _L39722_))
                                        (___kont4311843119_ _L39720_ _L39722_)
                                        (if (gx#stx-pair? _tl3937839717_)
                                            (let ((_e3938839670_
                                                   (gx#syntax-e
                                                    _tl3937839717_)))
                                              (let ((_tl3938639677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3938839670_)))
                                                    (_hd3938739674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3938839670_))))
                                                (if (gx#stx-null?
                                                     _tl3938639677_)
                                                    (___match4334643347_
                                                     _e3938039710_
                                                     _hd3937939714_
                                                     _tl3937839717_
                                                     _e3938839670_
                                                     _hd3938739674_
                                                     _tl3938639677_)
                                                    (if (gx#identifier?
                                                         _hd3937939714_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g45370_|
                                                             _hd3937939714_)
                                                            (___match4341243413_
                                                             _e3938039710_
                                                             _hd3937939714_
                                                             _tl3937839717_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45369_|
                         _hd3937939714_)
                        (___match4341243413_
                         _e3938039710_
                         _hd3937939714_
                         _tl3937839717_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45371_|
                             _hd3937939714_)
                            (if (gx#stx-pair? _tl3938639677_)
                                (let ((_e3941339546_
                                       (gx#syntax-e _tl3938639677_)))
                                  (let ((_tl3941139553_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3941339546_)))
                                        (_hd3941239550_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3941339546_))))
                                    (if (gx#stx-null? _tl3941139553_)
                                        (___kont4312643127_
                                         _hd3941239550_
                                         _hd3938739674_)
                                        (___match4341243413_
                                         _e3938039710_
                                         _hd3937939714_
                                         _tl3937839717_))))
                                (___match4341243413_
                                 _e3938039710_
                                 _hd3937939714_
                                 _tl3937839717_))
                            (___match4341243413_
                             _e3938039710_
                             _hd3937939714_
                             _tl3937839717_))))
                (___match4341243413_
                 _e3938039710_
                 _hd3937939714_
                 _tl3937839717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4341243413_
                                             _e3938039710_
                                             _hd3937939714_
                                             _tl3937839717_))))))
                               (___match4332643327_
                                (lambda (_e3937539740_
                                         _hd3937439744_
                                         _tl3937339747_)
                                  (let ((_L39750_ _tl3937339747_)
                                        (_L39752_ _hd3937439744_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                                           _L39752_
                                           gerbil/core/mop$<MOP:2>#!class-type-struct?))
                                        (___kont4311643117_ _L39750_ _L39752_)
                                        (___match4333243333_
                                         _e3937539740_
                                         _hd3937439744_
                                         _tl3937339747_)))))
                               (___match4332043321_
                                (lambda (_e3936139770_
                                         ___splice4311443115_
                                         _target3936239774_
                                         _tl3936439777_)
                                  (letrec ((_loop3936539780_
                                            (lambda (_hd3936339784_
                                                     _body3936939787_)
                                              (if (gx#stx-pair? _hd3936339784_)
                                                  (let ((_e3936639790_
                                                         (gx#syntax-e
                                                          _hd3936339784_)))
                                                    (let ((_lp-tl3936839797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3936639790_)))
                                                          (_lp-hd3936739794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3936639790_))))
                                                      (let ((__tmp45372
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd3936739794_ _body3936939787_))))
                (declare (not safe))
                (_loop3936539780_ _lp-tl3936839797_ __tmp45372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body3937039800_
                                                         (reverse _body3936939787_)))
                                                    (___kont4311243113_
                                                     _body3937039800_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop3936539780_
                                       _target3936239774_
                                       '())))))
                               (_g3927239826_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4308543086_)
                                      (let ((_e3936139770_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4308543086_))))
                                        (if (gx#stx-pair/null? _e3936139770_)
                                            (let ((___splice4311443115_
                                                   (gx#syntax-split-splice
                                                    _e3936139770_
                                                    '0)))
                                              (let ((_tl3936439777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4311443115_
                                                        '1)))
                                                    (_target3936239774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4311443115_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3936439777_)
                                                    (___match4332043321_
                                                     _e3936139770_
                                                     ___splice4311443115_
                                                     _target3936239774_
                                                     _tl3936439777_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3928039487_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3928039487_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3928039487_)))))
                               (_g3926839943_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4308543086_)
                                      (let ((_e3934439929_
                                             (unbox (gx#syntax-e
                                                     ___stx4308543086_))))
                                        (___kont4310443105_ _e3934439929_))
                                      (let ()
                                        (declare (not safe))
                                        (_g3927239826_)))))
                               (___match4317443175_
                                (lambda (_e3930140168_
                                         _hd3930040172_
                                         _tl3929940175_)
                                  (let ((_L40178_ _tl3929940175_))
                                    (if (gx#stx-list? _L40178_)
                                        (___kont4309243093_ _L40178_)
                                        (___match4332643327_
                                         _e3930140168_
                                         _hd3930040172_
                                         _tl3929940175_)))))
                               (___match4316443165_
                                (lambda (_e3929740253_
                                         _hd3929640257_
                                         _tl3929540260_)
                                  (let ((_L40263_ _tl3929540260_))
                                    (if (gx#stx-list? _L40263_)
                                        (___kont4309043091_ _L40263_)
                                        (___match4332643327_
                                         _e3929740253_
                                         _hd3929640257_
                                         _tl3929540260_))))))
                          (if (gx#stx-pair? ___stx4308543086_)
                              (let ((_e3929040338_
                                     (gx#syntax-e ___stx4308543086_)))
                                (let ((_tl3928840345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3929040338_)))
                                      (_hd3928940342_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3929040338_))))
                                  (if (gx#identifier? _hd3928940342_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45382_|
                                           _hd3928940342_)
                                          (if (gx#stx-pair? _tl3928840345_)
                                              (let ((_e3929340348_
                                                     (gx#syntax-e
                                                      _tl3928840345_)))
                                                (let ((_tl3929140355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3929340348_)))
                                                      (_hd3929240352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3929340348_))))
                                                  (___kont4308843089_
                                                   _tl3929140355_
                                                   _hd3929240352_)))
                                              (___match4332643327_
                                               _e3929040338_
                                               _hd3928940342_
                                               _tl3928840345_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45381_|
                                               _hd3928940342_)
                                              (___match4316443165_
                                               _e3929040338_
                                               _hd3928940342_
                                               _tl3928840345_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45380_|
                                                   _hd3928940342_)
                                                  (___match4317443175_
                                                   _e3929040338_
                                                   _hd3928940342_
                                                   _tl3928840345_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45379_|
                                                       _hd3928940342_)
                                                      (if (gx#stx-pair?
                                                           _tl3928840345_)
                                                          (let ((_e3930840138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3928840345_)))
                    (let ((_tl3930640145_
                           (let () (declare (not safe)) (##cdr _e3930840138_)))
                          (_hd3930740142_
                           (let ()
                             (declare (not safe))
                             (##car _e3930840138_))))
                      (if (gx#stx-null? _tl3930640145_)
                          (___kont4309443095_ _hd3930740142_)
                          (___match4332643327_
                           _e3929040338_
                           _hd3928940342_
                           _tl3928840345_))))
                  (___match4332643327_
                   _e3929040338_
                   _hd3928940342_
                   _tl3928840345_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g45378_|
                   _hd3928940342_)
                  (if (gx#stx-pair? _tl3928840345_)
                      (let ((_e3931640084_ (gx#syntax-e _tl3928840345_)))
                        (let ((_tl3931440091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3931640084_)))
                              (_hd3931540088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3931640084_))))
                          (if (gx#stx-pair? _tl3931440091_)
                              (let ((_e3931940094_
                                     (gx#syntax-e _tl3931440091_)))
                                (let ((_tl3931740101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3931940094_)))
                                      (_hd3931840098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3931940094_))))
                                  (if (gx#stx-null? _tl3931740101_)
                                      (___kont4309643097_
                                       _hd3931840098_
                                       _hd3931540088_)
                                      (___match4332643327_
                                       _e3929040338_
                                       _hd3928940342_
                                       _tl3928840345_))))
                              (___match4332643327_
                               _e3929040338_
                               _hd3928940342_
                               _tl3928840345_))))
                      (___match4332643327_
                       _e3929040338_
                       _hd3928940342_
                       _tl3928840345_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g45377_|
                       _hd3928940342_)
                      (if (gx#stx-pair? _tl3928840345_)
                          (let ((_e3932840028_ (gx#syntax-e _tl3928840345_)))
                            (let ((_tl3932640035_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3932840028_)))
                                  (_hd3932740032_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3932840028_))))
                              (if (gx#stx-pair? _tl3932640035_)
                                  (let ((_e3933140038_
                                         (gx#syntax-e _tl3932640035_)))
                                    (let ((_tl3932940045_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3933140038_)))
                                          (_hd3933040042_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3933140038_))))
                                      (___kont4309843099_
                                       _tl3932940045_
                                       _hd3933040042_
                                       _hd3932740032_)))
                                  (___match4332643327_
                                   _e3929040338_
                                   _hd3928940342_
                                   _tl3928840345_))))
                          (___match4332643327_
                           _e3929040338_
                           _hd3928940342_
                           _tl3928840345_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g45376_|
                           _hd3928940342_)
                          (___kont4310043101_ _tl3928840345_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45375_|
                               _hd3928940342_)
                              (if (gx#stx-pair? _tl3928840345_)
                                  (let ((_e3934239960_
                                         (gx#syntax-e _tl3928840345_)))
                                    (let ((_tl3934039967_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3934239960_)))
                                          (_hd3934139964_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3934239960_))))
                                      (if (gx#stx-null? _tl3934039967_)
                                          (___kont4310243103_ _hd3934139964_)
                                          (___match4332643327_
                                           _e3929040338_
                                           _hd3928940342_
                                           _tl3928840345_))))
                                  (___match4332643327_
                                   _e3929040338_
                                   _hd3928940342_
                                   _tl3928840345_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45374_|
                                   _hd3928940342_)
                                  (if (gx#stx-pair? _tl3928840345_)
                                      (let ((_e3935139899_
                                             (gx#syntax-e _tl3928840345_)))
                                        (let ((_tl3934939906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3935139899_)))
                                              (_hd3935039903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3935139899_))))
                                          (if (gx#stx-null? _tl3934939906_)
                                              (___kont4310643107_
                                               _hd3935039903_)
                                              (___kont4310843109_
                                               _tl3928840345_))))
                                      (___kont4310843109_ _tl3928840345_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45373_|
                                       _hd3928940342_)
                                      (___kont4311043111_ _tl3928840345_)
                                      (___match4332643327_
                                       _e3929040338_
                                       _hd3928940342_
                                       _tl3928840345_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4332643327_
                                       _e3929040338_
                                       _hd3928940342_
                                       _tl3928840345_))))
                              (let ()
                                (declare (not safe))
                                (_g3926839943_))))))))
                 (_parse-list38907_
                  (lambda (_body39087_)
                    (let* ((___stx4341543416_ _body39087_)
                           (_g3909339122_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4341543416_))))
                      (let ((___kont4341843419_
                             (lambda (_L39240_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138905_ _L39240_))))
                            (___kont4342043421_
                             (lambda (_L39192_ _L39194_ _L39195_)
                               (let ((__tmp45383
                                      (let ((__tmp45386
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L39195_)))
                                            (__tmp45384
                                             (let ((__tmp45385
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38907_
                                                       _L39192_))))
                                               (declare (not safe))
                                               (cons __tmp45385 '()))))
                                        (declare (not safe))
                                        (cons __tmp45386 __tmp45384))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp45383))))
                            (___kont4342243423_
                             (lambda (_L39150_ _L39152_)
                               (let ((__tmp45387
                                      (let ((__tmp45390
                                             (let ()
                                               (declare (not safe))
                                               (_parse138905_ _L39152_)))
                                            (__tmp45388
                                             (let ((__tmp45389
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38907_
                                                       _L39150_))))
                                               (declare (not safe))
                                               (cons __tmp45389 '()))))
                                        (declare (not safe))
                                        (cons __tmp45390 __tmp45388))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45387))))
                            (___kont4342443425_
                             (lambda ()
                               (if (gx#stx-null? _body39087_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp45391
                                              (gx#stx-pair? _body39087_)))
                                         (declare (not safe))
                                         (not __tmp45391))
                                       (let ()
                                         (declare (not safe))
                                         (_parse138905_ _body39087_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error38912_ _body39087_)))))))
                        (let* ((___match4346443465_
                                (lambda (_e3911639140_
                                         _hd3911539144_
                                         _tl3911439147_)
                                  (let ((_L39150_ _tl3911439147_)
                                        (_L39152_ _hd3911539144_))
                                    (if (let ((__tmp45392
                                               (gx#ellipsis? _L39152_)))
                                          (declare (not safe))
                                          (not __tmp45392))
                                        (___kont4342243423_ _L39150_ _L39152_)
                                        (___kont4342443425_)))))
                               (___match4345843459_
                                (lambda (_e3910839172_
                                         _hd3910739176_
                                         _tl3910639179_
                                         _e3911139182_
                                         _hd3911039186_
                                         _tl3910939189_)
                                  (let ((_L39192_ _tl3910939189_)
                                        (_L39194_ _hd3911039186_)
                                        (_L39195_ _hd3910739176_))
                                    (if (gx#ellipsis? _L39194_)
                                        (___kont4342043421_
                                         _L39192_
                                         _L39194_
                                         _L39195_)
                                        (___match4346443465_
                                         _e3910839172_
                                         _hd3910739176_
                                         _tl3910639179_))))))
                          (if (gx#stx-pair? ___stx4341543416_)
                              (let ((_e3909839216_
                                     (gx#syntax-e ___stx4341543416_)))
                                (let ((_tl3909639223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3909839216_)))
                                      (_hd3909739220_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3909839216_))))
                                  (if (gx#stx-datum? _hd3909739220_)
                                      (let ((_e3909939226_
                                             (gx#stx-e _hd3909739220_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3909939226_ '::))
                                            (if (gx#stx-pair? _tl3909639223_)
                                                (let ((_e3910239230_
                                                       (gx#syntax-e
                                                        _tl3909639223_)))
                                                  (let ((_tl3910039237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3910239230_)))
                                                        (_hd3910139234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3910239230_))))
                                                    (if (gx#stx-null?
                                                         _tl3910039237_)
                                                        (___kont4341843419_
                                                         _hd3910139234_)
                                                        (___match4345843459_
                                                         _e3909839216_
                                                         _hd3909739220_
                                                         _tl3909639223_
                                                         _e3910239230_
                                                         _hd3910139234_
                                                         _tl3910039237_))))
                                                (___match4346443465_
                                                 _e3909839216_
                                                 _hd3909739220_
                                                 _tl3909639223_))
                                            (if (gx#stx-pair? _tl3909639223_)
                                                (let ((_e3911139182_
                                                       (gx#syntax-e
                                                        _tl3909639223_)))
                                                  (let ((_tl3910939189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3911139182_)))
                                                        (_hd3911039186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3911139182_))))
                                                    (___match4345843459_
                                                     _e3909839216_
                                                     _hd3909739220_
                                                     _tl3909639223_
                                                     _e3911139182_
                                                     _hd3911039186_
                                                     _tl3910939189_)))
                                                (___match4346443465_
                                                 _e3909839216_
                                                 _hd3909739220_
                                                 _tl3909639223_))))
                                      (if (gx#stx-pair? _tl3909639223_)
                                          (let ((_e3911139182_
                                                 (gx#syntax-e _tl3909639223_)))
                                            (let ((_tl3910939189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3911139182_)))
                                                  (_hd3911039186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3911139182_))))
                                              (___match4345843459_
                                               _e3909839216_
                                               _hd3909739220_
                                               _tl3909639223_
                                               _e3911139182_
                                               _hd3911039186_
                                               _tl3910939189_)))
                                          (___match4346443465_
                                           _e3909839216_
                                           _hd3909739220_
                                           _tl3909639223_)))))
                              (___kont4342443425_)))))))
                 (_parse-vector38908_
                  (lambda (_body39084_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?38909_ _body39084_))
                        (let ((__tmp45395
                               (let ((__tmp45396
                                      (gx#stx-map _parse138905_ _body39084_)))
                                 (declare (not safe))
                                 (cons __tmp45396 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp45395))
                        (let ((__tmp45393
                               (let ((__tmp45394
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list38907_ _body39084_))))
                                 (declare (not safe))
                                 (cons __tmp45394 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp45393)))))
                 (_simple-vector?38909_
                  (lambda (_body39021_)
                    (let* ((___stx4346743468_ _body39021_)
                           (_g3902539037_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4346743468_))))
                      (let ((___kont4347043471_
                             (lambda (_L39065_ _L39067_)
                               (if (let ((__tmp45397 (gx#ellipsis? _L39067_)))
                                     (declare (not safe))
                                     (not __tmp45397))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?38909_ _L39065_))
                                   '#f)))
                            (___kont4347243473_
                             (lambda () (gx#stx-null? _body39021_))))
                        (if (gx#stx-pair? ___stx4346743468_)
                            (let ((_e3903139055_
                                   (gx#syntax-e ___stx4346743468_)))
                              (let ((_tl3902939062_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3903139055_)))
                                    (_hd3903039059_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3903139055_))))
                                (___kont4347043471_
                                 _tl3902939062_
                                 _hd3903039059_)))
                            (___kont4347243473_))))))
                 (_parse-class-body38910_
                  (lambda (_body38930_)
                    (let _recur38933_ ((_rest38936_ _body38930_))
                      (let* ((___stx4348343484_ _rest38936_)
                             (_g3894038956_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4348343484_))))
                        (let ((___kont4348643487_
                               (lambda (_L38994_ _L38996_ _L38997_)
                                 (let ((__tmp45398
                                        (let ((__tmp45400
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse138905_ _L38996_)))
                                              (__tmp45399
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur38933_ _L38994_))))
                                          (declare (not safe))
                                          (cons __tmp45400 __tmp45399))))
                                   (declare (not safe))
                                   (cons _L38997_ __tmp45398))))
                              (___kont4348843489_
                               (lambda ()
                                 (if (gx#stx-null? _rest38936_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error38912_ _rest38936_))))))
                          (let ((___match4350243503_
                                 (lambda (_e3894738974_
                                          _hd3894638978_
                                          _tl3894538981_
                                          _e3895038984_
                                          _hd3894938988_
                                          _tl3894838991_)
                                   (let ((_L38994_ _tl3894838991_)
                                         (_L38996_ _hd3894938988_)
                                         (_L38997_ _hd3894638978_))
                                     (if (gx#stx-keyword? _L38997_)
                                         (___kont4348643487_
                                          _L38994_
                                          _L38996_
                                          _L38997_)
                                         (___kont4348843489_))))))
                            (if (gx#stx-pair? ___stx4348343484_)
                                (let ((_e3894738974_
                                       (gx#syntax-e ___stx4348343484_)))
                                  (let ((_tl3894538981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3894738974_)))
                                        (_hd3894638978_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3894738974_))))
                                    (if (gx#stx-pair? _tl3894538981_)
                                        (let ((_e3895038984_
                                               (gx#syntax-e _tl3894538981_)))
                                          (let ((_tl3894838991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3895038984_)))
                                                (_hd3894938988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3895038984_))))
                                            (___match4350243503_
                                             _e3894738974_
                                             _hd3894638978_
                                             _tl3894538981_
                                             _e3895038984_
                                             _hd3894938988_
                                             _tl3894838991_)))
                                        (___kont4348843489_))))
                                (___kont4348843489_))))))))
                 (_parse-qq38911_
                  (lambda (_hd38917_)
                    (let ((_g3891938926_
                           (lambda (_g3892038922_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3892038922_))))
                      (declare (not safe))
                      (_g3891938926_ _hd38917_))))
                 (_parse-error38912_
                  (lambda (_hd38914_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx38903_
                               (let ((__tmp45402
                                      (let ((__tmp45403
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd38914_ '()))))
                                        (declare (not safe))
                                        (cons _stx38901_ __tmp45403))))
                                 (declare (not safe))
                                 (cons _match-stx38903_ __tmp45402))
                               (let ((__tmp45401
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd38914_ '()))))
                                 (declare (not safe))
                                 (cons _stx38901_ __tmp45401)))))))
          (let () (declare (not safe)) (_parse138905_ _stx38901_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx40585_)
        (let ((_match-stx40588_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx40585_
           _match-stx40588_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g45405_
        (let ((_g45404_ (let () (declare (not safe)) (##length _g45405_))))
          (cond ((let () (declare (not safe)) (##fx= _g45404_ 1))
                 (apply (lambda (_stx40585_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx40585_)))
                        _g45405_))
                ((let () (declare (not safe)) (##fx= _g45404_ 2))
                 (apply (lambda (_stx40591_ _match-stx40593_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx40591_
                             _match-stx40593_)))
                        _g45405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g45405_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx38886_)
        (call/cc (lambda (_E38889_)
                   (with-exception-handler
                    (let ((_E!38892_ (current-exception-handler)))
                      (lambda (_e38895_)
                        (if (syntax-error? _e38895_)
                            (_E38889_ '#f)
                            (_E!38892_ _e38895_))))
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/match[1]#parse-match-pattern__0|
                         _stx38886_))
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree37621_)
        (letrec ((_loop37624_
                  (lambda (_ptree37911_ _vars37913_ _K37914_)
                    (let* ((___stx4360143602_ _ptree37911_)
                           (_g3792738037_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4360143602_))))
                      (let ((___kont4360443605_
                             (lambda (_L38667_)
                               (let* ((___stx4352143522_ _L38667_)
                                      (_g3868438718_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4352143522_))))
                                 (let ((___kont4352443525_
                                        (lambda (_L38867_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37624_
                                             _L38867_
                                             _vars37913_
                                             _K37914_))))
                                       (___kont4352643527_
                                        (lambda (_L38836_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37624_
                                             _L38836_
                                             _vars37913_
                                             _K37914_))))
                                       (___kont4352843529_
                                        (lambda (_L38784_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37624_
                                             _L38784_
                                             _vars37913_
                                             _K37914_))))
                                       (___kont4353043531_
                                        (lambda () (_K37914_ _vars37913_))))
                                   (if (gx#stx-pair? ___stx4352143522_)
                                       (let ((_e3868938857_
                                              (gx#syntax-e ___stx4352143522_)))
                                         (let ((_tl3868738864_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3868938857_)))
                                               (_hd3868838861_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3868938857_))))
                                           (if (gx#stx-null? _tl3868738864_)
                                               (___kont4352443525_
                                                _hd3868838861_)
                                               (if (gx#stx-datum?
                                                    _hd3868838861_)
                                                   (let ((_e3869438822_
                                                          (gx#stx-e
                                                           _hd3868838861_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3869438822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl3868738864_)
                     (let ((_e3869738826_ (gx#syntax-e _tl3868738864_)))
                       (let ((_tl3869538833_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3869738826_)))
                             (_hd3869638830_
                              (let ()
                                (declare (not safe))
                                (##car _e3869738826_))))
                         (if (gx#stx-null? _tl3869538833_)
                             (___kont4352643527_ _hd3869638830_)
                             (___kont4353043531_))))
                     (___kont4353043531_))
                 (if (let () (declare (not safe)) (equal? _e3869438822_ '::))
                     (if (gx#stx-pair? _tl3868738864_)
                         (let ((_e3870538750_ (gx#syntax-e _tl3868738864_)))
                           (let ((_tl3870338757_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3870538750_)))
                                 (_hd3870438754_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3870538750_))))
                             (if (gx#stx-pair? _tl3870338757_)
                                 (let ((_e3870838760_
                                        (gx#syntax-e _tl3870338757_)))
                                   (let ((_tl3870638767_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3870838760_)))
                                         (_hd3870738764_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3870838760_))))
                                     (if (gx#stx-datum? _hd3870738764_)
                                         (let ((_e3870938770_
                                                (gx#stx-e _hd3870738764_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e3870938770_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl3870638767_)
                                                   (let ((_e3871238774_
                                                          (gx#syntax-e
                                                           _tl3870638767_)))
                                                     (let ((_tl3871038781_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3871238774_)))
                                                           (_hd3871138778_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3871238774_))))
                                                       (if (gx#stx-null?
                                                            _tl3871038781_)
                                                           (___kont4352843529_
                                                            _hd3871138778_)
                                                           (___kont4353043531_))))
                                                   (___kont4353043531_))
                                               (___kont4353043531_)))
                                         (___kont4353043531_))))
                                 (___kont4353043531_))))
                         (___kont4353043531_))
                     (___kont4353043531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4353043531_)))))
                                       (___kont4353043531_))))))
                            (___kont4360643607_
                             (lambda (_L38554_ _L38556_)
                               (let* ((___stx4350543506_ _L38554_)
                                      (_g3857238584_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4350543506_))))
                                 (let ((___kont4350843509_
                                        (lambda (_L38612_ _L38614_)
                                          (let ((__tmp45406
                                                 (lambda (_g3862638628_)
                                                   (let ((__tmp45407
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L38556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop37624_
                                                      __tmp45407
                                                      _g3862638628_
                                                      _K37914_)))))
                                            (declare (not safe))
                                            (_loop37624_
                                             _L38614_
                                             _vars37913_
                                             __tmp45406))))
                                       (___kont4351043511_
                                        (lambda () (_K37914_ _vars37913_))))
                                   (if (gx#stx-pair? ___stx4350543506_)
                                       (let ((_e3857838602_
                                              (gx#syntax-e ___stx4350543506_)))
                                         (let ((_tl3857638609_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3857838602_)))
                                               (_hd3857738606_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3857838602_))))
                                           (___kont4350843509_
                                            _tl3857638609_
                                            _hd3857738606_)))
                                       (___kont4351043511_))))))
                            (___kont4360843609_
                             (lambda (_L38523_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37624_ _L38523_ _vars37913_ _K37914_))))
                            (___kont4361043611_
                             (lambda (_L38469_ _L38471_)
                               (let ((__tmp45408
                                      (lambda (_g3848638488_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37624_
                                           _L38469_
                                           _g3848638488_
                                           _K37914_)))))
                                 (declare (not safe))
                                 (_loop37624_
                                  _L38471_
                                  _vars37913_
                                  __tmp45408))))
                            (___kont4361243613_
                             (lambda (_L38405_ _L38407_)
                               (let ((__tmp45409
                                      (lambda (_g3842238424_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37624_
                                           _L38405_
                                           _g3842238424_
                                           _K37914_)))))
                                 (declare (not safe))
                                 (_loop37624_
                                  _L38407_
                                  _vars37913_
                                  __tmp45409))))
                            (___kont4361443615_
                             (lambda (_L38350_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37624_ _L38350_ _vars37913_ _K37914_))))
                            (___kont4361643617_
                             (lambda (_L38300_ _L38302_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37626_
                                  _L38300_
                                  _vars37913_
                                  _K37914_))))
                            (___kont4361843619_
                             (lambda (_L38257_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37626_
                                  _L38257_
                                  _vars37913_
                                  _K37914_))))
                            (___kont4362043621_
                             (lambda (_L38200_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list37628_
                                  _L38200_
                                  _vars37913_
                                  _K37914_))))
                            (___kont4362243623_
                             (lambda (_L38141_ _L38143_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37624_ _L38141_ _vars37913_ _K37914_))))
                            (___kont4362443625_
                             (lambda (_L38079_)
                               (if (find (lambda (_g3809438096_)
                                           (gx#bound-identifier=?
                                            _g3809438096_
                                            _L38079_))
                                         _vars37913_)
                                   (_K37914_ _vars37913_)
                                   (_K37914_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L38079_ _vars37913_))))))
                            (___kont4362643627_
                             (lambda () (_K37914_ _vars37913_))))
                        (let* ((___match4375843759_
                                (lambda (_e3798638280_
                                         _hd3798538284_
                                         _tl3798438287_
                                         _e3798938290_
                                         _hd3798838294_
                                         _tl3798738297_)
                                  (let ((_L38300_ _hd3798838294_)
                                        (_L38302_ _hd3798538284_))
                                    (if (or (gx#stx-eq? 'values: _L38302_)
                                            (gx#stx-eq? 'vector: _L38302_))
                                        (___kont4361643617_ _L38300_ _L38302_)
                                        (if (gx#stx-datum? _hd3798538284_)
                                            (let ((_e3799438233_
                                                   (gx#stx-e _hd3798538284_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3799438233_
                                                            'struct:))
                                                  (___kont4362643627_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3799438233_
                                                                'class:))
                                                      (___kont4362643627_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e3799438233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4362643627_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3799438233_ 'var:))
                      (___kont4362443625_ _hd3798838294_)
                      (___kont4362643627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4362643627_))))))
                               (___match4365243653_
                                (lambda (_e3794138544_
                                         _hd3794038548_
                                         _tl3793938551_)
                                  (let ((_L38554_ _tl3793938551_)
                                        (_L38556_ _hd3794038548_))
                                    (if (or (gx#stx-eq? 'and: _L38556_)
                                            (gx#stx-eq? 'or: _L38556_))
                                        (___kont4360643607_ _L38554_ _L38556_)
                                        (if (gx#stx-datum? _hd3794038548_)
                                            (let ((_e3794638509_
                                                   (gx#stx-e _hd3794038548_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3794638509_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl3793938551_)
                                                      (let ((_e3794938513_
                                                             (gx#syntax-e
                                                              _tl3793938551_)))
                                                        (let ((_tl3794738520_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3794938513_)))
                      (_hd3794838517_
                       (let () (declare (not safe)) (##car _e3794938513_))))
                  (if (gx#stx-null? _tl3794738520_)
                      (___kont4360843609_ _hd3794838517_)
                      (___kont4362643627_))))
              (___kont4362643627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3794638509_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl3793938551_)
                                                          (let ((_e3795838449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3793938551_)))
                    (let ((_tl3795638456_
                           (let () (declare (not safe)) (##cdr _e3795838449_)))
                          (_hd3795738453_
                           (let ()
                             (declare (not safe))
                             (##car _e3795838449_))))
                      (if (gx#stx-pair? _tl3795638456_)
                          (let ((_e3796138459_ (gx#syntax-e _tl3795638456_)))
                            (let ((_tl3795938466_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3796138459_)))
                                  (_hd3796038463_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3796138459_))))
                              (if (gx#stx-null? _tl3795938466_)
                                  (___kont4361043611_
                                   _hd3796038463_
                                   _hd3795738453_)
                                  (___kont4362643627_))))
                          (if (gx#stx-null? _tl3795638456_)
                              (___match4375843759_
                               _e3794138544_
                               _hd3794038548_
                               _tl3793938551_
                               _e3795838449_
                               _hd3795738453_
                               _tl3795638456_)
                              (___kont4362643627_)))))
                  (___kont4362643627_))
              (if (let () (declare (not safe)) (equal? _e3794638509_ 'splice:))
                  (if (gx#stx-pair? _tl3793938551_)
                      (let ((_e3797038385_ (gx#syntax-e _tl3793938551_)))
                        (let ((_tl3796838392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3797038385_)))
                              (_hd3796938389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3797038385_))))
                          (if (gx#stx-pair? _tl3796838392_)
                              (let ((_e3797338395_
                                     (gx#syntax-e _tl3796838392_)))
                                (let ((_tl3797138402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3797338395_)))
                                      (_hd3797238399_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3797338395_))))
                                  (if (gx#stx-null? _tl3797138402_)
                                      (___kont4361243613_
                                       _hd3797238399_
                                       _hd3796938389_)
                                      (___kont4362643627_))))
                              (if (gx#stx-null? _tl3796838392_)
                                  (___match4375843759_
                                   _e3794138544_
                                   _hd3794038548_
                                   _tl3793938551_
                                   _e3797038385_
                                   _hd3796938389_
                                   _tl3796838392_)
                                  (___kont4362643627_)))))
                      (___kont4362643627_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3794638509_ 'box:))
                      (if (gx#stx-pair? _tl3793938551_)
                          (let ((_e3798138340_ (gx#syntax-e _tl3793938551_)))
                            (let ((_tl3797938347_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3798138340_)))
                                  (_hd3798038344_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3798138340_))))
                              (if (gx#stx-null? _tl3797938347_)
                                  (___kont4361443615_ _hd3798038344_)
                                  (___kont4362643627_))))
                          (___kont4362643627_))
                      (if (gx#stx-pair? _tl3793938551_)
                          (let ((_e3798938290_ (gx#syntax-e _tl3793938551_)))
                            (let ((_tl3798738297_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3798938290_)))
                                  (_hd3798838294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3798938290_))))
                              (if (gx#stx-null? _tl3798738297_)
                                  (___match4375843759_
                                   _e3794138544_
                                   _hd3794038548_
                                   _tl3793938551_
                                   _e3798938290_
                                   _hd3798838294_
                                   _tl3798738297_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e3794638509_ 'struct:))
                                      (if (gx#stx-pair? _tl3798738297_)
                                          (let ((_e3800038247_
                                                 (gx#syntax-e _tl3798738297_)))
                                            (let ((_tl3799838254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3800038247_)))
                                                  (_hd3799938251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3800038247_))))
                                              (if (gx#stx-null? _tl3799838254_)
                                                  (___kont4361843619_
                                                   _hd3799938251_)
                                                  (___kont4362643627_))))
                                          (___kont4362643627_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3794638509_ 'class:))
                                          (if (gx#stx-pair? _tl3798738297_)
                                              (let ((_e3801138190_
                                                     (gx#syntax-e
                                                      _tl3798738297_)))
                                                (let ((_tl3800938197_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3801138190_)))
                                                      (_hd3801038194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3801138190_))))
                                                  (if (gx#stx-null?
                                                       _tl3800938197_)
                                                      (___kont4362043621_
                                                       _hd3801038194_)
                                                      (___kont4362643627_))))
                                              (___kont4362643627_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3794638509_ 'apply:))
                                              (if (gx#stx-pair? _tl3798738297_)
                                                  (let ((_e3802338131_
                                                         (gx#syntax-e
                                                          _tl3798738297_)))
                                                    (let ((_tl3802138138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3802338131_)))
                                                          (_hd3802238135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3802338131_))))
                                                      (if (gx#stx-null?
                                                           _tl3802138138_)
                                                          (___kont4362243623_
                                                           _hd3802238135_
                                                           _hd3798838294_)
                                                          (___kont4362643627_))))
                                                  (___kont4362643627_))
                                              (___kont4362643627_)))))))
                          (___kont4362643627_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3793938551_)
                                                (let ((_e3798938290_
                                                       (gx#syntax-e
                                                        _tl3793938551_)))
                                                  (let ((_tl3798738297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3798938290_)))
                                                        (_hd3798838294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3798938290_))))
                                                    (if (gx#stx-null?
                                                         _tl3798738297_)
                                                        (___match4375843759_
                                                         _e3794138544_
                                                         _hd3794038548_
                                                         _tl3793938551_
                                                         _e3798938290_
                                                         _hd3798838294_
                                                         _tl3798738297_)
                                                        (___kont4362643627_))))
                                                (___kont4362643627_))))))))
                          (if (gx#stx-pair? ___stx4360143602_)
                              (let ((_e3793238643_
                                     (gx#syntax-e ___stx4360143602_)))
                                (let ((_tl3793038650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3793238643_)))
                                      (_hd3793138647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3793238643_))))
                                  (if (gx#stx-datum? _hd3793138647_)
                                      (let ((_e3793338653_
                                             (gx#stx-e _hd3793138647_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3793338653_ '?:))
                                            (if (gx#stx-pair? _tl3793038650_)
                                                (let ((_e3793638657_
                                                       (gx#syntax-e
                                                        _tl3793038650_)))
                                                  (let ((_tl3793438664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3793638657_)))
                                                        (_hd3793538661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3793638657_))))
                                                    (___kont4360443605_
                                                     _tl3793438664_)))
                                                (___match4365243653_
                                                 _e3793238643_
                                                 _hd3793138647_
                                                 _tl3793038650_))
                                            (___match4365243653_
                                             _e3793238643_
                                             _hd3793138647_
                                             _tl3793038650_)))
                                      (___match4365243653_
                                       _e3793238643_
                                       _hd3793138647_
                                       _tl3793038650_))))
                              (___kont4362643627_)))))))
                 (_loop-vector37626_
                  (lambda (_body37787_ _vars37789_ _K37790_)
                    (let* ((___stx4385943860_ _body37787_)
                           (_g3779337816_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4385943860_))))
                      (let ((___kont4386243863_
                             (lambda (_L37893_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list37627_
                                  _L37893_
                                  _vars37789_
                                  _K37790_))))
                            (___kont4386443865_
                             (lambda (_L37847_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37624_
                                  _L37847_
                                  _vars37789_
                                  _K37790_)))))
                        (if (gx#stx-pair? ___stx4385943860_)
                            (let ((_e3779837869_
                                   (gx#syntax-e ___stx4385943860_)))
                              (let ((_tl3779637876_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3779837869_)))
                                    (_hd3779737873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3779837869_))))
                                (if (gx#stx-datum? _hd3779737873_)
                                    (let ((_e3779937879_
                                           (gx#stx-e _hd3779737873_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3779937879_ 'simple:))
                                          (if (gx#stx-pair? _tl3779637876_)
                                              (let ((_e3780237883_
                                                     (gx#syntax-e
                                                      _tl3779637876_)))
                                                (let ((_tl3780037890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3780237883_)))
                                                      (_hd3780137887_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3780237883_))))
                                                  (if (gx#stx-null?
                                                       _tl3780037890_)
                                                      (___kont4386243863_
                                                       _hd3780137887_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3779337816_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3779337816_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3779937879_ 'list:))
                                              (if (gx#stx-pair? _tl3779637876_)
                                                  (let ((_e3781037837_
                                                         (gx#syntax-e
                                                          _tl3779637876_)))
                                                    (let ((_tl3780837844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3781037837_)))
                                                          (_hd3780937841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3781037837_))))
                                                      (if (gx#stx-null?
                                                           _tl3780837844_)
                                                          (___kont4386443865_
                                                           _hd3780937841_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3779337816_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3779337816_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3779337816_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3779337816_)))))
                            (let () (declare (not safe)) (_g3779337816_)))))))
                 (_loop-list37627_
                  (lambda (_rest37717_ _vars37719_ _K37720_)
                    (let* ((___stx4390943910_ _rest37717_)
                           (_g3772337735_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4390943910_))))
                      (let ((___kont4391243913_
                             (lambda (_L37763_ _L37765_)
                               (let ((__tmp45410
                                      (lambda (_g3777737779_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list37627_
                                           _L37763_
                                           _g3777737779_
                                           _K37720_)))))
                                 (declare (not safe))
                                 (_loop37624_
                                  _L37765_
                                  _vars37719_
                                  __tmp45410))))
                            (___kont4391443915_
                             (lambda () (_K37720_ _vars37719_))))
                        (if (gx#stx-pair? ___stx4390943910_)
                            (let ((_e3772937753_
                                   (gx#syntax-e ___stx4390943910_)))
                              (let ((_tl3772737760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3772937753_)))
                                    (_hd3772837757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3772937753_))))
                                (___kont4391243913_
                                 _tl3772737760_
                                 _hd3772837757_)))
                            (___kont4391443915_))))))
                 (_loop-class-list37628_
                  (lambda (_rest37630_ _vars37632_ _K37633_)
                    (let* ((___stx4392543926_ _rest37630_)
                           (_g3763637651_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4392543926_))))
                      (let ((___kont4392843929_
                             (lambda (_L37689_ _L37691_)
                               (let ((__tmp45411
                                      (lambda (_g3770737709_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list37628_
                                           _L37689_
                                           _g3770737709_
                                           _K37633_)))))
                                 (declare (not safe))
                                 (_loop37624_
                                  _L37691_
                                  _vars37632_
                                  __tmp45411))))
                            (___kont4393043931_
                             (lambda () (_K37633_ _vars37632_))))
                        (if (gx#stx-pair? ___stx4392543926_)
                            (let ((_e3764237669_
                                   (gx#syntax-e ___stx4392543926_)))
                              (let ((_tl3764037676_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3764237669_)))
                                    (_hd3764137673_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3764237669_))))
                                (if (gx#stx-pair? _tl3764037676_)
                                    (let ((_e3764537679_
                                           (gx#syntax-e _tl3764037676_)))
                                      (let ((_tl3764337686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3764537679_)))
                                            (_hd3764437683_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3764537679_))))
                                        (___kont4392843929_
                                         _tl3764337686_
                                         _hd3764437683_)))
                                    (___kont4393043931_))))
                            (___kont4393043931_)))))))
          (let ()
            (declare (not safe))
            (_loop37624_ _ptree37621_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx34582_ _tgt34584_ _ptree34585_ _K34586_ _E34587_)
        (letrec ((_generate134589_
                  (lambda (_tgt35834_ _ptree35836_ _K35837_ _E35838_)
                    (let* ((_g3584035848_
                            (lambda (_g3584135844_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3584135844_)))
                           (_g3583937617_
                            (lambda (_g3584135852_)
                              ((lambda (_L35855_)
                                 (let ()
                                   (let* ((___stx4416144162_ _ptree35836_)
                                          (_g3588236024_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4416144162_))))
                                     (let ((___kont4416444165_
                                            (lambda (_L37332_ _L37334_)
                                              (let* ((___stx4407944080_
                                                      _L37332_)
                                                     (_g3735137386_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4407944080_))))
                                                (let ((___kont4408244083_
                                                       (lambda ()
                                                         (let ((__tmp45412
                                                                (let ((__tmp45415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45418 (gx#datum->syntax '#f '?))
                                     (__tmp45416
                                      (let ((__tmp45417
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35855_ '()))))
                                        (declare (not safe))
                                        (cons _L37334_ __tmp45417))))
                                 (declare (not safe))
                                 (cons __tmp45418 __tmp45416)))
                              (__tmp45413
                               (let ((__tmp45414
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35838_ '()))))
                                 (declare (not safe))
                                 (cons _K35837_ __tmp45414))))
                          (declare (not safe))
                          (cons __tmp45415 __tmp45413))))
                   (declare (not safe))
                   (cons 'if __tmp45412))))
              (___kont4408444085_
               (lambda (_L37587_)
                 (let ((__tmp45419
                        (let ((__tmp45423
                               (let ((__tmp45426 (gx#datum->syntax '#f '?))
                                     (__tmp45424
                                      (let ((__tmp45425
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35855_ '()))))
                                        (declare (not safe))
                                        (cons _L37334_ __tmp45425))))
                                 (declare (not safe))
                                 (cons __tmp45426 __tmp45424)))
                              (__tmp45420
                               (let ((__tmp45422
                                      (let ()
                                        (declare (not safe))
                                        (_generate134589_
                                         _tgt35834_
                                         _L37587_
                                         _K35837_
                                         _E35838_)))
                                     (__tmp45421
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35838_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45422 __tmp45421))))
                          (declare (not safe))
                          (cons __tmp45423 __tmp45420))))
                   (declare (not safe))
                   (cons 'if __tmp45419))))
              (___kont4408644087_
               (lambda (_L37525_)
                 (let* ((_g3753937547_
                         (lambda (_g3754037543_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3754037543_)))
                        (_g3753837566_
                         (lambda (_g3754037551_)
                           ((lambda (_L37554_)
                              (let ()
                                (let ((__tmp45427
                                       (let ((__tmp45434
                                              (let ((__tmp45435
                                                     (let ((__tmp45436
                                                            (let ((__tmp45437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45438
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35855_ '()))))
                             (declare (not safe))
                             (cons _L37334_ __tmp45438))))
                      (declare (not safe))
                      (cons __tmp45437 '()))))
               (declare (not safe))
               (cons _L37554_ __tmp45436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45435 '())))
                                             (__tmp45428
                                              (let ((__tmp45429
                                                     (let ((__tmp45430
                                                            (let ((__tmp45431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45433
                                  (let ()
                                    (declare (not safe))
                                    (_generate134589_
                                     _L37554_
                                     _L37525_
                                     _K35837_
                                     _E35838_)))
                                 (__tmp45432
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35838_ '()))))
                             (declare (not safe))
                             (cons __tmp45433 __tmp45432))))
                      (declare (not safe))
                      (cons _L37554_ __tmp45431))))
               (declare (not safe))
               (cons 'if __tmp45430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45429 '()))))
                                         (declare (not safe))
                                         (cons __tmp45434 __tmp45428))))
                                  (declare (not safe))
                                  (cons 'let __tmp45427))))
                            _g3754037551_)))
                        (__tmp45439 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3753837566_ __tmp45439))))
              (___kont4408844089_
               (lambda (_L37441_ _L37443_)
                 (let* ((_g3746337471_
                         (lambda (_g3746437467_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3746437467_)))
                        (_g3746237490_
                         (lambda (_g3746437475_)
                           ((lambda (_L37478_)
                              (let ()
                                (let ((__tmp45440
                                       (let ((__tmp45452
                                              (let ((__tmp45455
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp45453
                                                     (let ((__tmp45454
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L35855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L37334_ __tmp45454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45455 __tmp45453)))
                                             (__tmp45441
                                              (let ((__tmp45443
                                                     (let ((__tmp45444
                                                            (let ((__tmp45447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45448
                                  (let ((__tmp45449
                                         (let ((__tmp45450
                                                (let ((__tmp45451
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35855_ '()))))
                                                  (declare (not safe))
                                                  (cons _L37443_ __tmp45451))))
                                           (declare (not safe))
                                           (cons __tmp45450 '()))))
                                    (declare (not safe))
                                    (cons _L37478_ __tmp45449))))
                             (declare (not safe))
                             (cons __tmp45448 '())))
                          (__tmp45445
                           (let ((__tmp45446
                                  (let ()
                                    (declare (not safe))
                                    (_generate134589_
                                     _L37478_
                                     _L37441_
                                     _K35837_
                                     _E35838_))))
                             (declare (not safe))
                             (cons __tmp45446 '()))))
                      (declare (not safe))
                      (cons __tmp45447 __tmp45445))))
               (declare (not safe))
               (cons 'let __tmp45444)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45442
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35838_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45443 __tmp45442))))
                                         (declare (not safe))
                                         (cons __tmp45452 __tmp45441))))
                                  (declare (not safe))
                                  (cons 'if __tmp45440))))
                            _g3746437475_)))
                        (__tmp45456 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3746237490_ __tmp45456)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3734837598_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4407944080_)
                                                               (let ((_e3735637577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4407944080_)))
                         (let ((_tl3735437584_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3735637577_)))
                               (_hd3735537581_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3735637577_))))
                           (if (gx#stx-null? _tl3735437584_)
                               (___kont4408444085_ _hd3735537581_)
                               (if (gx#stx-datum? _hd3735537581_)
                                   (let ((_e3736137511_
                                          (gx#stx-e _hd3735537581_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3736137511_ '=>:))
                                         (if (gx#stx-pair? _tl3735437584_)
                                             (let ((_e3736437515_
                                                    (gx#syntax-e
                                                     _tl3735437584_)))
                                               (let ((_tl3736237522_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3736437515_)))
                                                     (_hd3736337519_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3736437515_))))
                                                 (if (gx#stx-null?
                                                      _tl3736237522_)
                                                     (___kont4408644087_
                                                      _hd3736337519_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3735137386_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3735137386_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3736137511_ '::))
                                             (if (gx#stx-pair? _tl3735437584_)
                                                 (let ((_e3737337407_
                                                        (gx#syntax-e
                                                         _tl3735437584_)))
                                                   (let ((_tl3737137414_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3737337407_)))
                                                         (_hd3737237411_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3737337407_))))
                                                     (if (gx#stx-pair?
                                                          _tl3737137414_)
                                                         (let ((_e3737637417_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3737137414_)))
                   (let ((_tl3737437424_
                          (let () (declare (not safe)) (##cdr _e3737637417_)))
                         (_hd3737537421_
                          (let () (declare (not safe)) (##car _e3737637417_))))
                     (if (gx#stx-datum? _hd3737537421_)
                         (let ((_e3737737427_ (gx#stx-e _hd3737537421_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e3737737427_ '=>:))
                               (if (gx#stx-pair? _tl3737437424_)
                                   (let ((_e3738037431_
                                          (gx#syntax-e _tl3737437424_)))
                                     (let ((_tl3737837438_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3738037431_)))
                                           (_hd3737937435_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3738037431_))))
                                       (if (gx#stx-null? _tl3737837438_)
                                           (___kont4408844089_
                                            _hd3737937435_
                                            _hd3737237411_)
                                           (let ()
                                             (declare (not safe))
                                             (_g3735137386_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3735137386_)))
                               (let () (declare (not safe)) (_g3735137386_))))
                         (let () (declare (not safe)) (_g3735137386_)))))
                 (let () (declare (not safe)) (_g3735137386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3735137386_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g3735137386_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3735137386_))))))
                       (let () (declare (not safe)) (_g3735137386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4407944080_)
                                                        (___kont4408244083_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3734837598_))))))))
                                           (___kont4416644167_
                                            (lambda (_L37229_)
                                              (let* ((___stx4406344064_
                                                      _L37229_)
                                                     (_g3724237254_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4406344064_))))
                                                (let ((___kont4406644067_
                                                       (lambda (_L37282_
                                                                _L37284_)
                                                         (let ((__tmp45457
                                                                (let ((__tmp45458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L37282_))))
                          (declare (not safe))
                          (_generate134589_
                           _tgt35834_
                           __tmp45458
                           _K35837_
                           _E35838_))))
                   (declare (not safe))
                   (_generate134589_
                    _tgt35834_
                    _L37284_
                    __tmp45457
                    _E35838_))))
              (___kont4406844069_ (lambda () _K35837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4406344064_)
                                                      (let ((_e3724837272_
                                                             (gx#syntax-e
                                                              ___stx4406344064_)))
                                                        (let ((_tl3724637279_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3724837272_)))
                      (_hd3724737276_
                       (let () (declare (not safe)) (##car _e3724837272_))))
                  (___kont4406644067_ _tl3724637279_ _hd3724737276_)))
              (___kont4406844069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4416844169_
                                            (lambda (_L37136_)
                                              (let* ((___stx4404744048_
                                                      _L37136_)
                                                     (_g3714937161_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4404744048_))))
                                                (let ((___kont4405044051_
                                                       (lambda (_L37189_
                                                                _L37191_)
                                                         (let ((__tmp45459
                                                                (let ((__tmp45460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L37189_))))
                          (declare (not safe))
                          (_generate134589_
                           _tgt35834_
                           __tmp45460
                           _K35837_
                           _E35838_))))
                   (declare (not safe))
                   (_generate134589_
                    _tgt35834_
                    _L37191_
                    _K35837_
                    __tmp45459))))
              (___kont4405244053_ (lambda () _E35838_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4404744048_)
                                                      (let ((_e3715537179_
                                                             (gx#syntax-e
                                                              ___stx4404744048_)))
                                                        (let ((_tl3715337186_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3715537179_)))
                      (_hd3715437183_
                       (let () (declare (not safe)) (##car _e3715537179_))))
                  (___kont4405044051_ _tl3715337186_ _hd3715437183_)))
              (___kont4405244053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4417044171_
                                            (lambda (_L37101_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate134589_
                                                 _tgt35834_
                                                 _L37101_
                                                 _E35838_
                                                 _K35837_))))
                                           (___kont4417244173_
                                            (lambda (_L36983_ _L36985_)
                                              (let* ((_g3700237017_
                                                      (lambda (_g3700337013_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3700337013_)))
                                                     (_g3700137066_
                                                      (lambda (_g3700337021_)
                                                        (if (gx#stx-pair?
                                                             _g3700337021_)
                                                            (let ((_e3700837024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3700337021_)))
                      (let ((_hd3700737028_
                             (let ()
                               (declare (not safe))
                               (##car _e3700837024_)))
                            (_tl3700637031_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3700837024_))))
                        (if (gx#stx-pair? _tl3700637031_)
                            (let ((_e3701137034_ (gx#syntax-e _tl3700637031_)))
                              (let ((_hd3701037038_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3701137034_)))
                                    (_tl3700937041_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3701137034_))))
                                (if (gx#stx-null? _tl3700937041_)
                                    ((lambda (_L37044_ _L37046_)
                                       (let ()
                                         (let ((__tmp45461
                                                (let ((__tmp45499
                                                       (let ((__tmp45501
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp45500
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L35855_ '()))))
                 (declare (not safe))
                 (cons __tmp45501 __tmp45500)))
              (__tmp45462
               (let ((__tmp45464
                      (let ((_hd-pat37062_ (gx#stx-e _L36985_))
                            (_tl-pat37064_ (gx#stx-e _L36983_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat37062_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat37064_ '(any:))))
                            _K35837_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat37064_ '(any:)))
                                (let ((__tmp45490
                                       (let ((__tmp45493
                                              (let ((__tmp45494
                                                     (let ((__tmp45495
                                                            (let ((__tmp45496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45498 (gx#datum->syntax '#f '##car))
                                 (__tmp45497
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35855_ '()))))
                             (declare (not safe))
                             (cons __tmp45498 __tmp45497))))
                      (declare (not safe))
                      (cons __tmp45496 '()))))
               (declare (not safe))
               (cons _L37046_ __tmp45495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45494 '())))
                                             (__tmp45491
                                              (let ((__tmp45492
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate134589_
                                                        _L37046_
                                                        _L36985_
                                                        _K35837_
                                                        _E35838_))))
                                                (declare (not safe))
                                                (cons __tmp45492 '()))))
                                         (declare (not safe))
                                         (cons __tmp45493 __tmp45491))))
                                  (declare (not safe))
                                  (cons 'let __tmp45490))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat37062_ '(any:)))
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
                                        (cons _L35855_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45489 __tmp45488))))
                          (declare (not safe))
                          (cons __tmp45487 '()))))
                   (declare (not safe))
                   (cons _L37044_ __tmp45486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45485 '())))
                                                 (__tmp45482
                                                  (let ((__tmp45483
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate134589_
                                                            _L37044_
                                                            _L36983_
                                                            _K35837_
                                                            _E35838_))))
                                                    (declare (not safe))
                                                    (cons __tmp45483 '()))))
                                             (declare (not safe))
                                             (cons __tmp45484 __tmp45482))))
                                      (declare (not safe))
                                      (cons 'let __tmp45481))
                                    (let ((__tmp45465
                                           (let ((__tmp45469
                                                  (let ((__tmp45476
                                                         (let ((__tmp45477
                                                                (let ((__tmp45478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45480 (gx#datum->syntax '#f '##car))
                                     (__tmp45479
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35855_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45480 __tmp45479))))
                          (declare (not safe))
                          (cons __tmp45478 '()))))
                   (declare (not safe))
                   (cons _L37046_ __tmp45477)))
                (__tmp45470
                 (let ((__tmp45471
                        (let ((__tmp45472
                               (let ((__tmp45473
                                      (let ((__tmp45475
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp45474
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35855_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45475 __tmp45474))))
                                 (declare (not safe))
                                 (cons __tmp45473 '()))))
                          (declare (not safe))
                          (cons _L37044_ __tmp45472))))
                   (declare (not safe))
                   (cons __tmp45471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45476
                                                          __tmp45470)))
                                                 (__tmp45466
                                                  (let ((__tmp45467
                                                         (let ((__tmp45468
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate134589_
                           _L37044_
                           _L36983_
                           _K35837_
                           _E35838_))))
                   (declare (not safe))
                   (_generate134589_ _L37046_ _L36985_ __tmp45468 _E35838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45467 '()))))
                                             (declare (not safe))
                                             (cons __tmp45469 __tmp45466))))
                                      (declare (not safe))
                                      (cons 'let __tmp45465)))))))
                     (__tmp45463
                      (let () (declare (not safe)) (cons _E35838_ '()))))
                 (declare (not safe))
                 (cons __tmp45464 __tmp45463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45499
                                                        __tmp45462))))
                                           (declare (not safe))
                                           (cons 'if __tmp45461))))
                                     _hd3701037038_
                                     _hd3700737028_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3700237017_ _g3700337021_)))))
                            (let ()
                              (declare (not safe))
                              (_g3700237017_ _g3700337021_)))))
                    (let ()
                      (declare (not safe))
                      (_g3700237017_ _g3700337021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45502
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3700137066_ __tmp45502))))
                                           (___kont4417444175_
                                            (lambda ()
                                              (let ((__tmp45503
                                                     (let ((__tmp45506
                                                            (let ((__tmp45508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp45507
                           (let () (declare (not safe)) (cons _L35855_ '()))))
                      (declare (not safe))
                      (cons __tmp45508 __tmp45507)))
                   (__tmp45504
                    (let ((__tmp45505
                           (let () (declare (not safe)) (cons _E35838_ '()))))
                      (declare (not safe))
                      (cons _K35837_ __tmp45505))))
               (declare (not safe))
               (cons __tmp45506 __tmp45504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp45503))))
                                           (___kont4417644177_
                                            (lambda (_L36899_ _L36901_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice34591_
                                                 _tgt35834_
                                                 _L36901_
                                                 _L36899_
                                                 _K35837_
                                                 _E35838_))))
                                           (___kont4417844179_
                                            (lambda (_L36813_)
                                              (let* ((_g3682736835_
                                                      (lambda (_g3682836831_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3682836831_)))
                                                     (_g3682636854_
                                                      (lambda (_g3682836839_)
                                                        ((lambda (_L36842_)
                                                           (let ()
                                                             (let ((__tmp45509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45522
                                   (let ((__tmp45524
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp45523
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35855_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45524 __tmp45523)))
                                  (__tmp45510
                                   (let ((__tmp45512
                                          (let ((__tmp45513
                                                 (let ((__tmp45516
                                                        (let ((__tmp45517
                                                               (let ((__tmp45518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45519
                                     (let ((__tmp45521
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp45520
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35855_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45521 __tmp45520))))
                                (declare (not safe))
                                (cons __tmp45519 '()))))
                         (declare (not safe))
                         (cons _L36842_ __tmp45518))))
                  (declare (not safe))
                  (cons __tmp45517 '())))
               (__tmp45514
                (let ((__tmp45515
                       (let ()
                         (declare (not safe))
                         (_generate134589_
                          _L36842_
                          _L36813_
                          _K35837_
                          _E35838_))))
                  (declare (not safe))
                  (cons __tmp45515 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45516
                                                         __tmp45514))))
                                            (declare (not safe))
                                            (cons 'let __tmp45513)))
                                         (__tmp45511
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35838_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45512 __tmp45511))))
                              (declare (not safe))
                              (cons __tmp45522 __tmp45510))))
                       (declare (not safe))
                       (cons 'if __tmp45509))))
                 _g3682836839_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45525
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3682636854_ __tmp45525))))
                                           (___kont4418044181_
                                            (lambda (_L36618_)
                                              (let* ((___stx4399743998_
                                                      _L36618_)
                                                     (_g3663336656_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4399743998_))))
                                                (let ((___kont4400044001_
                                                       (lambda (_L36733_)
                                                         (let* ((_g3674736755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3674836751_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3674836751_)))
                        (_g3674636774_
                         (lambda (_g3674836759_)
                           ((lambda (_L36762_)
                              (let ()
                                (let ((__tmp45526
                                       (let ((__tmp45530
                                              (let ((__tmp45536
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp45531
                                                     (let ((__tmp45533
                                                            (let ((__tmp45535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp45534
                           (let () (declare (not safe)) (cons _L35855_ '()))))
                      (declare (not safe))
                      (cons __tmp45535 __tmp45534)))
                   (__tmp45532
                    (let () (declare (not safe)) (cons _L36762_ '()))))
               (declare (not safe))
               (cons __tmp45533 __tmp45532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45536 __tmp45531)))
                                             (__tmp45527
                                              (let ((__tmp45529
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector34592_
                                                        _tgt35834_
                                                        _L36733_
                                                        '0
                                                        _K35837_
                                                        _E35838_)))
                                                    (__tmp45528
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35838_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45529 __tmp45528))))
                                         (declare (not safe))
                                         (cons __tmp45530 __tmp45527))))
                                  (declare (not safe))
                                  (cons 'if __tmp45526))))
                            _g3674836759_)))
                        (__tmp45537 (gx#stx-length _L36733_)))
                   (declare (not safe))
                   (_g3674636774_ __tmp45537))))
              (___kont4400244003_
               (lambda (_L36687_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector34593_
                    _tgt35834_
                    _L36687_
                    'values->list
                    _K35837_
                    _E35838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4399743998_)
                                                      (let ((_e3663836709_
                                                             (gx#syntax-e
                                                              ___stx4399743998_)))
                                                        (let ((_tl3663636716_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3663836709_)))
                      (_hd3663736713_
                       (let () (declare (not safe)) (##car _e3663836709_))))
                  (if (gx#stx-datum? _hd3663736713_)
                      (let ((_e3663936719_ (gx#stx-e _hd3663736713_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3663936719_ 'simple:))
                            (if (gx#stx-pair? _tl3663636716_)
                                (let ((_e3664236723_
                                       (gx#syntax-e _tl3663636716_)))
                                  (let ((_tl3664036730_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3664236723_)))
                                        (_hd3664136727_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3664236723_))))
                                    (if (gx#stx-null? _tl3664036730_)
                                        (___kont4400044001_ _hd3664136727_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3663336656_)))))
                                (let () (declare (not safe)) (_g3663336656_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3663936719_ 'list:))
                                (if (gx#stx-pair? _tl3663636716_)
                                    (let ((_e3665036677_
                                           (gx#syntax-e _tl3663636716_)))
                                      (let ((_tl3664836684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3665036677_)))
                                            (_hd3664936681_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3665036677_))))
                                        (if (gx#stx-null? _tl3664836684_)
                                            (___kont4400244003_ _hd3664936681_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3663336656_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3663336656_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3663336656_)))))
                      (let () (declare (not safe)) (_g3663336656_)))))
              (let () (declare (not safe)) (_g3663336656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4418244183_
                                            (lambda (_L36423_)
                                              (let* ((___stx4394743948_
                                                      _L36423_)
                                                     (_g3643836461_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4394743948_))))
                                                (let ((___kont4395043951_
                                                       (lambda (_L36538_)
                                                         (let* ((_g3655236560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3655336556_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3655336556_)))
                        (_g3655136579_
                         (lambda (_g3655336564_)
                           ((lambda (_L36567_)
                              (let ()
                                (let ((__tmp45538
                                       (let ((__tmp45553
                                              (let ((__tmp45555
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp45554
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L35855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45555 __tmp45554)))
                                             (__tmp45539
                                              (let ((__tmp45541
                                                     (let ((__tmp45542
                                                            (let ((__tmp45546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45552 (gx#datum->syntax '#f '##fx=))
                                 (__tmp45547
                                  (let ((__tmp45549
                                         (let ((__tmp45551
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp45550
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L35855_ '()))))
                                           (declare (not safe))
                                           (cons __tmp45551 __tmp45550)))
                                        (__tmp45548
                                         (let ()
                                           (declare (not safe))
                                           (cons _L36567_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45549 __tmp45548))))
                             (declare (not safe))
                             (cons __tmp45552 __tmp45547)))
                          (__tmp45543
                           (let ((__tmp45545
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector34592_
                                     _tgt35834_
                                     _L36538_
                                     '0
                                     _K35837_
                                     _E35838_)))
                                 (__tmp45544
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35838_ '()))))
                             (declare (not safe))
                             (cons __tmp45545 __tmp45544))))
                      (declare (not safe))
                      (cons __tmp45546 __tmp45543))))
               (declare (not safe))
               (cons 'if __tmp45542)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45540
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35838_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45541 __tmp45540))))
                                         (declare (not safe))
                                         (cons __tmp45553 __tmp45539))))
                                  (declare (not safe))
                                  (cons 'if __tmp45538))))
                            _g3655336564_)))
                        (__tmp45556 (gx#stx-length _L36538_)))
                   (declare (not safe))
                   (_g3655136579_ __tmp45556))))
              (___kont4395243953_
               (lambda (_L36492_)
                 (let ((__tmp45557
                        (let ((__tmp45561
                               (let ((__tmp45563
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp45562
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35855_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45563 __tmp45562)))
                              (__tmp45558
                               (let ((__tmp45560
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector34593_
                                         _tgt35834_
                                         _L36492_
                                         'vector->list
                                         _K35837_
                                         _E35838_)))
                                     (__tmp45559
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35838_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45560 __tmp45559))))
                          (declare (not safe))
                          (cons __tmp45561 __tmp45558))))
                   (declare (not safe))
                   (cons 'if __tmp45557)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4394743948_)
                                                      (let ((_e3644336514_
                                                             (gx#syntax-e
                                                              ___stx4394743948_)))
                                                        (let ((_tl3644136521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3644336514_)))
                      (_hd3644236518_
                       (let () (declare (not safe)) (##car _e3644336514_))))
                  (if (gx#stx-datum? _hd3644236518_)
                      (let ((_e3644436524_ (gx#stx-e _hd3644236518_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3644436524_ 'simple:))
                            (if (gx#stx-pair? _tl3644136521_)
                                (let ((_e3644736528_
                                       (gx#syntax-e _tl3644136521_)))
                                  (let ((_tl3644536535_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3644736528_)))
                                        (_hd3644636532_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3644736528_))))
                                    (if (gx#stx-null? _tl3644536535_)
                                        (___kont4395043951_ _hd3644636532_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3643836461_)))))
                                (let () (declare (not safe)) (_g3643836461_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3644436524_ 'list:))
                                (if (gx#stx-pair? _tl3644136521_)
                                    (let ((_e3645536482_
                                           (gx#syntax-e _tl3644136521_)))
                                      (let ((_tl3645336489_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3645536482_)))
                                            (_hd3645436486_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3645536482_))))
                                        (if (gx#stx-null? _tl3645336489_)
                                            (___kont4395243953_ _hd3645436486_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3643836461_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3643836461_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3643836461_)))))
                      (let () (declare (not safe)) (_g3643836461_)))))
              (let () (declare (not safe)) (_g3643836461_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4418444185_
                                            (lambda (_L36374_ _L36376_)
                                              (let ((__tmp45564
                                                     (gx#stx-e _L36376_)))
                                                (declare (not safe))
                                                (_generate-struct34594_
                                                 __tmp45564
                                                 _tgt35834_
                                                 _L36374_
                                                 _K35837_
                                                 _E35838_))))
                                           (___kont4418644187_
                                            (lambda (_L36315_ _L36317_)
                                              (let ((__tmp45565
                                                     (gx#stx-e _L36317_)))
                                                (declare (not safe))
                                                (_generate-class34597_
                                                 __tmp45565
                                                 _tgt35834_
                                                 _L36315_
                                                 _K35837_
                                                 _E35838_))))
                                           (___kont4418844189_
                                            (lambda (_L36218_)
                                              (let* ((_g3623236240_
                                                      (lambda (_g3623336236_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3623336236_)))
                                                     (_g3623136259_
                                                      (lambda (_g3623336244_)
                                                        ((lambda (_L36247_)
                                                           (let ()
                                                             (let ((__tmp45566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45569
                                   (let ((__tmp45570
                                          (let ((__tmp45571
                                                 (let ((__tmp45572
                                                        (let ((__tmp45574
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp45573
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L36218_ '()))))
                  (declare (not safe))
                  (cons __tmp45574 __tmp45573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45572 '()))))
                                            (declare (not safe))
                                            (cons _L35855_ __tmp45571))))
                                     (declare (not safe))
                                     (cons _L36247_ __tmp45570)))
                                  (__tmp45567
                                   (let ((__tmp45568
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35838_ '()))))
                                     (declare (not safe))
                                     (cons _K35837_ __tmp45568))))
                              (declare (not safe))
                              (cons __tmp45569 __tmp45567))))
                       (declare (not safe))
                       (cons 'if __tmp45566))))
                 _g3623336244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45575
                                                      (let ((_e36263_
                                                             (gx#stx-e
                                                              _L36218_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e36263_))
                        (keyword? _e36263_)
                        (let () (declare (not safe)) (immediate? _e36263_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e36263_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3623136259_ __tmp45575))))
                                           (___kont4419044191_
                                            (lambda (_L36138_ _L36140_)
                                              (let* ((_g3615636164_
                                                      (lambda (_g3615736160_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3615736160_)))
                                                     (_g3615536183_
                                                      (lambda (_g3615736168_)
                                                        ((lambda (_L36171_)
                                                           (let ()
                                                             (let ((__tmp45576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45579
                                   (let ((__tmp45580
                                          (let ((__tmp45581
                                                 (let ((__tmp45582
                                                        (let ((__tmp45583
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L35855_ '()))))
                  (declare (not safe))
                  (cons _L36140_ __tmp45583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45582 '()))))
                                            (declare (not safe))
                                            (cons _L36171_ __tmp45581))))
                                     (declare (not safe))
                                     (cons __tmp45580 '())))
                                  (__tmp45577
                                   (let ((__tmp45578
                                          (let ()
                                            (declare (not safe))
                                            (_generate134589_
                                             _L36171_
                                             _L36138_
                                             _K35837_
                                             _E35838_))))
                                     (declare (not safe))
                                     (cons __tmp45578 '()))))
                              (declare (not safe))
                              (cons __tmp45579 __tmp45577))))
                       (declare (not safe))
                       (cons 'let __tmp45576))))
                 _g3615736168_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45584
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3615536183_ __tmp45584))))
                                           (___kont4419244193_
                                            (lambda (_L36080_)
                                              (let ((__tmp45585
                                                     (let ((__tmp45587
                                                            (let ((__tmp45588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45589
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35855_ '()))))
                             (declare (not safe))
                             (cons _L36080_ __tmp45589))))
                      (declare (not safe))
                      (cons __tmp45588 '())))
                   (__tmp45586
                    (let () (declare (not safe)) (cons _K35837_ '()))))
               (declare (not safe))
               (cons __tmp45587 __tmp45586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp45585))))
                                           (___kont4419444195_
                                            (lambda () _K35837_)))
                                       (if (gx#stx-pair? ___stx4416144162_)
                                           (let ((_e3588837308_
                                                  (gx#syntax-e
                                                   ___stx4416144162_)))
                                             (let ((_tl3588637315_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3588837308_)))
                                                   (_hd3588737312_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3588837308_))))
                                               (if (gx#stx-datum?
                                                    _hd3588737312_)
                                                   (let ((_e3588937318_
                                                          (gx#stx-e
                                                           _hd3588737312_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3588937318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl3588637315_)
                     (let ((_e3589237322_ (gx#syntax-e _tl3588637315_)))
                       (let ((_tl3589037329_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3589237322_)))
                             (_hd3589137326_
                              (let ()
                                (declare (not safe))
                                (##car _e3589237322_))))
                         (___kont4416444165_ _tl3589037329_ _hd3589137326_)))
                     (let () (declare (not safe)) (_g3588236024_)))
                 (if (let () (declare (not safe)) (equal? _e3588937318_ 'and:))
                     (___kont4416644167_ _tl3588637315_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3588937318_ 'or:))
                         (___kont4416844169_ _tl3588637315_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3588937318_ 'not:))
                             (if (gx#stx-pair? _tl3588637315_)
                                 (let ((_e3591037091_
                                        (gx#syntax-e _tl3588637315_)))
                                   (let ((_tl3590837098_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3591037091_)))
                                         (_hd3590937095_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3591037091_))))
                                     (if (gx#stx-null? _tl3590837098_)
                                         (___kont4417044171_ _hd3590937095_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588236024_)))))
                                 (let () (declare (not safe)) (_g3588236024_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3588937318_ 'cons:))
                                 (if (gx#stx-pair? _tl3588637315_)
                                     (let ((_e3591936963_
                                            (gx#syntax-e _tl3588637315_)))
                                       (let ((_tl3591736970_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3591936963_)))
                                             (_hd3591836967_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3591936963_))))
                                         (if (gx#stx-pair? _tl3591736970_)
                                             (let ((_e3592236973_
                                                    (gx#syntax-e
                                                     _tl3591736970_)))
                                               (let ((_tl3592036980_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3592236973_)))
                                                     (_hd3592136977_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3592236973_))))
                                                 (if (gx#stx-null?
                                                      _tl3592036980_)
                                                     (___kont4417244173_
                                                      _hd3592136977_
                                                      _hd3591836967_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588236024_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3588236024_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588236024_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3588937318_ 'null:))
                                     (if (gx#stx-null? _tl3588637315_)
                                         (___kont4417444175_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588236024_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3588937318_ 'splice:))
                                         (if (gx#stx-pair? _tl3588637315_)
                                             (let ((_e3593536879_
                                                    (gx#syntax-e
                                                     _tl3588637315_)))
                                               (let ((_tl3593336886_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3593536879_)))
                                                     (_hd3593436883_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3593536879_))))
                                                 (if (gx#stx-pair?
                                                      _tl3593336886_)
                                                     (let ((_e3593836889_
                                                            (gx#syntax-e
                                                             _tl3593336886_)))
                                                       (let ((_tl3593636896_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3593836889_)))
                     (_hd3593736893_
                      (let () (declare (not safe)) (##car _e3593836889_))))
                 (if (gx#stx-null? _tl3593636896_)
                     (___kont4417644177_ _hd3593736893_ _hd3593436883_)
                     (let () (declare (not safe)) (_g3588236024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588236024_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3588236024_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3588937318_ 'box:))
                                             (if (gx#stx-pair? _tl3588637315_)
                                                 (let ((_e3594636803_
                                                        (gx#syntax-e
                                                         _tl3588637315_)))
                                                   (let ((_tl3594436810_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3594636803_)))
                                                         (_hd3594536807_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3594636803_))))
                                                     (if (gx#stx-null?
                                                          _tl3594436810_)
                                                         (___kont4417844179_
                                                          _hd3594536807_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3588236024_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3588236024_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e3588937318_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl3588637315_)
                                                     (let ((_e3595436608_
                                                            (gx#syntax-e
                                                             _tl3588637315_)))
                                                       (let ((_tl3595236615_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3595436608_)))
                     (_hd3595336612_
                      (let () (declare (not safe)) (##car _e3595436608_))))
                 (if (gx#stx-null? _tl3595236615_)
                     (___kont4418044181_ _hd3595336612_)
                     (let () (declare (not safe)) (_g3588236024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3588236024_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3588937318_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl3588637315_)
                                                         (let ((_e3596236413_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3588637315_)))
                   (let ((_tl3596036420_
                          (let () (declare (not safe)) (##cdr _e3596236413_)))
                         (_hd3596136417_
                          (let () (declare (not safe)) (##car _e3596236413_))))
                     (if (gx#stx-null? _tl3596036420_)
                         (___kont4418244183_ _hd3596136417_)
                         (let () (declare (not safe)) (_g3588236024_)))))
                 (let () (declare (not safe)) (_g3588236024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3588937318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl3588637315_)
                     (let ((_e3597136354_ (gx#syntax-e _tl3588637315_)))
                       (let ((_tl3596936361_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3597136354_)))
                             (_hd3597036358_
                              (let ()
                                (declare (not safe))
                                (##car _e3597136354_))))
                         (if (gx#stx-pair? _tl3596936361_)
                             (let ((_e3597436364_
                                    (gx#syntax-e _tl3596936361_)))
                               (let ((_tl3597236371_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3597436364_)))
                                     (_hd3597336368_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3597436364_))))
                                 (if (gx#stx-null? _tl3597236371_)
                                     (___kont4418444185_
                                      _hd3597336368_
                                      _hd3597036358_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3588236024_)))))
                             (let () (declare (not safe)) (_g3588236024_)))))
                     (let () (declare (not safe)) (_g3588236024_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e3588937318_ 'class:))
                     (if (gx#stx-pair? _tl3588637315_)
                         (let ((_e3598336295_ (gx#syntax-e _tl3588637315_)))
                           (let ((_tl3598136302_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3598336295_)))
                                 (_hd3598236299_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3598336295_))))
                             (if (gx#stx-pair? _tl3598136302_)
                                 (let ((_e3598636305_
                                        (gx#syntax-e _tl3598136302_)))
                                   (let ((_tl3598436312_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3598636305_)))
                                         (_hd3598536309_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3598636305_))))
                                     (if (gx#stx-null? _tl3598436312_)
                                         (___kont4418644187_
                                          _hd3598536309_
                                          _hd3598236299_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588236024_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3588236024_)))))
                         (let () (declare (not safe)) (_g3588236024_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3588937318_ 'datum:))
                         (if (gx#stx-pair? _tl3588637315_)
                             (let ((_e3599436208_
                                    (gx#syntax-e _tl3588637315_)))
                               (let ((_tl3599236215_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3599436208_)))
                                     (_hd3599336212_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3599436208_))))
                                 (if (gx#stx-null? _tl3599236215_)
                                     (___kont4418844189_ _hd3599336212_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3588236024_)))))
                             (let () (declare (not safe)) (_g3588236024_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3588937318_ 'apply:))
                             (if (gx#stx-pair? _tl3588637315_)
                                 (let ((_e3600336118_
                                        (gx#syntax-e _tl3588637315_)))
                                   (let ((_tl3600136125_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3600336118_)))
                                         (_hd3600236122_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3600336118_))))
                                     (if (gx#stx-pair? _tl3600136125_)
                                         (let ((_e3600636128_
                                                (gx#syntax-e _tl3600136125_)))
                                           (let ((_tl3600436135_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3600636128_)))
                                                 (_hd3600536132_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3600636128_))))
                                             (if (gx#stx-null? _tl3600436135_)
                                                 (___kont4419044191_
                                                  _hd3600536132_
                                                  _hd3600236122_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3588236024_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3588236024_)))))
                                 (let () (declare (not safe)) (_g3588236024_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3588937318_ 'var:))
                                 (if (gx#stx-pair? _tl3588637315_)
                                     (let ((_e3601436070_
                                            (gx#syntax-e _tl3588637315_)))
                                       (let ((_tl3601236077_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3601436070_)))
                                             (_hd3601336074_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3601436070_))))
                                         (if (gx#stx-null? _tl3601236077_)
                                             (___kont4419244193_
                                              _hd3601336074_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3588236024_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588236024_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3588937318_ 'any:))
                                     (if (gx#stx-null? _tl3588637315_)
                                         (___kont4419444195_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3588236024_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3588236024_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3588236024_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3588236024_)))))))
                               _g3584135852_))))
                      (declare (not safe))
                      (_g3583937617_ _tgt35834_))))
                 (_generate-splice34591_
                  (lambda (_tgt35206_ _hd35208_ _rest35209_ _K35210_ _E35211_)
                    (let* ((_g3521335230_
                            (lambda (_g3521435226_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3521435226_)))
                           (_g3521235830_
                            (lambda (_g3521435234_)
                              (if (gx#stx-pair/null? _g3521435234_)
                                  (let ((_g45590_
                                         (gx#syntax-split-splice
                                          _g3521435234_
                                          '0)))
                                    (begin
                                      (let ((_g45591_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45590_)
                                                   (##vector-length _g45590_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45591_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45591_)))
                                      (let ((_target3521635237_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45590_ 0)))
                                            (_tl3521835240_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45590_ 1))))
                                        (if (gx#stx-null? _tl3521835240_)
                                            (letrec ((_loop3521935243_
                                                      (lambda (_hd3521735247_
                                                               _var3522335250_)
                                                        (if (gx#stx-pair?
                                                             _hd3521735247_)
                                                            (let ((_e3522035253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3521735247_)))
                      (let ((_lp-hd3522135257_
                             (let ()
                               (declare (not safe))
                               (##car _e3522035253_)))
                            (_lp-tl3522235260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3522035253_))))
                        (let ((__tmp45673
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3522135257_ _var3522335250_))))
                          (declare (not safe))
                          (_loop3521935243_ _lp-tl3522235260_ __tmp45673))))
                    (let ((_var3522435263_ (reverse _var3522335250_)))
                      ((lambda (_L35267_)
                         (let ()
                           (let* ((_g3528335300_
                                   (lambda (_g3528435296_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3528435296_)))
                                  (_g3528235818_
                                   (lambda (_g3528435304_)
                                     (if (gx#stx-pair/null? _g3528435304_)
                                         (let ((_g45592_
                                                (gx#syntax-split-splice
                                                 _g3528435304_
                                                 '0)))
                                           (begin
                                             (let ((_g45593_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g45592_)
                                                          (##vector-length
                                                           _g45592_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g45593_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g45593_)))
                                             (let ((_target3528635307_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45592_
                                                       0)))
                                                   (_tl3528835310_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45592_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3528835310_)
                                                   (letrec ((_loop3528935313_
                                                             (lambda (_hd3528735317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3529335320_)
                       (if (gx#stx-pair? _hd3528735317_)
                           (let ((_e3529035323_ (gx#syntax-e _hd3528735317_)))
                             (let ((_lp-hd3529135327_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3529035323_)))
                                   (_lp-tl3529235330_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3529035323_))))
                               (let ((__tmp45671
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3529135327_
                                              _var-r3529335320_))))
                                 (declare (not safe))
                                 (_loop3528935313_
                                  _lp-tl3529235330_
                                  __tmp45671))))
                           (let ((_var-r3529435333_
                                  (reverse _var-r3529335320_)))
                             ((lambda (_L35337_)
                                (let ()
                                  (let* ((_g3535435371_
                                          (lambda (_g3535535367_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3535535367_)))
                                         (_g3535335806_
                                          (lambda (_g3535535375_)
                                            (if (gx#stx-pair/null?
                                                 _g3535535375_)
                                                (let ((_g45594_
                                                       (gx#syntax-split-splice
                                                        _g3535535375_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45594_)
                         (##vector-length _g45594_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45595_ 2)))
                  (error "Context expects 2 values" _g45595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3535735378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45594_
                                                              0)))
                                                          (_tl3535935381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45594_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3535935381_)
                                                          (letrec ((_loop3536035384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3535835388_ _init3536435391_)
                              (if (gx#stx-pair? _hd3535835388_)
                                  (let ((_e3536135394_
                                         (gx#syntax-e _hd3535835388_)))
                                    (let ((_lp-hd3536235398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3536135394_)))
                                          (_lp-tl3536335401_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3536135394_))))
                                      (let ((__tmp45668
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3536235398_
                                                     _init3536435391_))))
                                        (declare (not safe))
                                        (_loop3536035384_
                                         _lp-tl3536335401_
                                         __tmp45668))))
                                  (let ((_init3536535404_
                                         (reverse _init3536435391_)))
                                    ((lambda (_L35408_)
                                       (let ()
                                         (let* ((_g3542535433_
                                                 (lambda (_g3542635429_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3542635429_)))
                                                (_g3542435802_
                                                 (lambda (_g3542635437_)
                                                   ((lambda (_L35440_)
                                                      (let ()
                                                        (let* ((_g3545335461_
                                                                (lambda (_g3545435457_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3545435457_)))
                       (_g3545235798_
                        (lambda (_g3545435465_)
                          ((lambda (_L35468_)
                             (let ()
                               (let* ((_g3548135489_
                                       (lambda (_g3548235485_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3548235485_)))
                                      (_g3548035794_
                                       (lambda (_g3548235493_)
                                         ((lambda (_L35496_)
                                            (let ()
                                              (let* ((_g3550935517_
                                                      (lambda (_g3551035513_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3551035513_)))
                                                     (_g3550835790_
                                                      (lambda (_g3551035521_)
                                                        ((lambda (_L35524_)
                                                           (let ()
                                                             (let* ((_g3553735545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3553835541_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3553835541_)))
                            (_g3553635786_
                             (lambda (_g3553835549_)
                               ((lambda (_L35552_)
                                  (let ()
                                    (let* ((_g3556535573_
                                            (lambda (_g3556635569_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3556635569_)))
                                           (_g3556435782_
                                            (lambda (_g3556635577_)
                                              ((lambda (_L35580_)
                                                 (let ()
                                                   (let* ((_g3559335601_
                                                           (lambda (_g3559435597_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3559435597_)))
                                                          (_g3559235778_
                                                           (lambda (_g3559435605_)
                                                             ((lambda (_L35608_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3562135629_
                                  (lambda (_g3562235625_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3562235625_)))
                                 (_g3562035763_
                                  (lambda (_g3562235633_)
                                    ((lambda (_L35636_)
                                       (let ()
                                         (let* ((_g3564935657_
                                                 (lambda (_g3565035653_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3565035653_)))
                                                (_g3564835751_
                                                 (lambda (_g3565035661_)
                                                   ((lambda (_L35664_)
                                                      (let ()
                                                        (let* ((_g3567735685_
                                                                (lambda (_g3567835681_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3567835681_)))
                       (_g3567635747_
                        (lambda (_g3567835689_)
                          ((lambda (_L35692_)
                             (let ()
                               (let ()
                                 (let ((__tmp45644
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp45596
                                        (let ((__tmp45601
                                               (let ((__tmp45636
                                                      (let ((__tmp45637
                                                             (let ((__tmp45638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45643 (gx#datum->syntax '#f 'lambda))
                                  (__tmp45639
                                   (let ((__tmp45641
                                          (let ((__tmp45642
                                                 (foldr (lambda (_g3571435717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3571535720_)
                  (let ()
                    (declare (not safe))
                    (cons _g3571435717_ _g3571535720_)))
                '()
                _L35267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L35580_ __tmp45642)))
                                         (__tmp45640
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35608_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45641 __tmp45640))))
                              (declare (not safe))
                              (cons __tmp45643 __tmp45639))))
                       (declare (not safe))
                       (cons __tmp45638 '()))))
                (declare (not safe))
                (cons _L35468_ __tmp45637)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45602
                                                      (let ((__tmp45627
                                                             (let ((__tmp45628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45629
                                   (let ((__tmp45635
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp45630
                                          (let ((__tmp45632
                                                 (let ((__tmp45633
                                                        (let ((__tmp45634
                                                               (foldr (lambda (_g3571235723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3571335726_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3571235723_ _g3571335726_)))
                              '()
                              _L35337_)))
                  (declare (not safe))
                  (cons _L35580_ __tmp45634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35552_ __tmp45633)))
                                                (__tmp45631
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L35692_ '()))))
                                            (declare (not safe))
                                            (cons __tmp45632 __tmp45631))))
                                     (declare (not safe))
                                     (cons __tmp45635 __tmp45630))))
                              (declare (not safe))
                              (cons __tmp45629 '()))))
                       (declare (not safe))
                       (cons _L35524_ __tmp45628)))
                    (__tmp45603
                     (let ((__tmp45604
                            (let ((__tmp45605
                                   (let ((__tmp45606
                                          (let ((__tmp45626
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45607
                                                 (let ((__tmp45624
                                                        (let ((__tmp45625
                                                               (foldr (lambda (_g3571035729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3571135732_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3571035729_ _g3571135732_)))
                              '()
                              _L35337_)))
                  (declare (not safe))
                  (cons _L35580_ __tmp45625)))
               (__tmp45608
                (let ((__tmp45609
                       (let ((__tmp45623 (gx#datum->syntax '#f 'if))
                             (__tmp45610
                              (let ((__tmp45620
                                     (let ((__tmp45622
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp45621
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35580_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45622 __tmp45621)))
                                    (__tmp45611
                                     (let ((__tmp45613
                                            (let ((__tmp45614
                                                   (let ((__tmp45617
                                                          (let ((__tmp45619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp45618
                         (let () (declare (not safe)) (cons _L35580_ '()))))
                    (declare (not safe))
                    (cons __tmp45619 __tmp45618)))
                 (__tmp45615
                  (let ((__tmp45616
                         (foldr (lambda (_g3570835735_ _g3570935738_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3570835735_ _g3570935738_)))
                                '()
                                _L35337_)))
                    (declare (not safe))
                    (cons _L35580_ __tmp45616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45617
                                                           __tmp45615))))
                                              (declare (not safe))
                                              (cons _L35524_ __tmp45614)))
                                           (__tmp45612
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35664_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45613 __tmp45612))))
                                (declare (not safe))
                                (cons __tmp45620 __tmp45611))))
                         (declare (not safe))
                         (cons __tmp45623 __tmp45610))))
                  (declare (not safe))
                  (cons __tmp45609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45624
                                                         __tmp45608))))
                                            (declare (not safe))
                                            (cons __tmp45626 __tmp45607))))
                                     (declare (not safe))
                                     (cons __tmp45606 '()))))
                              (declare (not safe))
                              (cons _L35496_ __tmp45605))))
                       (declare (not safe))
                       (cons __tmp45604 '()))))
                (declare (not safe))
                (cons __tmp45627 __tmp45603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45636 __tmp45602)))
                                              (__tmp45597
                                               (let ((__tmp45598
                                                      (let ((__tmp45599
                                                             (let ((__tmp45600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g3570635741_ _g3570735744_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g3570635741_ _g3570735744_)))
                                   '()
                                   _L35408_)))
                       (declare (not safe))
                       (cons _L35440_ __tmp45600))))
                (declare (not safe))
                (cons _L35496_ __tmp45599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45598 '()))))
                                          (declare (not safe))
                                          (cons __tmp45601 __tmp45597))))
                                   (declare (not safe))
                                   (cons __tmp45644 __tmp45596)))))
                           _g3567835689_)))
                       (__tmp45645
                        (let ()
                          (declare (not safe))
                          (_generate134589_
                           _L35552_
                           _hd35208_
                           _L35636_
                           _L35664_))))
                  (declare (not safe))
                  (_g3567635747_ __tmp45645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3565035661_)))
                                                (__tmp45646
                                                 (let ((__tmp45647
                                                        (let ((__tmp45648
                                                               (foldr (lambda (_g3575435757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3575535760_)
                                (let ((__tmp45649
                                       (let ((__tmp45651
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp45650
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3575435757_ '()))))
                                         (declare (not safe))
                                         (cons __tmp45651 __tmp45650))))
                                  (declare (not safe))
                                  (cons __tmp45649 _g3575535760_)))
                              '()
                              _L35337_)))
                  (declare (not safe))
                  (cons _L35580_ __tmp45648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35468_
                                                         __tmp45647))))
                                           (declare (not safe))
                                           (_g3564835751_ __tmp45646))))
                                     _g3562235633_)))
                                 (__tmp45652
                                  (let ((__tmp45653
                                         (let ((__tmp45659
                                                (let ((__tmp45661
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp45660
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35580_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp45661
                                                        __tmp45660)))
                                               (__tmp45654
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L35337_
                                                   _L35267_)
                                                  (foldr (lambda (_g3576635770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3576735773_
                          _g3576835775_)
                   (let ((__tmp45655
                          (let ((__tmp45658 (gx#datum->syntax '#f 'cons))
                                (__tmp45656
                                 (let ((__tmp45657
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3576635770_ '()))))
                                   (declare (not safe))
                                   (cons _g3576735773_ __tmp45657))))
                            (declare (not safe))
                            (cons __tmp45658 __tmp45656))))
                     (declare (not safe))
                     (cons __tmp45655 _g3576835775_)))
                 '()
                 _L35337_
                 _L35267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp45659 __tmp45654))))
                                    (declare (not safe))
                                    (cons _L35496_ __tmp45653))))
                            (declare (not safe))
                            (_g3562035763_ __tmp45652))))
                      _g3559435605_)))
                  (__tmp45662
                   (let ()
                     (declare (not safe))
                     (_generate134589_
                      _L35580_
                      _rest35209_
                      _K35210_
                      _E35211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3559235778_
                                                      __tmp45662))))
                                               _g3556635577_)))
                                           (__tmp45663 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3556435782_ __tmp45663))))
                                _g3553835549_)))
                            (__tmp45664 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3553635786_ __tmp45664))))
                 _g3551035521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45665
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3550835790_ __tmp45665))))
                                          _g3548235493_)))
                                      (__tmp45666 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3548035794_ __tmp45666))))
                           _g3545435465_)))
                       (__tmp45667 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3545235798_ __tmp45667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3542635437_))))
                                           (declare (not safe))
                                           (_g3542435802_ _tgt35206_))))
                                     _init3536535404_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3536035384_ _target3535735378_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3535435371_ _g3535535375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3535435371_
                                                   _g3535535375_)))))
                                         (__tmp45669
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g3580935812_
                                                            _g3581035815_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3580935812_
                                                             _g3581035815_)))
                                                   '()
                                                   _L35267_))
                                           (let ((__tmp45670
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp45670 '())))))
                                    (declare (not safe))
                                    (_g3535335806_ __tmp45669))))
                              _var-r3529435333_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3528935313_
                                                        _target3528635307_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3528335300_
                                                      _g3528435304_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3528335300_ _g3528435304_)))))
                                  (__tmp45672
                                   (gx#gentemps
                                    (foldr (lambda (_g3582135824_
                                                    _g3582235827_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3582135824_
                                                     _g3582235827_)))
                                           '()
                                           _L35267_))))
                             (declare (not safe))
                             (_g3528235818_ __tmp45672))))
                       _var3522435263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3521935243_
                                                 _target3521635237_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3521335230_
                                               _g3521435234_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3521335230_ _g3521435234_)))))
                           (__tmp45674
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd35208_))))
                      (declare (not safe))
                      (_g3521235830_ __tmp45674))))
                 (_generate-simple-vector34592_
                  (lambda (_tgt35048_
                           _body35050_
                           _start35051_
                           _K35052_
                           _E35053_)
                    (let _recur35055_ ((_rest35058_ _body35050_)
                                       (_off35060_ _start35051_))
                      (let* ((___stx4451944520_ _rest35058_)
                             (_g3506335075_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4451944520_))))
                        (let ((___kont4452244523_
                               (lambda (_L35103_ _L35105_)
                                 (let* ((_g3512035139_
                                         (lambda (_g3512135135_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3512135135_)))
                                        (_g3511935198_
                                         (lambda (_g3512135143_)
                                           (if (gx#stx-pair? _g3512135143_)
                                               (let ((_e3512735146_
                                                      (gx#syntax-e
                                                       _g3512135143_)))
                                                 (let ((_hd3512635150_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3512735146_)))
                                                       (_tl3512535153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3512735146_))))
                                                   (if (gx#stx-pair?
                                                        _tl3512535153_)
                                                       (let ((_e3513035156_
                                                              (gx#syntax-e
                                                               _tl3512535153_)))
                                                         (let ((_hd3512935160_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3513035156_)))
                       (_tl3512835163_
                        (let () (declare (not safe)) (##cdr _e3513035156_))))
                   (if (gx#stx-pair? _tl3512835163_)
                       (let ((_e3513335166_ (gx#syntax-e _tl3512835163_)))
                         (let ((_hd3513235170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3513335166_)))
                               (_tl3513135173_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3513335166_))))
                           (if (gx#stx-null? _tl3513135173_)
                               ((lambda (_L35176_ _L35178_ _L35179_)
                                  (let ()
                                    (let ((__tmp45675
                                           (let ((__tmp45680
                                                  (let ((__tmp45681
                                                         (let ((__tmp45682
                                                                (let ((__tmp45683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45686
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp45684
                                      (let ((__tmp45685
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35176_ '()))))
                                        (declare (not safe))
                                        (cons _L35178_ __tmp45685))))
                                 (declare (not safe))
                                 (cons __tmp45686 __tmp45684))))
                          (declare (not safe))
                          (cons __tmp45683 '()))))
                   (declare (not safe))
                   (cons _L35179_ __tmp45682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45681 '())))
                                                 (__tmp45676
                                                  (let ((__tmp45677
                                                         (let ((__tmp45678
                                                                (let ((__tmp45679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off35060_ '1))))
                          (declare (not safe))
                          (_recur35055_ _L35103_ __tmp45679))))
                   (declare (not safe))
                   (_generate134589_ _L35179_ _L35105_ __tmp45678 _E35053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45677 '()))))
                                             (declare (not safe))
                                             (cons __tmp45680 __tmp45676))))
                                      (declare (not safe))
                                      (cons 'let __tmp45675))))
                                _hd3513235170_
                                _hd3512935160_
                                _hd3512635150_)
                               (let ()
                                 (declare (not safe))
                                 (_g3512035139_ _g3512135143_)))))
                       (let ()
                         (declare (not safe))
                         (_g3512035139_ _g3512135143_)))))
               (let () (declare (not safe)) (_g3512035139_ _g3512135143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3512035139_
                                                  _g3512135143_)))))
                                        (__tmp45687
                                         (list (gx#genident 'e)
                                               _tgt35048_
                                               _off35060_)))
                                   (declare (not safe))
                                   (_g3511935198_ __tmp45687))))
                              (___kont4452444525_ (lambda () _K35052_)))
                          (if (gx#stx-pair? ___stx4451944520_)
                              (let ((_e3506935093_
                                     (gx#syntax-e ___stx4451944520_)))
                                (let ((_tl3506735100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3506935093_)))
                                      (_hd3506835097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3506935093_))))
                                  (___kont4452244523_
                                   _tl3506735100_
                                   _hd3506835097_)))
                              (___kont4452444525_)))))))
                 (_generate-list-vector34593_
                  (lambda (_tgt34940_
                           _body34942_
                           _->list34943_
                           _K34944_
                           _E34945_)
                    (let* ((_g3494734955_
                            (lambda (_g3494834951_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3494834951_)))
                           (_g3494635044_
                            (lambda (_g3494834959_)
                              ((lambda (_L34962_)
                                 (let ()
                                   (let* ((_g3497434982_
                                           (lambda (_g3497534978_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3497534978_)))
                                          (_g3497335040_
                                           (lambda (_g3497534986_)
                                             ((lambda (_L34989_)
                                                (let ()
                                                  (let* ((_g3500235010_
                                                          (lambda (_g3500335006_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3500335006_)))
                                                         (_g3500135032_
                                                          (lambda (_g3500335014_)
                                                            ((lambda (_L35017_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp45688
                                  (let ((__tmp45691
                                         (let ((__tmp45692
                                                (let ((__tmp45693
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35017_ '()))))
                                                  (declare (not safe))
                                                  (cons _L34962_ __tmp45693))))
                                           (declare (not safe))
                                           (cons __tmp45692 '())))
                                        (__tmp45689
                                         (let ((__tmp45690
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate134589_
                                                   _L34962_
                                                   _body34942_
                                                   _K34944_
                                                   _E34945_))))
                                           (declare (not safe))
                                           (cons __tmp45690 '()))))
                                    (declare (not safe))
                                    (cons __tmp45691 __tmp45689))))
                             (declare (not safe))
                             (cons 'let __tmp45688)))))
                     _g3500335014_)))
                 (__tmp45694
                  (let ((_$e35036_ _->list34943_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e35036_))
                        (let ((__tmp45703 (gx#datum->syntax '#f 'values->list))
                              (__tmp45702
                               (let ()
                                 (declare (not safe))
                                 (cons _L34989_ '()))))
                          (declare (not safe))
                          (cons __tmp45703 __tmp45702))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e35036_))
                            (let ((__tmp45701
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp45700
                                   (let ()
                                     (declare (not safe))
                                     (cons _L34989_ '()))))
                              (declare (not safe))
                              (cons __tmp45701 __tmp45700))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e35036_))
                                (let ((__tmp45699
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp45695
                                       (let ((__tmp45696
                                              (let ((__tmp45698
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp45697
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L34989_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45698 __tmp45697))))
                                         (declare (not safe))
                                         (cons __tmp45696 '()))))
                                  (declare (not safe))
                                  (cons __tmp45699 __tmp45695))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx34582_
                                 _->list34943_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3500135032_
                                                     __tmp45694))))
                                              _g3497534986_))))
                                     (declare (not safe))
                                     (_g3497335040_ _tgt34940_))))
                               _g3494834959_)))
                           (__tmp45704 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3494635044_ __tmp45704))))
                 (_generate-struct34594_
                  (lambda (_info34811_
                           _tgt34813_
                           _body34814_
                           _K34815_
                           _E34816_)
                    (let* ((___stx4453544536_ _body34814_)
                           (_g3481934842_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4453544536_))))
                      (let ((___kont4453844539_
                             (lambda (_L34919_)
                               (let* ((_fields34933_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors34596_
                                          _info34811_)))
                                      (__tmp45705
                                       (let ((__tmp45709
                                              (let ((__tmp45711
                                                     (let ((__obj45289
                                                            _info34811_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj45289
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj45289
                                                              '12
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj45289
                                                            'predicate))))
                                                    (__tmp45710
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt34813_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45711 __tmp45710)))
                                             (__tmp45706
                                              (let ((__tmp45708
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body34595_
                                                        _info34811_
                                                        _tgt34813_
                                                        _L34919_
                                                        _K34815_
                                                        _E34816_)))
                                                    (__tmp45707
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E34816_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45708 __tmp45707))))
                                         (declare (not safe))
                                         (cons __tmp45709 __tmp45706))))
                                 (declare (not safe))
                                 (cons 'if __tmp45705))))
                            (___kont4454044541_
                             (lambda (_L34873_)
                               (let ((__tmp45712
                                      (let ((__tmp45716
                                             (let ((__tmp45718
                                                    (let ((__obj45290
                                                           _info34811_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj45290
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj45290
                                                             '12
                                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           __obj45290
                                                           'predicate))))
                                                   (__tmp45717
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt34813_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45718 __tmp45717)))
                                            (__tmp45713
                                             (let ((__tmp45715
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector34593_
                                                       _tgt34813_
                                                       _L34873_
                                                       'struct->list
                                                       _K34815_
                                                       _E34816_)))
                                                   (__tmp45714
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E34816_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45715 __tmp45714))))
                                        (declare (not safe))
                                        (cons __tmp45716 __tmp45713))))
                                 (declare (not safe))
                                 (cons 'if __tmp45712)))))
                        (if (gx#stx-pair? ___stx4453544536_)
                            (let ((_e3482434895_
                                   (gx#syntax-e ___stx4453544536_)))
                              (let ((_tl3482234902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3482434895_)))
                                    (_hd3482334899_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3482434895_))))
                                (if (gx#stx-datum? _hd3482334899_)
                                    (let ((_e3482534905_
                                           (gx#stx-e _hd3482334899_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3482534905_ 'simple:))
                                          (if (gx#stx-pair? _tl3482234902_)
                                              (let ((_e3482834909_
                                                     (gx#syntax-e
                                                      _tl3482234902_)))
                                                (let ((_tl3482634916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3482834909_)))
                                                      (_hd3482734913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3482834909_))))
                                                  (if (gx#stx-null?
                                                       _tl3482634916_)
                                                      (___kont4453844539_
                                                       _hd3482734913_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3481934842_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3481934842_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3482534905_ 'list:))
                                              (if (gx#stx-pair? _tl3482234902_)
                                                  (let ((_e3483634863_
                                                         (gx#syntax-e
                                                          _tl3482234902_)))
                                                    (let ((_tl3483434870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3483634863_)))
                                                          (_hd3483534867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3483634863_))))
                                                      (if (gx#stx-null?
                                                           _tl3483434870_)
                                                          (___kont4454044541_
                                                           _hd3483534867_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3481934842_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3481934842_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3481934842_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3481934842_)))))
                            (let () (declare (not safe)) (_g3481934842_)))))))
                 (_generate-simple-struct-body34595_
                  (lambda (_info34731_
                           _tgt34733_
                           _body34734_
                           _K34735_
                           _E34736_)
                    (let _recur34738_ ((_rest34741_ _body34734_)
                                       (_fields34743_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors34596_
                                           _info34731_))))
                      (let* ((___stx4458544586_ _rest34741_)
                             (_g3474634758_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4458544586_))))
                        (let ((___kont4458844589_
                               (lambda (_L34786_ _L34788_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields34743_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx34582_
                                      _info34731_
                                      (let ((__obj45291 _info34731_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj45291
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj45291
                                               '2
                                               gerbil/core/mop$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                             __obj45291
                                             'name))))
                                     (let ((_$tgt34803_ (gx#genident 'e))
                                           (_getf34805_ (car _fields34743_)))
                                       (let ((__tmp45719
                                              (let ((__tmp45724
                                                     (let ((__tmp45725
                                                            (let ((__tmp45726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45727
                                  (let ((__tmp45728
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34733_ '()))))
                                    (declare (not safe))
                                    (cons _getf34805_ __tmp45728))))
                             (declare (not safe))
                             (cons __tmp45727 '()))))
                      (declare (not safe))
                      (cons _$tgt34803_ __tmp45726))))
               (declare (not safe))
               (cons __tmp45725 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45720
                                                     (let ((__tmp45721
                                                            (let ((__tmp45722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45723 (cdr _fields34743_)))
                             (declare (not safe))
                             (_recur34738_ _L34786_ __tmp45723))))
                      (declare (not safe))
                      (_generate134589_
                       _$tgt34803_
                       _L34788_
                       __tmp45722
                       _E34736_))))
               (declare (not safe))
               (cons __tmp45721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45724 __tmp45720))))
                                         (declare (not safe))
                                         (cons 'let __tmp45719))))))
                              (___kont4459044591_ (lambda () _K34735_)))
                          (if (gx#stx-pair? ___stx4458544586_)
                              (let ((_e3475234776_
                                     (gx#syntax-e ___stx4458544586_)))
                                (let ((_tl3475034783_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3475234776_)))
                                      (_hd3475134780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3475234776_))))
                                  (___kont4458844589_
                                   _tl3475034783_
                                   _hd3475134780_)))
                              (___kont4459044591_)))))))
                 (_struct-field-accessors34596_
                  (lambda (_info34712_)
                    (let _recur34715_ ((_next34718_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info34712_ '()))))
                      (if (let () (declare (not safe)) (null? _next34718_))
                          '()
                          (let ((_ti34721_ (car _next34718_)))
                            (append (let ((__tmp45729
                                           (map gx#syntax-local-value
                                                (let ((__obj45292 _ti34721_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj45292
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj45292
                                                         '3
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop$<MOP:2>#class-type-info::t
                                                       __obj45292
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur34715_ __tmp45729))
                                    (map (lambda (_slot34724_)
                                           (let ((_$e34727_
                                                  (assgetq _slot34724_
                                                           (let ((__obj45293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti34721_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj45293
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj45293
                            '15
                            gerbil/core/mop$<MOP:2>#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core/mop$<MOP:2>#class-type-info::t
                          __obj45293
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e34727_
                                                 _$e34727_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx34582_
                                                  _info34712_
                                                  _slot34724_))))
                                         (let ((__obj45294 _ti34721_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45294
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45294
                                                  '4
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45294
                                                'slots))))))))))
                 (_generate-class34597_
                  (lambda (_info34705_
                           _tgt34707_
                           _body34708_
                           _K34709_
                           _E34710_)
                    (let ((__tmp45730
                           (let ((__tmp45734
                                  (let ((__tmp45736
                                         (let ((__obj45295 _info34705_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45295
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45295
                                                  '12
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45295
                                                'predicate))))
                                        (__tmp45735
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34707_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45736 __tmp45735)))
                                 (__tmp45731
                                  (let ((__tmp45733
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body34598_
                                            _info34705_
                                            _tgt34707_
                                            _body34708_
                                            _K34709_
                                            _E34710_)))
                                        (__tmp45732
                                         (let ()
                                           (declare (not safe))
                                           (cons _E34710_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45733 __tmp45732))))
                             (declare (not safe))
                             (cons __tmp45734 __tmp45731))))
                      (declare (not safe))
                      (cons 'if __tmp45730))))
                 (_generate-class-body34598_
                  (lambda (_info34600_
                           _tgt34602_
                           _body34603_
                           _K34604_
                           _E34605_)
                    (let _recur34607_ ((_rest34610_ _body34603_))
                      (let* ((___stx4460144602_ _rest34610_)
                             (_g3461434630_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4460144602_))))
                        (let ((___kont4460444605_
                               (lambda (_L34668_ _L34670_ _L34671_)
                                 (let ((_$e34691_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L34671_)))
                                                 (let ((__obj45296
                                                        _info34600_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj45296
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj45296
                                                          '15
                                                          gerbil/core/mop$<MOP:2>#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                                        __obj45296
                                                        'unchecked-accessors))))))
                                   (if _$e34691_
                                       ((lambda (_getf34695_)
                                          (let* ((_$tgt34698_ (gx#genident 'e))
                                                 (__tmp45737
                                                  (let ((__tmp45741
                                                         (let ((__tmp45742
                                                                (let ((__tmp45743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45744
                                      (let ((__tmp45745
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt34602_ '()))))
                                        (declare (not safe))
                                        (cons _getf34695_ __tmp45745))))
                                 (declare (not safe))
                                 (cons __tmp45744 '()))))
                          (declare (not safe))
                          (cons _$tgt34698_ __tmp45743))))
                   (declare (not safe))
                   (cons __tmp45742 '())))
                (__tmp45738
                 (let ((__tmp45739
                        (let ((__tmp45740
                               (let ()
                                 (declare (not safe))
                                 (_recur34607_ _L34668_))))
                          (declare (not safe))
                          (_generate134589_
                           _$tgt34698_
                           _L34670_
                           __tmp45740
                           _E34605_))))
                   (declare (not safe))
                   (cons __tmp45739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45741
                                                          __tmp45738))))
                                            (declare (not safe))
                                            (cons 'let __tmp45737)))
                                        _$e34691_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx34582_
                                        _info34600_
                                        _L34671_)))))
                              (___kont4460644607_ (lambda () _K34604_)))
                          (if (gx#stx-pair? ___stx4460144602_)
                              (let ((_e3462134648_
                                     (gx#syntax-e ___stx4460144602_)))
                                (let ((_tl3461934655_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3462134648_)))
                                      (_hd3462034652_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3462134648_))))
                                  (if (gx#stx-pair? _tl3461934655_)
                                      (let ((_e3462434658_
                                             (gx#syntax-e _tl3461934655_)))
                                        (let ((_tl3462234665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3462434658_)))
                                              (_hd3462334662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3462434658_))))
                                          (___kont4460444605_
                                           _tl3462234665_
                                           _hd3462334662_
                                           _hd3462034652_)))
                                      (___kont4460644607_))))
                              (___kont4460644607_))))))))
          (let ()
            (declare (not safe))
            (_generate134589_ _tgt34584_ _ptree34585_ _K34586_ _E34587_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx33478_ _tgt-lst33480_ _clauses33481_)
        (letrec ((_parse-body33483_
                  (lambda (_hd-len34404_)
                    (let _lp34407_ ((_rest34410_ _clauses33481_)
                                    (_r34412_ '()))
                      (let* ((___stx4465144652_ _rest34410_)
                             (_g3441534427_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4465144652_))))
                        (let ((___kont4465444655_
                               (lambda (_L34455_ _L34457_)
                                 (let* ((___stx4462344624_ _L34457_)
                                        (_g3447434490_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4462344624_))))
                                   (let ((___kont4462644627_
                                          (lambda (_L34559_)
                                            (if (gx#stx-null? _L34455_)
                                                (let ((__tmp45746
                                                       (let ((__tmp45751
                                                              (gx#genident
                                                               'else))
                                                             (__tmp45747
                                                              (let ((__tmp45748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45749
                                    (gx#stx-wrap-source
                                     (let ((__tmp45750
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp45750 _L34559_))
                                     (let ((_$e34570_
                                            (gx#stx-source _L34457_)))
                                       (if _$e34570_
                                           _$e34570_
                                           (gx#stx-source _stx33478_))))))
                               (declare (not safe))
                               (cons __tmp45749 '()))))
                        (declare (not safe))
                        (cons '#f __tmp45748))))
                 (declare (not safe))
                 (cons __tmp45751 __tmp45747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45746 _r34412_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx33478_
                                                 _L34457_))))
                                         (___kont4462844629_
                                          (lambda (_L34518_ _L34520_)
                                            (let ((__tmp45752
                                                   (let ((__tmp45753
                                                          (let ((__tmp45759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp45754
                         (let ((__tmp45758
                                (gx#stx-map
                                 (lambda (_g3453234534_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/match[1]#parse-match-pattern__%|
                                      _g3453234534_
                                      _stx33478_)))
                                 _L34520_))
                               (__tmp45755
                                (let ((__tmp45756
                                       (gx#stx-wrap-source
                                        (let ((__tmp45757
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp45757 _L34518_))
                                        (let ((_$e34538_
                                               (gx#stx-source _L34457_)))
                                          (if _$e34538_
                                              _$e34538_
                                              (gx#stx-source _stx33478_))))))
                                  (declare (not safe))
                                  (cons __tmp45756 '()))))
                           (declare (not safe))
                           (cons __tmp45758 __tmp45755))))
                    (declare (not safe))
                    (cons __tmp45759 __tmp45754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45753
                                                           _r34412_))))
                                              (declare (not safe))
                                              (_lp34407_
                                               _L34455_
                                               __tmp45752))))
                                         (___kont4463044631_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx33478_
                                             _L34457_))))
                                     (let* ((___match4464844649_
                                             (lambda (_e3448434508_
                                                      _hd3448334512_
                                                      _tl3448234515_)
                                               (let ((_L34518_ _tl3448234515_)
                                                     (_L34520_ _hd3448334512_))
                                                 (if (and (gx#stx-list?
                                                           _L34520_)
                                                          (fx= (gx#stx-length
                                                                _L34520_)
                                                               _hd-len34404_)
                                                          (gx#stx-list?
                                                           _L34518_)
                                                          (let ((__tmp45760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34518_)))
                    (declare (not safe))
                    (not __tmp45760)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4462844629_
                                                      _L34518_
                                                      _L34520_)
                                                     (___kont4463044631_)))))
                                            (___match4464244643_
                                             (lambda (_e3447934549_
                                                      _hd3447834553_
                                                      _tl3447734556_)
                                               (let ((_L34559_ _tl3447734556_))
                                                 (if (and (gx#stx-list?
                                                           _L34559_)
                                                          (let ((__tmp45761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34559_)))
                    (declare (not safe))
                    (not __tmp45761)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4462644627_
                                                      _L34559_)
                                                     (___match4464844649_
                                                      _e3447934549_
                                                      _hd3447834553_
                                                      _tl3447734556_))))))
                                       (if (gx#stx-pair? ___stx4462344624_)
                                           (let ((_e3447934549_
                                                  (gx#syntax-e
                                                   ___stx4462344624_)))
                                             (let ((_tl3447734556_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3447934549_)))
                                                   (_hd3447834553_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3447934549_))))
                                               (if (gx#identifier?
                                                    _hd3447834553_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g45762_|
                                                        _hd3447834553_)
                                                       (___match4464244643_
                                                        _e3447934549_
                                                        _hd3447834553_
                                                        _tl3447734556_)
                                                       (___match4464844649_
                                                        _e3447934549_
                                                        _hd3447834553_
                                                        _tl3447734556_))
                                                   (___match4464844649_
                                                    _e3447934549_
                                                    _hd3447834553_
                                                    _tl3447734556_))))
                                           (___kont4463044631_)))))))
                              (___kont4465644657_ (lambda () _r34412_)))
                          (if (gx#stx-pair? ___stx4465144652_)
                              (let ((_e3442134445_
                                     (gx#syntax-e ___stx4465144652_)))
                                (let ((_tl3441934452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3442134445_)))
                                      (_hd3442034449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3442134445_))))
                                  (___kont4465444655_
                                   _tl3441934452_
                                   _hd3442034449_)))
                              (___kont4465644657_)))))))
                 (_generate-body33485_
                  (lambda (_body34189_)
                    (let* ((_g3419234200_
                            (lambda (_g3419334196_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3419334196_)))
                           (_g3419134400_
                            (lambda (_g3419334204_)
                              ((lambda (_L34207_)
                                 (let ()
                                   (let* ((_g3421934236_
                                           (lambda (_g3422034232_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3422034232_)))
                                          (_g3421834396_
                                           (lambda (_g3422034240_)
                                             (if (gx#stx-pair/null?
                                                  _g3422034240_)
                                                 (let ((_g45763_
                                                        (gx#syntax-split-splice
                                                         _g3422034240_
                                                         '0)))
                                                   (begin
                                                     (let ((_g45764_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g45763_)
                          (##vector-length _g45763_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g45764_ 2)))
                   (error "Context expects 2 values" _g45764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3422234243_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45763_
                                                               0)))
                                                           (_tl3422434246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45763_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3422434246_)
                                                           (letrec ((_loop3422534249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3422334253_ _target3422934256_)
                               (if (gx#stx-pair? _hd3422334253_)
                                   (let ((_e3422634259_
                                          (gx#syntax-e _hd3422334253_)))
                                     (let ((_lp-hd3422734263_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3422634259_)))
                                           (_lp-tl3422834266_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3422634259_))))
                                       (let ((__tmp45786
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3422734263_
                                                      _target3422934256_))))
                                         (declare (not safe))
                                         (_loop3422534249_
                                          _lp-tl3422834266_
                                          __tmp45786))))
                                   (let ((_target3423034269_
                                          (reverse _target3422934256_)))
                                     ((lambda (_L34273_)
                                        (let ()
                                          (let* ((_g3429034298_
                                                  (lambda (_g3429134294_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3429134294_)))
                                                 (_g3428934384_
                                                  (lambda (_g3429134302_)
                                                    ((lambda (_L34305_)
                                                       (let ()
                                                         (let* ((_g3431834326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3431934322_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3431934322_)))
                        (_g3431734380_
                         (lambda (_g3431934330_)
                           ((lambda (_L34333_)
                              (let ()
                                (let* ((_g3434634354_
                                        (lambda (_g3434734350_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3434734350_)))
                                       (_g3434534376_
                                        (lambda (_g3434734358_)
                                          ((lambda (_L34361_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp45768
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp45765
                                                        (let ((__tmp45767
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp45766
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34361_ '()))))
                  (declare (not safe))
                  (cons __tmp45767 __tmp45766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45768
                                                         __tmp45765)))))
                                           _g3434734358_)))
                                       (__tmp45769
                                        (gx#stx-wrap-source
                                         (let ((__tmp45775
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp45770
                                                (let ((__tmp45772
                                                       (let ((__tmp45773
                                                              (let ((__tmp45774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L34305_ '()))))
                        (declare (not safe))
                        (cons _L34207_ __tmp45774))))
                 (declare (not safe))
                 (cons __tmp45773 '())))
              (__tmp45771 (let () (declare (not safe)) (cons _L34333_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45772
                                                        __tmp45771))))
                                           (declare (not safe))
                                           (cons __tmp45775 __tmp45770))
                                         (gx#stx-source _stx33478_))))
                                  (declare (not safe))
                                  (_g3434534376_ __tmp45769))))
                            _g3431934330_)))
                        (__tmp45776
                         (let ((__tmp45777
                                (let ()
                                  (declare (not safe))
                                  (cons _L34207_ '()))))
                           (declare (not safe))
                           (_generate-clauses33486_ _body34189_ __tmp45777))))
                   (declare (not safe))
                   (_g3431734380_ __tmp45776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3429134302_)))
                                                 (__tmp45778
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp45785
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45779
                                                          (let ((__tmp45780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45781
                                (let ((__tmp45784
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp45782
                                       (let ((__tmp45783
                                              (foldr (lambda (_g3438734390_
                                                              _g3438834393_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3438734390_
                                                               _g3438834393_)))
                                                     '()
                                                     _L34273_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp45783))))
                                  (declare (not safe))
                                  (cons __tmp45784 __tmp45782))))
                           (declare (not safe))
                           (cons __tmp45781 '()))))
                    (declare (not safe))
                    (cons '() __tmp45780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45785
                                                           __tmp45779))
                                                   (gx#stx-source
                                                    _stx33478_))))
                                            (declare (not safe))
                                            (_g3428934384_ __tmp45778))))
                                      _target3423034269_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3422534249_ _target3422234243_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3421934236_ _g3422034240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3421934236_
                                                    _g3422034240_))))))
                                     (declare (not safe))
                                     (_g3421834396_ _tgt-lst33480_))))
                               _g3419334204_)))
                           (__tmp45787 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3419134400_ __tmp45787))))
                 (_generate-clauses33486_
                  (lambda (_rest33841_ _E33843_)
                    (let* ((___stx4466744668_ _rest33841_)
                           (_g3384733863_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4466744668_))))
                      (let ((___kont4467044671_
                             (lambda (_L34097_)
                               (let* ((_g3410834126_
                                       (lambda (_g3410934122_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3410934122_)))
                                      (_g3410734181_
                                       (lambda (_g3410934130_)
                                         (if (gx#stx-pair? _g3410934130_)
                                             (let ((_e3411434133_
                                                    (gx#syntax-e
                                                     _g3410934130_)))
                                               (let ((_hd3411334137_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3411434133_)))
                                                     (_tl3411234140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3411434133_))))
                                                 (if (gx#stx-pair?
                                                      _tl3411234140_)
                                                     (let ((_e3411734143_
                                                            (gx#syntax-e
                                                             _tl3411234140_)))
                                                       (let ((_hd3411634147_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3411734143_)))
                     (_tl3411534150_
                      (let () (declare (not safe)) (##cdr _e3411734143_))))
                 (if (gx#stx-pair? _tl3411534150_)
                     (let ((_e3412034153_ (gx#syntax-e _tl3411534150_)))
                       (let ((_hd3411934157_
                              (let ()
                                (declare (not safe))
                                (##car _e3412034153_)))
                             (_tl3411834160_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3412034153_))))
                         (if (gx#stx-null? _tl3411834160_)
                             ((lambda (_L34163_ _L34165_)
                                (let ((__tmp45788
                                       (let ((__tmp45789
                                              (let ((__tmp45790
                                                     (if (gx#stx-e _L34165_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate133487_
                                                            _L34165_
                                                            _L34163_
                                                            _E33843_))
                                                         _L34163_)))
                                                (declare (not safe))
                                                (cons __tmp45790 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp45789))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp45788)))
                              _hd3411934157_
                              _hd3411634147_)
                             (let ()
                               (declare (not safe))
                               (_g3410834126_ _g3410934130_)))))
                     (let ()
                       (declare (not safe))
                       (_g3410834126_ _g3410934130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3410834126_
                                                        _g3410934130_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3410834126_
                                                _g3410934130_))))))
                                 (declare (not safe))
                                 (_g3410734181_ _L34097_))))
                            (___kont4467244673_
                             (lambda (_L33891_ _L33893_)
                               (let* ((_g3390633925_
                                       (lambda (_g3390733921_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3390733921_)))
                                      (_g3390534076_
                                       (lambda (_g3390733929_)
                                         (if (gx#stx-pair? _g3390733929_)
                                             (let ((_e3391333932_
                                                    (gx#syntax-e
                                                     _g3390733929_)))
                                               (let ((_hd3391233936_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3391333932_)))
                                                     (_tl3391133939_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3391333932_))))
                                                 (if (gx#stx-pair?
                                                      _tl3391133939_)
                                                     (let ((_e3391633942_
                                                            (gx#syntax-e
                                                             _tl3391133939_)))
                                                       (let ((_hd3391533946_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3391633942_)))
                     (_tl3391433949_
                      (let () (declare (not safe)) (##cdr _e3391633942_))))
                 (if (gx#stx-pair? _tl3391433949_)
                     (let ((_e3391933952_ (gx#syntax-e _tl3391433949_)))
                       (let ((_hd3391833956_
                              (let ()
                                (declare (not safe))
                                (##car _e3391933952_)))
                             (_tl3391733959_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3391933952_))))
                         (if (gx#stx-null? _tl3391733959_)
                             ((lambda (_L33962_ _L33964_ _L33965_)
                                (if (gx#stx-e _L33964_)
                                    (let* ((_g3398233997_
                                            (lambda (_g3398333993_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3398333993_)))
                                           (_g3398134042_
                                            (lambda (_g3398334001_)
                                              (if (gx#stx-pair? _g3398334001_)
                                                  (let ((_e3398834004_
                                                         (gx#syntax-e
                                                          _g3398334001_)))
                                                    (let ((_hd3398734008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3398834004_)))
                                                          (_tl3398634011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3398834004_))))
                                                      (if (gx#stx-pair?
                                                           _tl3398634011_)
                                                          (let ((_e3399134014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3398634011_)))
                    (let ((_hd3399034018_
                           (let () (declare (not safe)) (##car _e3399134014_)))
                          (_tl3398934021_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3399134014_))))
                      (if (gx#stx-null? _tl3398934021_)
                          ((lambda (_L34024_ _L34026_)
                             (let ()
                               (let ((__tmp45817 (gx#datum->syntax '#f 'let))
                                     (__tmp45808
                                      (let ((__tmp45810
                                             (let ((__tmp45811
                                                    (let ((__tmp45812
                                                           (let ((__tmp45813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45816 (gx#datum->syntax '#f 'lambda))
                                (__tmp45814
                                 (let ((__tmp45815
                                        (let ()
                                          (declare (not safe))
                                          (cons _L34026_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp45815))))
                            (declare (not safe))
                            (cons __tmp45816 __tmp45814))))
                     (declare (not safe))
                     (cons __tmp45813 '()))))
              (declare (not safe))
              (cons _L33965_ __tmp45812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45811 '())))
                                            (__tmp45809
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34024_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45810 __tmp45809))))
                                 (declare (not safe))
                                 (cons __tmp45817 __tmp45808))))
                           _hd3399034018_
                           _hd3398734008_)
                          (let ()
                            (declare (not safe))
                            (_g3398233997_ _g3398334001_)))))
                  (let ()
                    (declare (not safe))
                    (_g3398233997_ _g3398334001_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3398233997_
                                                     _g3398334001_)))))
                                           (__tmp45818
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate133487_
                                                     _L33964_
                                                     _L33962_
                                                     _E33843_))
                                                  (let ((__tmp45819
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L33965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses33486_
                                                     _L33891_
                                                     __tmp45819)))))
                                      (declare (not safe))
                                      (_g3398134042_ __tmp45818))
                                    (let* ((_g3404634054_
                                            (lambda (_g3404734050_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3404734050_)))
                                           (_g3404534072_
                                            (lambda (_g3404734058_)
                                              ((lambda (_L34061_)
                                                 (let ()
                                                   (let ((__tmp45805
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45791
                                                          (let ((__tmp45793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45794
                                (let ((__tmp45795
                                       (let ((__tmp45796
                                              (let ((__tmp45804
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp45797
                                                     (let ((__tmp45803
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp45798
                                                            (let ((__tmp45799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45802 (gx#datum->syntax '#f 'lambda))
                                 (__tmp45800
                                  (let ((__tmp45801
                                         (let ()
                                           (declare (not safe))
                                           (cons _L33962_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp45801))))
                             (declare (not safe))
                             (cons __tmp45802 __tmp45800))))
                      (declare (not safe))
                      (cons __tmp45799 '()))))
               (declare (not safe))
               (cons __tmp45803 __tmp45798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45804 __tmp45797))))
                                         (declare (not safe))
                                         (cons __tmp45796 '()))))
                                  (declare (not safe))
                                  (cons _L33965_ __tmp45795))))
                           (declare (not safe))
                           (cons __tmp45794 '())))
                        (__tmp45792
                         (let () (declare (not safe)) (cons _L34061_ '()))))
                    (declare (not safe))
                    (cons __tmp45793 __tmp45792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45805
                                                           __tmp45791))))
                                               _g3404734058_)))
                                           (__tmp45806
                                            (let ((__tmp45807
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L33965_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses33486_
                                               _L33891_
                                               __tmp45807))))
                                      (declare (not safe))
                                      (_g3404534072_ __tmp45806))))
                              _hd3391833956_
                              _hd3391533946_
                              _hd3391233936_)
                             (let ()
                               (declare (not safe))
                               (_g3390633925_ _g3390733929_)))))
                     (let ()
                       (declare (not safe))
                       (_g3390633925_ _g3390733929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3390633925_
                                                        _g3390733929_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3390633925_
                                                _g3390733929_))))))
                                 (declare (not safe))
                                 (_g3390534076_ _L33893_))))
                            (___kont4467444675_
                             (lambda ()
                               (let ((__tmp45820
                                      (let ((__tmp45821
                                             (let ()
                                               (declare (not safe))
                                               (cons _E33843_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp45821))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp45820)))))
                        (if (gx#stx-pair? ___stx4466744668_)
                            (let ((_e3385234087_
                                   (gx#syntax-e ___stx4466744668_)))
                              (let ((_tl3385034094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3385234087_)))
                                    (_hd3385134091_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3385234087_))))
                                (if (gx#stx-null? _tl3385034094_)
                                    (___kont4467044671_ _hd3385134091_)
                                    (___kont4467244673_
                                     _tl3385034094_
                                     _hd3385134091_))))
                            (___kont4467444675_))))))
                 (_generate133487_
                  (lambda (_clause33489_ _body33491_ _E33492_)
                    (let* ((_g3349433518_
                            (lambda (_g3349533514_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3349533514_)))
                           (_g3349333837_
                            (lambda (_g3349533522_)
                              (if (gx#stx-pair? _g3349533522_)
                                  (let ((_e3350033525_
                                         (gx#syntax-e _g3349533522_)))
                                    (let ((_hd3349933529_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3350033525_)))
                                          (_tl3349833532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3350033525_))))
                                      (if (gx#stx-pair? _tl3349833532_)
                                          (let ((_e3350333535_
                                                 (gx#syntax-e _tl3349833532_)))
                                            (let ((_hd3350233539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3350333535_)))
                                                  (_tl3350133542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3350333535_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3350233539_)
                                                  (let ((_g45822_
                                                         (gx#syntax-split-splice
                                                          _hd3350233539_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45823_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45822_)
                           (##vector-length _g45822_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45823_ 2)))
                    (error "Context expects 2 values" _g45823_)))
              (let ((_target3350433545_
                     (let () (declare (not safe)) (##vector-ref _g45822_ 0)))
                    (_tl3350633548_
                     (let () (declare (not safe)) (##vector-ref _g45822_ 1))))
                (if (gx#stx-null? _tl3350633548_)
                    (letrec ((_loop3350733551_
                              (lambda (_hd3350533555_ _var3351133558_)
                                (if (gx#stx-pair? _hd3350533555_)
                                    (let ((_e3350833561_
                                           (gx#syntax-e _hd3350533555_)))
                                      (let ((_lp-hd3350933565_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3350833561_)))
                                            (_lp-tl3351033568_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3350833561_))))
                                        (let ((__tmp45837
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd3350933565_
                                                       _var3351133558_))))
                                          (declare (not safe))
                                          (_loop3350733551_
                                           _lp-tl3351033568_
                                           __tmp45837))))
                                    (let ((_var3351233571_
                                           (reverse _var3351133558_)))
                                      (if (gx#stx-null? _tl3350133542_)
                                          ((lambda (_L33575_ _L33577_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g3359833601_
                                                                _g3359933604_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g3359833601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3359933604_)))
               '()
               _L33575_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx33478_)
                                               (let* ((_g3360733615_
                                                       (lambda (_g3360833611_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3360833611_)))
                                                      (_g3360633709_
                                                       (lambda (_g3360833619_)
                                                         ((lambda (_L33622_)
                                                            (let ()
                                                              (let* ((_g3363533643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3363633639_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3363633639_)))
                             (_g3363433705_
                              (lambda (_g3363633647_)
                                ((lambda (_L33650_)
                                   (let ()
                                     (let* ((_g3366333671_
                                             (lambda (_g3366433667_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3366433667_)))
                                            (_g3366233693_
                                             (lambda (_g3366433675_)
                                               ((lambda (_L33678_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp45828
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp45824
                                                              (let ((__tmp45826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45827
                                    (let ()
                                      (declare (not safe))
                                      (cons _L33678_ '()))))
                               (declare (not safe))
                               (cons _L33577_ __tmp45827)))
                            (__tmp45825
                             (let ()
                               (declare (not safe))
                               (cons _L33622_ '()))))
                        (declare (not safe))
                        (cons __tmp45826 __tmp45825))))
                 (declare (not safe))
                 (cons __tmp45828 __tmp45824))
               (gx#stx-source _stx33478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3366433675_)))
                                            (__tmp45829
                                             (gx#stx-wrap-source
                                              (let ((__tmp45833
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp45830
                                                     (let ((__tmp45832
                                                            (foldr (lambda (_g3369633699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3369733702_)
                             (let ()
                               (declare (not safe))
                               (cons _g3369633699_ _g3369733702_)))
                           '()
                           _L33575_))
                   (__tmp45831
                    (let () (declare (not safe)) (cons _L33650_ '()))))
               (declare (not safe))
               (cons __tmp45832 __tmp45831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45833 __tmp45830))
                                              (gx#stx-source _stx33478_))))
                                       (declare (not safe))
                                       (_g3366233693_ __tmp45829))))
                                 _g3363633647_))))
                        (declare (not safe))
                        (_g3363433705_ _body33491_))))
                  _g3360833619_)))
              (__tmp45834
               (let _recur33713_ ((_rest33716_ _clause33489_)
                                  (_rest-targets33718_ _tgt-lst33480_))
                 (let* ((___stx4469344694_ _rest33716_)
                        (_g3372133733_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4469344694_))))
                   (let ((___kont4469644697_
                          (lambda (_L33769_ _L33771_)
                            (let* ((_g3378633798_
                                    (lambda (_g3378733794_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3378733794_)))
                                   (_g3378533829_
                                    (lambda (_g3378733802_)
                                      (if (gx#stx-pair? _g3378733802_)
                                          (let ((_e3379233805_
                                                 (gx#syntax-e _g3378733802_)))
                                            (let ((_hd3379133809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3379233805_)))
                                                  (_tl3379033812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3379233805_))))
                                              ((lambda (_L33815_ _L33817_)
                                                 (let ((__tmp45835
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur33713_
                                                           _L33769_
                                                           _L33815_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx33478_
                                                    _L33817_
                                                    _L33771_
                                                    __tmp45835
                                                    _E33492_)))
                                               _tl3379033812_
                                               _hd3379133809_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3378633798_ _g3378733802_))))))
                              (declare (not safe))
                              (_g3378533829_ _rest-targets33718_))))
                         (___kont4469844699_
                          (lambda ()
                            (let ((__tmp45836
                                   (foldr (lambda (_g3374333746_ _g3374433749_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3374333746_
                                                    _g3374433749_)))
                                          '()
                                          _L33575_)))
                              (declare (not safe))
                              (cons _L33577_ __tmp45836)))))
                     (if (gx#stx-pair? ___stx4469344694_)
                         (let ((_e3372733759_ (gx#syntax-e ___stx4469344694_)))
                           (let ((_tl3372533766_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3372733759_)))
                                 (_hd3372633763_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3372733759_))))
                             (___kont4469644697_
                              _tl3372533766_
                              _hd3372633763_)))
                         (___kont4469844699_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3360633709_ __tmp45834))))
                                           _var3351233571_
                                           _hd3349933529_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3349433518_
                                             _g3349533522_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3350733551_ _target3350433545_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3349433518_ _g3349533522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3349433518_
                                                     _g3349533522_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3349433518_ _g3349533522_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3349433518_ _g3349533522_)))))
                           (__tmp45838
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause33489_)))))
                      (declare (not safe))
                      (_g3349333837_ __tmp45838)))))
          (let ((__tmp45839
                 (let ((__tmp45840 (gx#stx-length _tgt-lst33480_)))
                   (declare (not safe))
                   (_parse-body33483_ __tmp45840))))
            (declare (not safe))
            (_generate-body33485_ __tmp45839)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx33380_ _tgt33382_ _clauses33383_)
        (letrec ((_reclause33385_
                  (lambda (_clause33388_)
                    (let* ((___stx4470944710_ _clause33388_)
                           (_g3339333408_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4470944710_))))
                      (let ((___kont4471244713_ (lambda () _clause33388_))
                            (___kont4471444715_
                             (lambda (_L33436_ _L33438_)
                               (gx#stx-wrap-source
                                (let ((__tmp45841
                                       (let ()
                                         (declare (not safe))
                                         (cons _L33438_ '()))))
                                  (declare (not safe))
                                  (cons __tmp45841 _L33436_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4471644717_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx33380_
                                _clause33388_))))
                        (if (gx#stx-pair? ___stx4470944710_)
                            (let ((_e3339733460_
                                   (gx#syntax-e ___stx4470944710_)))
                              (let ((_tl3339533467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3339733460_)))
                                    (_hd3339633464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3339733460_))))
                                (if (gx#identifier? _hd3339633464_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45842_|
                                         _hd3339633464_)
                                        (___kont4471244713_)
                                        (___kont4471444715_
                                         _tl3339533467_
                                         _hd3339633464_))
                                    (___kont4471444715_
                                     _tl3339533467_
                                     _hd3339633464_))))
                            (___kont4471644717_)))))))
          (let ((__tmp45844
                 (let () (declare (not safe)) (cons _tgt33382_ '())))
                (__tmp45843 (gx#stx-map _reclause33385_ _clauses33383_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx33380_
             __tmp45844
             __tmp45843)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx40610_)
        (let* ((___stx4473744738_ _stx40610_)
               (_g4061540644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4473744738_))))
          (let ((___kont4474044741_
                 (lambda (_L40884_)
                   (let* ((_g4089740905_
                           (lambda (_g4089840901_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4089840901_)))
                          (_g4089640958_
                           (lambda (_g4089840909_)
                             ((lambda (_L40912_)
                                (let ()
                                  (let* ((_g4092440932_
                                          (lambda (_g4092540928_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4092540928_)))
                                         (_g4092340954_
                                          (lambda (_g4092540936_)
                                            ((lambda (_L40939_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45848
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45845
                                                          (let ((__tmp45847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40912_ '())))
                        (__tmp45846
                         (let () (declare (not safe)) (cons _L40939_ '()))))
                    (declare (not safe))
                    (cons __tmp45847 __tmp45846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45848
                                                           __tmp45845)))))
                                             _g4092540936_))))
                                    (_g4092340954_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45850
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45849
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40912_ _L40884_))))
                                        (declare (not safe))
                                        (cons __tmp45850 __tmp45849))
                                      (gx#stx-source _stx40610_))))))
                              _g4089840909_))))
                     (_g4089640958_ (gx#genident 'e)))))
                (___kont4474244743_
                 (lambda (_L40779_)
                   (let* ((_g4079240800_
                           (lambda (_g4079340796_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4079340796_)))
                          (_g4079140853_
                           (lambda (_g4079340804_)
                             ((lambda (_L40807_)
                                (let ()
                                  (let* ((_g4081940827_
                                          (lambda (_g4082040823_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4082040823_)))
                                         (_g4081840849_
                                          (lambda (_g4082040831_)
                                            ((lambda (_L40834_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45853
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45851
                                                          (let ((__tmp45852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40834_ '()))))
                    (declare (not safe))
                    (cons _L40807_ __tmp45852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45853
                                                           __tmp45851)))))
                                             _g4082040831_))))
                                    (_g4081840849_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45855
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45854
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40807_ _L40779_))))
                                        (declare (not safe))
                                        (cons __tmp45855 __tmp45854))
                                      (gx#stx-source _stx40610_))))))
                              _g4079340804_))))
                     (_g4079140853_ (gx#genident 'args)))))
                (___kont4474444745_
                 (lambda (_L40671_ _L40673_)
                   (let* ((_g4068740695_
                           (lambda (_g4068840691_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4068840691_)))
                          (_g4068640748_
                           (lambda (_g4068840699_)
                             ((lambda (_L40702_)
                                (let ()
                                  (let* ((_g4071440722_
                                          (lambda (_g4071540718_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4071540718_)))
                                         (_g4071340744_
                                          (lambda (_g4071540726_)
                                            ((lambda (_L40729_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45861
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45856
                                                          (let ((__tmp45858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45859
                                (let ((__tmp45860
                                       (let ()
                                         (declare (not safe))
                                         (cons _L40673_ '()))))
                                  (declare (not safe))
                                  (cons _L40702_ __tmp45860))))
                           (declare (not safe))
                           (cons __tmp45859 '())))
                        (__tmp45857
                         (let () (declare (not safe)) (cons _L40729_ '()))))
                    (declare (not safe))
                    (cons __tmp45858 __tmp45857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45861
                                                           __tmp45856)))))
                                             _g4071540726_))))
                                    (_g4071340744_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx40610_
                                        _L40702_
                                        _L40671_))))))
                              _g4068840699_))))
                     (_g4068640748_ (gx#genident _L40673_))))))
            (let* ((___match4479044791_
                    (lambda (_e4063540651_
                             _hd4063440655_
                             _tl4063340658_
                             _e4063840661_
                             _hd4063740665_
                             _tl4063640668_)
                      (let ((_L40671_ _tl4063640668_)
                            (_L40673_ _hd4063740665_))
                        (if (gx#stx-list? _L40671_)
                            (___kont4474444745_ _L40671_ _L40673_)
                            (let () (declare (not safe)) (_g4061540644_))))))
                   (___match4477844779_
                    (lambda (_e4062740759_
                             _hd4062640763_
                             _tl4062540766_
                             _e4063040769_
                             _hd4062940773_
                             _tl4062840776_)
                      (let ((_L40779_ _tl4062840776_))
                        (if (gx#stx-list? _L40779_)
                            (___kont4474244743_ _L40779_)
                            (___match4479044791_
                             _e4062740759_
                             _hd4062640763_
                             _tl4062540766_
                             _e4063040769_
                             _hd4062940773_
                             _tl4062840776_)))))
                   (___match4476244763_
                    (lambda (_e4062040864_
                             _hd4061940868_
                             _tl4061840871_
                             _e4062340874_
                             _hd4062240878_
                             _tl4062140881_)
                      (let ((_L40884_ _tl4062140881_))
                        (if (gx#stx-list? _L40884_)
                            (___kont4474044741_ _L40884_)
                            (___match4479044791_
                             _e4062040864_
                             _hd4061940868_
                             _tl4061840871_
                             _e4062340874_
                             _hd4062240878_
                             _tl4062140881_))))))
              (if (gx#stx-pair? ___stx4473744738_)
                  (let ((_e4062040864_ (gx#syntax-e ___stx4473744738_)))
                    (let ((_tl4061840871_
                           (let () (declare (not safe)) (##cdr _e4062040864_)))
                          (_hd4061940868_
                           (let ()
                             (declare (not safe))
                             (##car _e4062040864_))))
                      (if (gx#stx-pair? _tl4061840871_)
                          (let ((_e4062340874_ (gx#syntax-e _tl4061840871_)))
                            (let ((_tl4062140881_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4062340874_)))
                                  (_hd4062240878_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4062340874_))))
                              (if (gx#identifier? _hd4062240878_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45863_|
                                       _hd4062240878_)
                                      (___match4476244763_
                                       _e4062040864_
                                       _hd4061940868_
                                       _tl4061840871_
                                       _e4062340874_
                                       _hd4062240878_
                                       _tl4062140881_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45862_|
                                           _hd4062240878_)
                                          (___match4477844779_
                                           _e4062040864_
                                           _hd4061940868_
                                           _tl4061840871_
                                           _e4062340874_
                                           _hd4062240878_
                                           _tl4062140881_)
                                          (___match4479044791_
                                           _e4062040864_
                                           _hd4061940868_
                                           _tl4061840871_
                                           _e4062340874_
                                           _hd4062240878_
                                           _tl4062140881_)))
                                  (___match4479044791_
                                   _e4062040864_
                                   _hd4061940868_
                                   _tl4061840871_
                                   _e4062340874_
                                   _hd4062240878_
                                   _tl4062140881_))))
                          (let () (declare (not safe)) (_g4061540644_)))))
                  (let () (declare (not safe)) (_g4061540644_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx40966_)
        (let* ((_g4096940993_
                (lambda (_g4097040989_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4097040989_)))
               (_g4096841205_
                (lambda (_g4097040997_)
                  (if (gx#stx-pair? _g4097040997_)
                      (let ((_e4097541000_ (gx#syntax-e _g4097040997_)))
                        (let ((_hd4097441004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4097541000_)))
                              (_tl4097341007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4097541000_))))
                          (if (gx#stx-pair? _tl4097341007_)
                              (let ((_e4097841010_
                                     (gx#syntax-e _tl4097341007_)))
                                (let ((_hd4097741014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4097841010_)))
                                      (_tl4097641017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4097841010_))))
                                  (if (gx#stx-pair/null? _hd4097741014_)
                                      (let ((_g45864_
                                             (gx#syntax-split-splice
                                              _hd4097741014_
                                              '0)))
                                        (begin
                                          (let ((_g45865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45864_)
                                                       (##vector-length
                                                        _g45864_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45865_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45865_)))
                                          (let ((_target4097941020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45864_ 0)))
                                                (_tl4098141023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45864_ 1))))
                                            (if (gx#stx-null? _tl4098141023_)
                                                (letrec ((_loop4098241026_
                                                          (lambda (_hd4098041030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e4098641033_)
                    (if (gx#stx-pair? _hd4098041030_)
                        (let ((_e4098341036_ (gx#syntax-e _hd4098041030_)))
                          (let ((_lp-hd4098441040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4098341036_)))
                                (_lp-tl4098541043_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4098341036_))))
                            (_loop4098241026_
                             _lp-tl4098541043_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd4098441040_ _e4098641033_)))))
                        (let ((_e4098741046_ (reverse _e4098641033_)))
                          ((lambda (_L41050_ _L41052_)
                             (if (gx#stx-list? _L41050_)
                                 (let* ((_g4107041087_
                                         (lambda (_g4107141083_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4107141083_)))
                                        (_g4106941193_
                                         (lambda (_g4107141091_)
                                           (if (gx#stx-pair/null?
                                                _g4107141091_)
                                               (let ((_g45866_
                                                      (gx#syntax-split-splice
                                                       _g4107141091_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45867_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45866_)
                        (##vector-length _g45866_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45867_ 2)))
                 (error "Context expects 2 values" _g45867_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4107341094_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45866_
                                                             0)))
                                                         (_tl4107541097_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45866_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4107541097_)
                                                         (letrec ((_loop4107641100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4107441104_ _$e4108041107_)
                             (if (gx#stx-pair? _hd4107441104_)
                                 (let ((_e4107741110_
                                        (gx#syntax-e _hd4107441104_)))
                                   (let ((_lp-hd4107841114_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4107741110_)))
                                         (_lp-tl4107941117_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4107741110_))))
                                     (_loop4107641100_
                                      _lp-tl4107941117_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd4107841114_
                                              _$e4108041107_)))))
                                 (let ((_$e4108141120_
                                        (reverse _$e4108041107_)))
                                   ((lambda (_L41124_)
                                      (let ()
                                        (let* ((_g4114041148_
                                                (lambda (_g4114141144_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g4114141144_)))
                                               (_g4113941181_
                                                (lambda (_g4114141152_)
                                                  ((lambda (_L41155_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp45873
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp45868
                        (let ((__tmp45870
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L41052_
                                  _L41124_)
                                 (foldr (lambda (_g4116941173_
                                                 _g4117041176_
                                                 _g4117141178_)
                                          (let ((__tmp45871
                                                 (let ((__tmp45872
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4116941173_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4117041176_
                                                         __tmp45872))))
                                            (declare (not safe))
                                            (cons __tmp45871 _g4117141178_)))
                                        '()
                                        _L41052_
                                        _L41124_)))
                              (__tmp45869
                               (let ()
                                 (declare (not safe))
                                 (cons _L41155_ '()))))
                          (declare (not safe))
                          (cons __tmp45870 __tmp45869))))
                   (declare (not safe))
                   (cons __tmp45873 __tmp45868)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4114141152_))))
                                          (_g4113941181_
                                           (let ((__tmp45874
                                                  (foldr (lambda (_g4118441187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4118541190_)
                   (let ()
                     (declare (not safe))
                     (cons _g4118441187_ _g4118541190_)))
                 '()
                 _L41124_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx40966_
                                              __tmp45874
                                              _L41050_))))))
                                    _$e4108141120_))))))
                   (_loop4107641100_ _target4107341094_ '()))
                 (_g4107041087_ _g4107141091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4107041087_
                                                _g4107141091_)))))
                                   (_g4106941193_
                                    (gx#gentemps
                                     (foldr (lambda (_g4119641199_
                                                     _g4119741202_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4119641199_
                                                      _g4119741202_)))
                                            '()
                                            _L41052_))))
                                 (_g4096940993_ _g4097040997_)))
                           _tl4097641017_
                           _e4098741046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4098241026_
                                                   _target4097941020_
                                                   '()))
                                                (_g4096940993_
                                                 _g4097040997_)))))
                                      (_g4096940993_ _g4097040997_))))
                              (_g4096940993_ _g4097040997_))))
                      (_g4096940993_ _g4097040997_)))))
          (_g4096841205_ _stx40966_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx41211_)
        (let* ((___stx4479344794_ _$stx41211_)
               (_g4121741300_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4479344794_))))
          (let ((___kont4479644797_
                 (lambda (_L41630_)
                   (let ((__tmp45877 (gx#datum->syntax '#f 'let))
                         (__tmp45875
                          (let ((__tmp45876
                                 (foldr (lambda (_g4164641649_ _g4164741652_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4164641649_
                                                  _g4164741652_)))
                                        '()
                                        _L41630_)))
                            (declare (not safe))
                            (cons '() __tmp45876))))
                     (declare (not safe))
                     (cons __tmp45877 __tmp45875))))
                (___kont4480044801_
                 (lambda (_L41538_ _L41540_ _L41541_ _L41542_)
                   (let ((__tmp45878
                          (let ((__tmp45880
                                 (let ((__tmp45881
                                        (let ((__tmp45882
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41540_ '()))))
                                          (declare (not safe))
                                          (cons _L41541_ __tmp45882))))
                                   (declare (not safe))
                                   (cons __tmp45881 '())))
                                (__tmp45879
                                 (foldr (lambda (_g4156441567_ _g4156541570_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4156441567_
                                                  _g4156541570_)))
                                        '()
                                        _L41538_)))
                            (declare (not safe))
                            (cons __tmp45880 __tmp45879))))
                     (declare (not safe))
                     (cons _L41542_ __tmp45878))))
                (___kont4480444805_
                 (lambda (_L41411_ _L41413_ _L41414_)
                   (let ((__tmp45889 (gx#datum->syntax '#f 'match*))
                         (__tmp45883
                          (let ((__tmp45888
                                 (foldr (lambda (_g4144041443_ _g4144141446_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4144041443_
                                                  _g4144141446_)))
                                        '()
                                        _L41413_))
                                (__tmp45884
                                 (let ((__tmp45885
                                        (let ((__tmp45887
                                               (foldr (lambda (_g4143841449_
                                                               _g4143941452_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4143841449_
                                                                _g4143941452_)))
                                                      '()
                                                      _L41414_))
                                              (__tmp45886
                                               (foldr (lambda (_g4143641455_
                                                               _g4143741458_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4143641455_
                                                                _g4143741458_)))
                                                      '()
                                                      _L41411_)))
                                          (declare (not safe))
                                          (cons __tmp45887 __tmp45886))))
                                   (declare (not safe))
                                   (cons __tmp45885 '()))))
                            (declare (not safe))
                            (cons __tmp45888 __tmp45884))))
                     (declare (not safe))
                     (cons __tmp45889 __tmp45883)))))
            (let* ((___match4488644887_
                    (lambda (_e4126541307_
                             _hd4126441311_
                             _tl4126341314_
                             _e4126841317_
                             _hd4126741321_
                             _tl4126641324_
                             ___splice4480644807_
                             _target4126941327_
                             _tl4127141330_)
                      (letrec ((_loop4127241333_
                                (lambda (_hd4127041337_
                                         _expr4127641340_
                                         _hd4127741342_)
                                  (if (gx#stx-pair? _hd4127041337_)
                                      (let ((_e4127341345_
                                             (gx#syntax-e _hd4127041337_)))
                                        (let ((_lp-tl4127541352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4127341345_)))
                                              (_lp-hd4127441349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4127341345_))))
                                          (if (gx#stx-pair? _lp-hd4127441349_)
                                              (let ((_e4128241355_
                                                     (gx#syntax-e
                                                      _lp-hd4127441349_)))
                                                (let ((_tl4128041362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4128241355_)))
                                                      (_hd4128141359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4128241355_))))
                                                  (if (gx#stx-pair?
                                                       _tl4128041362_)
                                                      (let ((_e4128541365_
                                                             (gx#syntax-e
                                                              _tl4128041362_)))
                                                        (let ((_tl4128341372_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4128541365_)))
                      (_hd4128441369_
                       (let () (declare (not safe)) (##car _e4128541365_))))
                  (if (gx#stx-null? _tl4128341372_)
                      (_loop4127241333_
                       _lp-tl4127541352_
                       (let ()
                         (declare (not safe))
                         (cons _hd4128441369_ _expr4127641340_))
                       (let ()
                         (declare (not safe))
                         (cons _hd4128141359_ _hd4127741342_)))
                      (let () (declare (not safe)) (_g4121741300_)))))
              (let () (declare (not safe)) (_g4121741300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4121741300_)))))
                                      (let ((_hd4127941378_
                                             (reverse _hd4127741342_))
                                            (_expr4127841375_
                                             (reverse _expr4127641340_)))
                                        (if (gx#stx-pair/null? _tl4126641324_)
                                            (let ((___splice4480844809_
                                                   (gx#syntax-split-splice
                                                    _tl4126641324_
                                                    '0)))
                                              (let ((_tl4128841384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4480844809_
                                                        '1)))
                                                    (_target4128641381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4480844809_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4128841384_)
                                                    (letrec ((_loop4128941387_
                                                              (lambda (_hd4128741391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4129341394_)
                        (if (gx#stx-pair? _hd4128741391_)
                            (let ((_e4129041397_ (gx#syntax-e _hd4128741391_)))
                              (let ((_lp-tl4129241404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4129041397_)))
                                    (_lp-hd4129141401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4129041397_))))
                                (_loop4128941387_
                                 _lp-tl4129241404_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4129141401_
                                         _body4129341394_)))))
                            (let ((_body4129441407_
                                   (reverse _body4129341394_)))
                              (___kont4480444805_
                               _body4129441407_
                               _expr4127841375_
                               _hd4127941378_))))))
              (_loop4128941387_ _target4128641381_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4121741300_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4121741300_))))))))
                        (_loop4127241333_ _target4126941327_ '() '()))))
                   (___match4487844879_
                    (lambda (_e4126541307_
                             _hd4126441311_
                             _tl4126341314_
                             _e4126841317_
                             _hd4126741321_
                             _tl4126641324_)
                      (if (gx#stx-pair/null? _hd4126741321_)
                          (let ((___splice4480644807_
                                 (gx#syntax-split-splice _hd4126741321_ '0)))
                            (let ((_tl4127141330_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4480644807_ '1)))
                                  (_target4126941327_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4480644807_ '0))))
                              (if (gx#stx-null? _tl4127141330_)
                                  (___match4488644887_
                                   _e4126541307_
                                   _hd4126441311_
                                   _tl4126341314_
                                   _e4126841317_
                                   _hd4126741321_
                                   _tl4126641324_
                                   ___splice4480644807_
                                   _target4126941327_
                                   _tl4127141330_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4121741300_)))))
                          (let () (declare (not safe)) (_g4121741300_)))))
                   (___match4486644867_
                    (lambda (_e4124141468_
                             _hd4124041472_
                             _tl4123941475_
                             _e4124441478_
                             _hd4124341482_
                             _tl4124241485_
                             _e4124741488_
                             _hd4124641492_
                             _tl4124541495_
                             _e4125041498_
                             _hd4124941502_
                             _tl4124841505_
                             ___splice4480244803_
                             _target4125141508_
                             _tl4125341511_)
                      (letrec ((_loop4125441514_
                                (lambda (_hd4125241518_ _body4125841521_)
                                  (if (gx#stx-pair? _hd4125241518_)
                                      (let ((_e4125541524_
                                             (gx#syntax-e _hd4125241518_)))
                                        (let ((_lp-tl4125741531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4125541524_)))
                                              (_lp-hd4125641528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4125541524_))))
                                          (_loop4125441514_
                                           _lp-tl4125741531_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4125641528_
                                                   _body4125841521_)))))
                                      (let ((_body4125941534_
                                             (reverse _body4125841521_)))
                                        (let ((_L41538_ _body4125941534_)
                                              (_L41540_ _hd4124941502_)
                                              (_L41541_ _hd4124641492_)
                                              (_L41542_ _hd4124041472_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L41541_))
                                              (___kont4480044801_
                                               _L41538_
                                               _L41540_
                                               _L41541_
                                               _L41542_)
                                              (___match4487844879_
                                               _e4124141468_
                                               _hd4124041472_
                                               _tl4123941475_
                                               _e4124441478_
                                               _hd4124341482_
                                               _tl4124241485_))))))))
                        (_loop4125441514_ _target4125141508_ '()))))
                   (___match4483244833_
                    (lambda (_e4122241580_
                             _hd4122141584_
                             _tl4122041587_
                             _e4122541590_
                             _hd4122441594_
                             _tl4122341597_
                             ___splice4479844799_
                             _target4122641600_
                             _tl4122841603_)
                      (letrec ((_loop4122941606_
                                (lambda (_hd4122741610_ _body4123341613_)
                                  (if (gx#stx-pair? _hd4122741610_)
                                      (let ((_e4123041616_
                                             (gx#syntax-e _hd4122741610_)))
                                        (let ((_lp-tl4123241623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4123041616_)))
                                              (_lp-hd4123141620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4123041616_))))
                                          (_loop4122941606_
                                           _lp-tl4123241623_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4123141620_
                                                   _body4123341613_)))))
                                      (let ((_body4123441626_
                                             (reverse _body4123341613_)))
                                        (___kont4479644797_
                                         _body4123441626_))))))
                        (_loop4122941606_ _target4122641600_ '())))))
              (if (gx#stx-pair? ___stx4479344794_)
                  (let ((_e4122241580_ (gx#syntax-e ___stx4479344794_)))
                    (let ((_tl4122041587_
                           (let () (declare (not safe)) (##cdr _e4122241580_)))
                          (_hd4122141584_
                           (let ()
                             (declare (not safe))
                             (##car _e4122241580_))))
                      (if (gx#stx-pair? _tl4122041587_)
                          (let ((_e4122541590_ (gx#syntax-e _tl4122041587_)))
                            (let ((_tl4122341597_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4122541590_)))
                                  (_hd4122441594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4122541590_))))
                              (if (gx#stx-null? _hd4122441594_)
                                  (if (gx#stx-pair/null? _tl4122341597_)
                                      (let ((___splice4479844799_
                                             (gx#syntax-split-splice
                                              _tl4122341597_
                                              '0)))
                                        (let ((_tl4122841603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4479844799_
                                                  '1)))
                                              (_target4122641600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4479844799_
                                                  '0))))
                                          (if (gx#stx-null? _tl4122841603_)
                                              (___match4483244833_
                                               _e4122241580_
                                               _hd4122141584_
                                               _tl4122041587_
                                               _e4122541590_
                                               _hd4122441594_
                                               _tl4122341597_
                                               ___splice4479844799_
                                               _target4122641600_
                                               _tl4122841603_)
                                              (if (gx#stx-pair/null?
                                                   _hd4122441594_)
                                                  (let ((___splice4480644807_
                                                         (gx#syntax-split-splice
                                                          _hd4122441594_
                                                          '0)))
                                                    (let ((_tl4127141330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4480644807_
                                                              '1)))
                                                          (_target4126941327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4480644807_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4127141330_)
                                                          (___match4488644887_
                                                           _e4122241580_
                                                           _hd4122141584_
                                                           _tl4122041587_
                                                           _e4122541590_
                                                           _hd4122441594_
                                                           _tl4122341597_
                                                           ___splice4480644807_
                                                           _target4126941327_
                                                           _tl4127141330_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4121741300_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4121741300_))))))
                                      (if (gx#stx-pair/null? _hd4122441594_)
                                          (let ((___splice4480644807_
                                                 (gx#syntax-split-splice
                                                  _hd4122441594_
                                                  '0)))
                                            (let ((_tl4127141330_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4480644807_
                                                      '1)))
                                                  (_target4126941327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4480644807_
                                                      '0))))
                                              (if (gx#stx-null? _tl4127141330_)
                                                  (___match4488644887_
                                                   _e4122241580_
                                                   _hd4122141584_
                                                   _tl4122041587_
                                                   _e4122541590_
                                                   _hd4122441594_
                                                   _tl4122341597_
                                                   ___splice4480644807_
                                                   _target4126941327_
                                                   _tl4127141330_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4121741300_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4121741300_))))
                                  (if (gx#stx-pair? _hd4122441594_)
                                      (let ((_e4124741488_
                                             (gx#syntax-e _hd4122441594_)))
                                        (let ((_tl4124541495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4124741488_)))
                                              (_hd4124641492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4124741488_))))
                                          (if (gx#stx-pair? _tl4124541495_)
                                              (let ((_e4125041498_
                                                     (gx#syntax-e
                                                      _tl4124541495_)))
                                                (let ((_tl4124841505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4125041498_)))
                                                      (_hd4124941502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4125041498_))))
                                                  (if (gx#stx-null?
                                                       _tl4124841505_)
                                                      (if (gx#stx-pair/null?
                                                           _tl4122341597_)
                                                          (let ((___splice4480244803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl4122341597_ '0)))
                    (let ((_tl4125341511_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480244803_ '1)))
                          (_target4125141508_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480244803_ '0))))
                      (if (gx#stx-null? _tl4125341511_)
                          (___match4486644867_
                           _e4122241580_
                           _hd4122141584_
                           _tl4122041587_
                           _e4122541590_
                           _hd4122441594_
                           _tl4122341597_
                           _e4124741488_
                           _hd4124641492_
                           _tl4124541495_
                           _e4125041498_
                           _hd4124941502_
                           _tl4124841505_
                           ___splice4480244803_
                           _target4125141508_
                           _tl4125341511_)
                          (if (gx#stx-pair/null? _hd4122441594_)
                              (let ((___splice4480644807_
                                     (gx#syntax-split-splice
                                      _hd4122441594_
                                      '0)))
                                (let ((_tl4127141330_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4480644807_
                                          '1)))
                                      (_target4126941327_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4480644807_
                                          '0))))
                                  (if (gx#stx-null? _tl4127141330_)
                                      (___match4488644887_
                                       _e4122241580_
                                       _hd4122141584_
                                       _tl4122041587_
                                       _e4122541590_
                                       _hd4122441594_
                                       _tl4122341597_
                                       ___splice4480644807_
                                       _target4126941327_
                                       _tl4127141330_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4121741300_)))))
                              (let () (declare (not safe)) (_g4121741300_))))))
                  (if (gx#stx-pair/null? _hd4122441594_)
                      (let ((___splice4480644807_
                             (gx#syntax-split-splice _hd4122441594_ '0)))
                        (let ((_tl4127141330_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4480644807_ '1)))
                              (_target4126941327_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4480644807_ '0))))
                          (if (gx#stx-null? _tl4127141330_)
                              (___match4488644887_
                               _e4122241580_
                               _hd4122141584_
                               _tl4122041587_
                               _e4122541590_
                               _hd4122441594_
                               _tl4122341597_
                               ___splice4480644807_
                               _target4126941327_
                               _tl4127141330_)
                              (let () (declare (not safe)) (_g4121741300_)))))
                      (let () (declare (not safe)) (_g4121741300_))))
              (if (gx#stx-pair/null? _hd4122441594_)
                  (let ((___splice4480644807_
                         (gx#syntax-split-splice _hd4122441594_ '0)))
                    (let ((_tl4127141330_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480644807_ '1)))
                          (_target4126941327_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4480644807_ '0))))
                      (if (gx#stx-null? _tl4127141330_)
                          (___match4488644887_
                           _e4122241580_
                           _hd4122141584_
                           _tl4122041587_
                           _e4122541590_
                           _hd4122441594_
                           _tl4122341597_
                           ___splice4480644807_
                           _target4126941327_
                           _tl4127141330_)
                          (let () (declare (not safe)) (_g4121741300_)))))
                  (let () (declare (not safe)) (_g4121741300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4122441594_)
                                                  (let ((___splice4480644807_
                                                         (gx#syntax-split-splice
                                                          _hd4122441594_
                                                          '0)))
                                                    (let ((_tl4127141330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4480644807_
                                                              '1)))
                                                          (_target4126941327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4480644807_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4127141330_)
                                                          (___match4488644887_
                                                           _e4122241580_
                                                           _hd4122141584_
                                                           _tl4122041587_
                                                           _e4122541590_
                                                           _hd4122441594_
                                                           _tl4122341597_
                                                           ___splice4480644807_
                                                           _target4126941327_
                                                           _tl4127141330_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4121741300_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4121741300_))))))
                                      (if (gx#stx-pair/null? _hd4122441594_)
                                          (let ((___splice4480644807_
                                                 (gx#syntax-split-splice
                                                  _hd4122441594_
                                                  '0)))
                                            (let ((_tl4127141330_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4480644807_
                                                      '1)))
                                                  (_target4126941327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4480644807_
                                                      '0))))
                                              (if (gx#stx-null? _tl4127141330_)
                                                  (___match4488644887_
                                                   _e4122241580_
                                                   _hd4122141584_
                                                   _tl4122041587_
                                                   _e4122541590_
                                                   _hd4122441594_
                                                   _tl4122341597_
                                                   ___splice4480644807_
                                                   _target4126941327_
                                                   _tl4127141330_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4121741300_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4121741300_)))))))
                          (let () (declare (not safe)) (_g4121741300_)))))
                  (let () (declare (not safe)) (_g4121741300_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx41663_)
        (let* ((___stx4488944890_ _$stx41663_)
               (_g4166841720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4488944890_))))
          (let ((___kont4489244893_
                 (lambda (_L41890_ _L41892_ _L41893_ _L41894_ _L41895_)
                   (let ((__tmp45898 (gx#datum->syntax '#f 'with))
                         (__tmp45890
                          (let ((__tmp45895
                                 (let ((__tmp45896
                                        (let ((__tmp45897
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41893_ '()))))
                                          (declare (not safe))
                                          (cons _L41894_ __tmp45897))))
                                   (declare (not safe))
                                   (cons __tmp45896 '())))
                                (__tmp45891
                                 (let ((__tmp45892
                                        (let ((__tmp45893
                                               (let ((__tmp45894
                                                      (foldr (lambda (_g4192041923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4192141926_)
                       (let ()
                         (declare (not safe))
                         (cons _g4192041923_ _g4192141926_)))
                     '()
                     _L41890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L41892_ __tmp45894))))
                                          (declare (not safe))
                                          (cons _L41895_ __tmp45893))))
                                   (declare (not safe))
                                   (cons __tmp45892 '()))))
                            (declare (not safe))
                            (cons __tmp45895 __tmp45891))))
                     (declare (not safe))
                     (cons __tmp45898 __tmp45890))))
                (___kont4489644897_
                 (lambda (_L41777_)
                   (let ((__tmp45901 (gx#datum->syntax '#f 'let))
                         (__tmp45899
                          (let ((__tmp45900
                                 (foldr (lambda (_g4179441797_ _g4179541800_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4179441797_
                                                  _g4179541800_)))
                                        '()
                                        _L41777_)))
                            (declare (not safe))
                            (cons '() __tmp45900))))
                     (declare (not safe))
                     (cons __tmp45901 __tmp45899)))))
            (let* ((___match4496244963_
                    (lambda (_e4170241727_
                             _hd4170141731_
                             _tl4170041734_
                             _e4170541737_
                             _hd4170441741_
                             _tl4170341744_
                             ___splice4489844899_
                             _target4170641747_
                             _tl4170841750_)
                      (letrec ((_loop4170941753_
                                (lambda (_hd4170741757_ _body4171341760_)
                                  (if (gx#stx-pair? _hd4170741757_)
                                      (let ((_e4171041763_
                                             (gx#syntax-e _hd4170741757_)))
                                        (let ((_lp-tl4171241770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4171041763_)))
                                              (_lp-hd4171141767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4171041763_))))
                                          (_loop4170941753_
                                           _lp-tl4171241770_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4171141767_
                                                   _body4171341760_)))))
                                      (let ((_body4171441773_
                                             (reverse _body4171341760_)))
                                        (___kont4489644897_
                                         _body4171441773_))))))
                        (_loop4170941753_ _target4170641747_ '()))))
                   (___match4494044941_
                    (lambda (_e4167741810_
                             _hd4167641814_
                             _tl4167541817_
                             _e4168041820_
                             _hd4167941824_
                             _tl4167841827_
                             _e4168341830_
                             _hd4168241834_
                             _tl4168141837_
                             _e4168641840_
                             _hd4168541844_
                             _tl4168441847_
                             _e4168941850_
                             _hd4168841854_
                             _tl4168741857_
                             ___splice4489444895_
                             _target4169041860_
                             _tl4169241863_)
                      (letrec ((_loop4169341866_
                                (lambda (_hd4169141870_ _body4169741873_)
                                  (if (gx#stx-pair? _hd4169141870_)
                                      (let ((_e4169441876_
                                             (gx#syntax-e _hd4169141870_)))
                                        (let ((_lp-tl4169641883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4169441876_)))
                                              (_lp-hd4169541880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4169441876_))))
                                          (_loop4169341866_
                                           _lp-tl4169641883_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4169541880_
                                                   _body4169741873_)))))
                                      (let ((_body4169841886_
                                             (reverse _body4169741873_)))
                                        (___kont4489244893_
                                         _body4169841886_
                                         _tl4168141837_
                                         _hd4168841854_
                                         _hd4168541844_
                                         _hd4167641814_))))))
                        (_loop4169341866_ _target4169041860_ '())))))
              (if (gx#stx-pair? ___stx4488944890_)
                  (let ((_e4167741810_ (gx#syntax-e ___stx4488944890_)))
                    (let ((_tl4167541817_
                           (let () (declare (not safe)) (##cdr _e4167741810_)))
                          (_hd4167641814_
                           (let ()
                             (declare (not safe))
                             (##car _e4167741810_))))
                      (if (gx#stx-pair? _tl4167541817_)
                          (let ((_e4168041820_ (gx#syntax-e _tl4167541817_)))
                            (let ((_tl4167841827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4168041820_)))
                                  (_hd4167941824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4168041820_))))
                              (if (gx#stx-pair? _hd4167941824_)
                                  (let ((_e4168341830_
                                         (gx#syntax-e _hd4167941824_)))
                                    (let ((_tl4168141837_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4168341830_)))
                                          (_hd4168241834_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4168341830_))))
                                      (if (gx#stx-pair? _hd4168241834_)
                                          (let ((_e4168641840_
                                                 (gx#syntax-e _hd4168241834_)))
                                            (let ((_tl4168441847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4168641840_)))
                                                  (_hd4168541844_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4168641840_))))
                                              (if (gx#stx-pair? _tl4168441847_)
                                                  (let ((_e4168941850_
                                                         (gx#syntax-e
                                                          _tl4168441847_)))
                                                    (let ((_tl4168741857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4168941850_)))
                                                          (_hd4168841854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4168941850_))))
                                                      (if (gx#stx-null?
                                                           _tl4168741857_)
                                                          (if (gx#stx-pair/null?
                                                               _tl4167841827_)
                                                              (let ((___splice4489444895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl4167841827_ '0)))
                        (let ((_tl4169241863_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4489444895_ '1)))
                              (_target4169041860_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4489444895_ '0))))
                          (if (gx#stx-null? _tl4169241863_)
                              (___match4494044941_
                               _e4167741810_
                               _hd4167641814_
                               _tl4167541817_
                               _e4168041820_
                               _hd4167941824_
                               _tl4167841827_
                               _e4168341830_
                               _hd4168241834_
                               _tl4168141837_
                               _e4168641840_
                               _hd4168541844_
                               _tl4168441847_
                               _e4168941850_
                               _hd4168841854_
                               _tl4168741857_
                               ___splice4489444895_
                               _target4169041860_
                               _tl4169241863_)
                              (let () (declare (not safe)) (_g4166841720_)))))
                      (let () (declare (not safe)) (_g4166841720_)))
                  (let () (declare (not safe)) (_g4166841720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4166841720_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4166841720_)))))
                                  (if (gx#stx-null? _hd4167941824_)
                                      (if (gx#stx-pair/null? _tl4167841827_)
                                          (let ((___splice4489844899_
                                                 (gx#syntax-split-splice
                                                  _tl4167841827_
                                                  '0)))
                                            (let ((_tl4170841750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4489844899_
                                                      '1)))
                                                  (_target4170641747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4489844899_
                                                      '0))))
                                              (if (gx#stx-null? _tl4170841750_)
                                                  (___match4496244963_
                                                   _e4167741810_
                                                   _hd4167641814_
                                                   _tl4167541817_
                                                   _e4168041820_
                                                   _hd4167941824_
                                                   _tl4167841827_
                                                   ___splice4489844899_
                                                   _target4170641747_
                                                   _tl4170841750_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4166841720_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4166841720_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4166841720_))))))
                          (let () (declare (not safe)) (_g4166841720_)))))
                  (let () (declare (not safe)) (_g4166841720_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx41935_)
        (let* ((___stx4496544966_ _$stx41935_)
               (_g4194642092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4496544966_))))
          (let ((___kont4496844969_
                 (lambda (_L42696_ _L42698_ _L42699_)
                   (let ((__tmp45906 (gx#datum->syntax '#f 'and))
                         (__tmp45902
                          (foldr (lambda (_g4272042723_ _g4272142726_)
                                   (let ((__tmp45903
                                          (let ((__tmp45904
                                                 (let ((__tmp45905
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42696_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4272042723_
                                                         __tmp45905))))
                                            (declare (not safe))
                                            (cons _L42699_ __tmp45904))))
                                     (declare (not safe))
                                     (cons __tmp45903 _g4272142726_)))
                                 '()
                                 _L42698_)))
                     (declare (not safe))
                     (cons __tmp45906 __tmp45902))))
                (___kont4497244973_
                 (lambda (_L42586_ _L42588_ _L42589_)
                   (let ((__tmp45911 (gx#datum->syntax '#f 'or))
                         (__tmp45907
                          (foldr (lambda (_g4261042613_ _g4261142616_)
                                   (let ((__tmp45908
                                          (let ((__tmp45909
                                                 (let ((__tmp45910
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42586_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4261042613_
                                                         __tmp45910))))
                                            (declare (not safe))
                                            (cons _L42589_ __tmp45909))))
                                     (declare (not safe))
                                     (cons __tmp45908 _g4261142616_)))
                                 '()
                                 _L42588_)))
                     (declare (not safe))
                     (cons __tmp45911 __tmp45907))))
                (___kont4497644977_
                 (lambda (_L42486_ _L42488_ _L42489_)
                   (let ((__tmp45916 (gx#datum->syntax '#f 'not))
                         (__tmp45912
                          (let ((__tmp45913
                                 (let ((__tmp45914
                                        (let ((__tmp45915
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L42486_ '()))))
                                          (declare (not safe))
                                          (cons _L42488_ __tmp45915))))
                                   (declare (not safe))
                                   (cons _L42489_ __tmp45914))))
                            (declare (not safe))
                            (cons __tmp45913 '()))))
                     (declare (not safe))
                     (cons __tmp45916 __tmp45912))))
                (___kont4497844979_
                 (lambda (_L42412_ _L42414_)
                   (let ((__tmp45917
                          (let () (declare (not safe)) (cons _L42412_ '()))))
                     (declare (not safe))
                     (cons _L42414_ __tmp45917))))
                (___kont4498044981_
                 (lambda (_L42360_ _L42362_)
                   (let ((__tmp45926 (gx#datum->syntax '#f 'lambda))
                         (__tmp45918
                          (let ((__tmp45924
                                 (let ((__tmp45925
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45925 '())))
                                (__tmp45919
                                 (let ((__tmp45920
                                        (let ((__tmp45921
                                               (let ((__tmp45922
                                                      (let ((__tmp45923
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp45923
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L42360_ __tmp45922))))
                                          (declare (not safe))
                                          (cons _L42362_ __tmp45921))))
                                   (declare (not safe))
                                   (cons __tmp45920 '()))))
                            (declare (not safe))
                            (cons __tmp45924 __tmp45919))))
                     (declare (not safe))
                     (cons __tmp45926 __tmp45918))))
                (___kont4498244983_
                 (lambda (_L42312_ _L42314_ _L42315_)
                   (let ((__tmp45945 (gx#datum->syntax '#f 'lambda))
                         (__tmp45927
                          (let ((__tmp45943
                                 (let ((__tmp45944
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45944 '())))
                                (__tmp45928
                                 (let ((__tmp45929
                                        (let ((__tmp45942
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp45930
                                               (let ((__tmp45935
                                                      (let ((__tmp45941
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp45936
                                                             (let ((__tmp45937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45938
                                   (let ((__tmp45939
                                          (let ((__tmp45940
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45940 '()))))
                                     (declare (not safe))
                                     (cons _L42314_ __tmp45939))))
                              (declare (not safe))
                              (cons _L42315_ __tmp45938))))
                       (declare (not safe))
                       (cons __tmp45937 '()))))
                (declare (not safe))
                (cons __tmp45941 __tmp45936)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45931
                                                      (let ((__tmp45932
                                                             (let ((__tmp45933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45934 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp45934 '()))))
                       (declare (not safe))
                       (cons _L42312_ __tmp45933))))
                (declare (not safe))
                (cons __tmp45932 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45935
                                                       __tmp45931))))
                                          (declare (not safe))
                                          (cons __tmp45942 __tmp45930))))
                                   (declare (not safe))
                                   (cons __tmp45929 '()))))
                            (declare (not safe))
                            (cons __tmp45943 __tmp45928))))
                     (declare (not safe))
                     (cons __tmp45945 __tmp45927))))
                (___kont4498444985_
                 (lambda (_L42243_ _L42245_ _L42246_)
                   (let ((__tmp45961 (gx#datum->syntax '#f 'lambda))
                         (__tmp45946
                          (let ((__tmp45959
                                 (let ((__tmp45960
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45960 '())))
                                (__tmp45947
                                 (let ((__tmp45948
                                        (let ((__tmp45958
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45949
                                               (let ((__tmp45954
                                                      (let ((__tmp45955
                                                             (let ((__tmp45956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45957 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45957 '()))))
                       (declare (not safe))
                       (cons _L42245_ __tmp45956))))
                (declare (not safe))
                (cons _L42246_ __tmp45955)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45950
                                                      (let ((__tmp45951
                                                             (let ((__tmp45952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45953 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45953 '()))))
                       (declare (not safe))
                       (cons _L42243_ __tmp45952))))
                (declare (not safe))
                (cons __tmp45951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45954
                                                       __tmp45950))))
                                          (declare (not safe))
                                          (cons __tmp45958 __tmp45949))))
                                   (declare (not safe))
                                   (cons __tmp45948 '()))))
                            (declare (not safe))
                            (cons __tmp45959 __tmp45947))))
                     (declare (not safe))
                     (cons __tmp45961 __tmp45946))))
                (___kont4498644987_
                 (lambda (_L42163_ _L42165_ _L42166_ _L42167_)
                   (let ((__tmp45979 (gx#datum->syntax '#f 'lambda))
                         (__tmp45962
                          (let ((__tmp45977
                                 (let ((__tmp45978
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45978 '())))
                                (__tmp45963
                                 (let ((__tmp45964
                                        (let ((__tmp45976
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45965
                                               (let ((__tmp45972
                                                      (let ((__tmp45973
                                                             (let ((__tmp45974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45975 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45975 '()))))
                       (declare (not safe))
                       (cons _L42166_ __tmp45974))))
                (declare (not safe))
                (cons _L42167_ __tmp45973)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45966
                                                      (let ((__tmp45967
                                                             (let ((__tmp45968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45969
                                   (let ((__tmp45970
                                          (let ((__tmp45971
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45971 '()))))
                                     (declare (not safe))
                                     (cons _L42165_ __tmp45970))))
                              (declare (not safe))
                              (cons __tmp45969 '()))))
                       (declare (not safe))
                       (cons _L42163_ __tmp45968))))
                (declare (not safe))
                (cons __tmp45967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45972
                                                       __tmp45966))))
                                          (declare (not safe))
                                          (cons __tmp45976 __tmp45965))))
                                   (declare (not safe))
                                   (cons __tmp45964 '()))))
                            (declare (not safe))
                            (cons __tmp45977 __tmp45963))))
                     (declare (not safe))
                     (cons __tmp45979 __tmp45962)))))
            (let* ((___match4513845139_
                    (lambda (_e4203842272_
                             _hd4203742276_
                             _tl4203642279_
                             _e4204142282_
                             _hd4204042286_
                             _tl4203942289_
                             _e4204442292_
                             _hd4204342296_
                             _tl4204242299_)
                      (if (gx#identifier? _hd4204342296_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45981_|
                               _hd4204342296_)
                              (if (gx#stx-pair? _tl4204242299_)
                                  (let ((_e4204742302_
                                         (gx#syntax-e _tl4204242299_)))
                                    (let ((_tl4204542309_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4204742302_)))
                                          (_hd4204642306_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4204742302_))))
                                      (if (gx#stx-null? _tl4204542309_)
                                          (___kont4498244983_
                                           _hd4204642306_
                                           _hd4204042286_
                                           _hd4203742276_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))
                              (let () (declare (not safe)) (_g4194642092_)))
                          (if (gx#stx-datum? _hd4204342296_)
                              (let ((_e4206042229_ (gx#stx-e _hd4204342296_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4206042229_ '::))
                                    (if (gx#stx-pair? _tl4204242299_)
                                        (let ((_e4206342233_
                                               (gx#syntax-e _tl4204242299_)))
                                          (let ((_tl4206142240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4206342233_)))
                                                (_hd4206242237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4206342233_))))
                                            (if (gx#stx-null? _tl4206142240_)
                                                (___kont4498444985_
                                                 _hd4206242237_
                                                 _hd4204042286_
                                                 _hd4203742276_)
                                                (if (gx#stx-pair?
                                                     _tl4206142240_)
                                                    (let ((_e4208342143_
                                                           (gx#syntax-e
                                                            _tl4206142240_)))
                                                      (let ((_tl4208142150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4208342143_)))
                    (_hd4208242147_
                     (let () (declare (not safe)) (##car _e4208342143_))))
                (if (gx#identifier? _hd4208242147_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45980_|
                         _hd4208242147_)
                        (if (gx#stx-pair? _tl4208142150_)
                            (let ((_e4208642153_ (gx#syntax-e _tl4208142150_)))
                              (let ((_tl4208442160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208642153_)))
                                    (_hd4208542157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208642153_))))
                                (if (gx#stx-null? _tl4208442160_)
                                    (___kont4498644987_
                                     _hd4208542157_
                                     _hd4206242237_
                                     _hd4204042286_
                                     _hd4203742276_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))))
                            (let () (declare (not safe)) (_g4194642092_)))
                        (let () (declare (not safe)) (_g4194642092_)))
                    (let () (declare (not safe)) (_g4194642092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_))))
                              (let () (declare (not safe)) (_g4194642092_))))))
                   (___match4511845119_
                    (lambda (_e4202942340_
                             _hd4202842344_
                             _tl4202742347_
                             _e4203242350_
                             _hd4203142354_
                             _tl4203042357_)
                      (if (gx#stx-null? _tl4203042357_)
                          (___kont4498044981_ _hd4203142354_ _hd4202842344_)
                          (if (gx#stx-pair? _tl4203042357_)
                              (let ((_e4204442292_
                                     (gx#syntax-e _tl4203042357_)))
                                (let ((_tl4204242299_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4204442292_)))
                                      (_hd4204342296_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4204442292_))))
                                  (if (gx#identifier? _hd4204342296_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45981_|
                                           _hd4204342296_)
                                          (if (gx#stx-pair? _tl4204242299_)
                                              (let ((_e4204742302_
                                                     (gx#syntax-e
                                                      _tl4204242299_)))
                                                (let ((_tl4204542309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4204742302_)))
                                                      (_hd4204642306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4204742302_))))
                                                  (if (gx#stx-null?
                                                       _tl4204542309_)
                                                      (___kont4498244983_
                                                       _hd4204642306_
                                                       _hd4203142354_
                                                       _hd4202842344_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4194642092_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))
                                      (if (gx#stx-datum? _hd4204342296_)
                                          (let ((_e4206042229_
                                                 (gx#stx-e _hd4204342296_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4206042229_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4204242299_)
                                                    (let ((_e4206342233_
                                                           (gx#syntax-e
                                                            _tl4204242299_)))
                                                      (let ((_tl4206142240_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4206342233_)))
                    (_hd4206242237_
                     (let () (declare (not safe)) (##car _e4206342233_))))
                (if (gx#stx-null? _tl4206142240_)
                    (___kont4498444985_
                     _hd4206242237_
                     _hd4203142354_
                     _hd4202842344_)
                    (if (gx#stx-pair? _tl4206142240_)
                        (let ((_e4208342143_ (gx#syntax-e _tl4206142240_)))
                          (let ((_tl4208142150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4208342143_)))
                                (_hd4208242147_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4208342143_))))
                            (if (gx#identifier? _hd4208242147_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45980_|
                                     _hd4208242147_)
                                    (if (gx#stx-pair? _tl4208142150_)
                                        (let ((_e4208642153_
                                               (gx#syntax-e _tl4208142150_)))
                                          (let ((_tl4208442160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4208642153_)))
                                                (_hd4208542157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4208642153_))))
                                            (if (gx#stx-null? _tl4208442160_)
                                                (___kont4498644987_
                                                 _hd4208542157_
                                                 _hd4206242237_
                                                 _hd4203142354_
                                                 _hd4202842344_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4194642092_)))))
                        (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_))))))
                              (let () (declare (not safe)) (_g4194642092_))))))
                   (___match4504845049_
                    (lambda (_e4197742516_
                             _hd4197642520_
                             _tl4197542523_
                             _e4198042526_
                             _hd4197942530_
                             _tl4197842533_
                             _e4198342536_
                             _hd4198242540_
                             _tl4198142543_
                             ___splice4497444975_
                             _target4198442546_
                             _tl4198642549_)
                      (letrec ((_loop4198742552_
                                (lambda (_hd4198542556_ _pred4199142559_)
                                  (if (gx#stx-pair? _hd4198542556_)
                                      (let ((_e4198842562_
                                             (gx#syntax-e _hd4198542556_)))
                                        (let ((_lp-tl4199042569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4198842562_)))
                                              (_lp-hd4198942566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4198842562_))))
                                          (_loop4198742552_
                                           _lp-tl4199042569_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4198942566_
                                                   _pred4199142559_)))))
                                      (let ((_pred4199242572_
                                             (reverse _pred4199142559_)))
                                        (if (gx#stx-pair? _tl4197842533_)
                                            (let ((_e4199542576_
                                                   (gx#syntax-e
                                                    _tl4197842533_)))
                                              (let ((_tl4199342583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4199542576_)))
                                                    (_hd4199442580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4199542576_))))
                                                (if (gx#stx-null?
                                                     _tl4199342583_)
                                                    (___kont4497244973_
                                                     _hd4199442580_
                                                     _pred4199242572_
                                                     _hd4197642520_)
                                                    (___match4513845139_
                                                     _e4197742516_
                                                     _hd4197642520_
                                                     _tl4197542523_
                                                     _e4198042526_
                                                     _hd4197942530_
                                                     _tl4197842533_
                                                     _e4199542576_
                                                     _hd4199442580_
                                                     _tl4199342583_))))
                                            (___match4511845119_
                                             _e4197742516_
                                             _hd4197642520_
                                             _tl4197542523_
                                             _e4198042526_
                                             _hd4197942530_
                                             _tl4197842533_)))))))
                        (_loop4198742552_ _target4198442546_ '()))))
                   (___match4501845019_
                    (lambda (_e4195342626_
                             _hd4195242630_
                             _tl4195142633_
                             _e4195642636_
                             _hd4195542640_
                             _tl4195442643_
                             _e4195942646_
                             _hd4195842650_
                             _tl4195742653_
                             ___splice4497044971_
                             _target4196042656_
                             _tl4196242659_)
                      (letrec ((_loop4196342662_
                                (lambda (_hd4196142666_ _pred4196742669_)
                                  (if (gx#stx-pair? _hd4196142666_)
                                      (let ((_e4196442672_
                                             (gx#syntax-e _hd4196142666_)))
                                        (let ((_lp-tl4196642679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4196442672_)))
                                              (_lp-hd4196542676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4196442672_))))
                                          (_loop4196342662_
                                           _lp-tl4196642679_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4196542676_
                                                   _pred4196742669_)))))
                                      (let ((_pred4196842682_
                                             (reverse _pred4196742669_)))
                                        (if (gx#stx-pair? _tl4195442643_)
                                            (let ((_e4197142686_
                                                   (gx#syntax-e
                                                    _tl4195442643_)))
                                              (let ((_tl4196942693_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4197142686_)))
                                                    (_hd4197042690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4197142686_))))
                                                (if (gx#stx-null?
                                                     _tl4196942693_)
                                                    (___kont4496844969_
                                                     _hd4197042690_
                                                     _pred4196842682_
                                                     _hd4195242630_)
                                                    (___match4513845139_
                                                     _e4195342626_
                                                     _hd4195242630_
                                                     _tl4195142633_
                                                     _e4195642636_
                                                     _hd4195542640_
                                                     _tl4195442643_
                                                     _e4197142686_
                                                     _hd4197042690_
                                                     _tl4196942693_))))
                                            (___match4511845119_
                                             _e4195342626_
                                             _hd4195242630_
                                             _tl4195142633_
                                             _e4195642636_
                                             _hd4195542640_
                                             _tl4195442643_)))))))
                        (_loop4196342662_ _target4196042656_ '())))))
              (if (gx#stx-pair? ___stx4496544966_)
                  (let ((_e4195342626_ (gx#syntax-e ___stx4496544966_)))
                    (let ((_tl4195142633_
                           (let () (declare (not safe)) (##cdr _e4195342626_)))
                          (_hd4195242630_
                           (let ()
                             (declare (not safe))
                             (##car _e4195342626_))))
                      (if (gx#stx-pair? _tl4195142633_)
                          (let ((_e4195642636_ (gx#syntax-e _tl4195142633_)))
                            (let ((_tl4195442643_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4195642636_)))
                                  (_hd4195542640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4195642636_))))
                              (if (gx#stx-pair? _hd4195542640_)
                                  (let ((_e4195942646_
                                         (gx#syntax-e _hd4195542640_)))
                                    (let ((_tl4195742653_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4195942646_)))
                                          (_hd4195842650_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4195942646_))))
                                      (if (gx#identifier? _hd4195842650_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45984_|
                                               _hd4195842650_)
                                              (if (gx#stx-pair/null?
                                                   _tl4195742653_)
                                                  (let ((___splice4497044971_
                                                         (gx#syntax-split-splice
                                                          _tl4195742653_
                                                          '0)))
                                                    (let ((_tl4196242659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4497044971_
                                                              '1)))
                                                          (_target4196042656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4497044971_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4196242659_)
                                                          (___match4501845019_
                                                           _e4195342626_
                                                           _hd4195242630_
                                                           _tl4195142633_
                                                           _e4195642636_
                                                           _hd4195542640_
                                                           _tl4195442643_
                                                           _e4195942646_
                                                           _hd4195842650_
                                                           _tl4195742653_
                                                           ___splice4497044971_
                                                           _target4196042656_
                                                           _tl4196242659_)
                                                          (if (gx#stx-pair?
                                                               _tl4195442643_)
                                                              (let ((_e4202442402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl4195442643_)))
                        (let ((_tl4202242409_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4202442402_)))
                              (_hd4202342406_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4202442402_))))
                          (if (gx#stx-null? _tl4202242409_)
                              (___kont4497844979_
                               _hd4202342406_
                               _hd4195542640_)
                              (if (gx#identifier? _hd4202342406_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45981_|
                                       _hd4202342406_)
                                      (if (gx#stx-pair? _tl4202242409_)
                                          (let ((_e4204742302_
                                                 (gx#syntax-e _tl4202242409_)))
                                            (let ((_tl4204542309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4204742302_)))
                                                  (_hd4204642306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4204742302_))))
                                              (if (gx#stx-null? _tl4204542309_)
                                                  (___kont4498244983_
                                                   _hd4204642306_
                                                   _hd4195542640_
                                                   _hd4195242630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4194642092_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))
                                  (if (gx#stx-datum? _hd4202342406_)
                                      (let ((_e4206042229_
                                             (gx#stx-e _hd4202342406_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4206042229_ '::))
                                            (if (gx#stx-pair? _tl4202242409_)
                                                (let ((_e4206342233_
                                                       (gx#syntax-e
                                                        _tl4202242409_)))
                                                  (let ((_tl4206142240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4206342233_)))
                                                        (_hd4206242237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4206342233_))))
                                                    (if (gx#stx-null?
                                                         _tl4206142240_)
                                                        (___kont4498444985_
                                                         _hd4206242237_
                                                         _hd4195542640_
                                                         _hd4195242630_)
                                                        (if (gx#stx-pair?
                                                             _tl4206142240_)
                                                            (let ((_e4208342143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4206142240_)))
                      (let ((_tl4208142150_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4208342143_)))
                            (_hd4208242147_
                             (let ()
                               (declare (not safe))
                               (##car _e4208342143_))))
                        (if (gx#identifier? _hd4208242147_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45980_|
                                 _hd4208242147_)
                                (if (gx#stx-pair? _tl4208142150_)
                                    (let ((_e4208642153_
                                           (gx#syntax-e _tl4208142150_)))
                                      (let ((_tl4208442160_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4208642153_)))
                                            (_hd4208542157_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4208642153_))))
                                        (if (gx#stx-null? _tl4208442160_)
                                            (___kont4498644987_
                                             _hd4208542157_
                                             _hd4206242237_
                                             _hd4195542640_
                                             _hd4195242630_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))
                                (let () (declare (not safe)) (_g4194642092_)))
                            (let () (declare (not safe)) (_g4194642092_)))))
                    (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))))))
                      (if (gx#stx-null? _tl4195442643_)
                          (___kont4498044981_ _hd4195542640_ _hd4195242630_)
                          (let () (declare (not safe)) (_g4194642092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4195442643_)
                                                      (let ((_e4202442402_
                                                             (gx#syntax-e
                                                              _tl4195442643_)))
                                                        (let ((_tl4202242409_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4202442402_)))
                      (_hd4202342406_
                       (let () (declare (not safe)) (##car _e4202442402_))))
                  (if (gx#stx-null? _tl4202242409_)
                      (___kont4497844979_ _hd4202342406_ _hd4195542640_)
                      (if (gx#identifier? _hd4202342406_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45981_|
                               _hd4202342406_)
                              (if (gx#stx-pair? _tl4202242409_)
                                  (let ((_e4204742302_
                                         (gx#syntax-e _tl4202242409_)))
                                    (let ((_tl4204542309_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4204742302_)))
                                          (_hd4204642306_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4204742302_))))
                                      (if (gx#stx-null? _tl4204542309_)
                                          (___kont4498244983_
                                           _hd4204642306_
                                           _hd4195542640_
                                           _hd4195242630_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))
                              (let () (declare (not safe)) (_g4194642092_)))
                          (if (gx#stx-datum? _hd4202342406_)
                              (let ((_e4206042229_ (gx#stx-e _hd4202342406_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4206042229_ '::))
                                    (if (gx#stx-pair? _tl4202242409_)
                                        (let ((_e4206342233_
                                               (gx#syntax-e _tl4202242409_)))
                                          (let ((_tl4206142240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4206342233_)))
                                                (_hd4206242237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4206342233_))))
                                            (if (gx#stx-null? _tl4206142240_)
                                                (___kont4498444985_
                                                 _hd4206242237_
                                                 _hd4195542640_
                                                 _hd4195242630_)
                                                (if (gx#stx-pair?
                                                     _tl4206142240_)
                                                    (let ((_e4208342143_
                                                           (gx#syntax-e
                                                            _tl4206142240_)))
                                                      (let ((_tl4208142150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4208342143_)))
                    (_hd4208242147_
                     (let () (declare (not safe)) (##car _e4208342143_))))
                (if (gx#identifier? _hd4208242147_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45980_|
                         _hd4208242147_)
                        (if (gx#stx-pair? _tl4208142150_)
                            (let ((_e4208642153_ (gx#syntax-e _tl4208142150_)))
                              (let ((_tl4208442160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208642153_)))
                                    (_hd4208542157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208642153_))))
                                (if (gx#stx-null? _tl4208442160_)
                                    (___kont4498644987_
                                     _hd4208542157_
                                     _hd4206242237_
                                     _hd4195542640_
                                     _hd4195242630_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))))
                            (let () (declare (not safe)) (_g4194642092_)))
                        (let () (declare (not safe)) (_g4194642092_)))
                    (let () (declare (not safe)) (_g4194642092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_))))
                              (let ()
                                (declare (not safe))
                                (_g4194642092_)))))))
              (if (gx#stx-null? _tl4195442643_)
                  (___kont4498044981_ _hd4195542640_ _hd4195242630_)
                  (let () (declare (not safe)) (_g4194642092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45983_|
                                                   _hd4195842650_)
                                                  (if (gx#stx-pair/null?
                                                       _tl4195742653_)
                                                      (let ((___splice4497444975_
                                                             (gx#syntax-split-splice
                                                              _tl4195742653_
                                                              '0)))
                                                        (let ((_tl4198642549_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4497444975_ '1)))
                      (_target4198442546_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4497444975_ '0))))
                  (if (gx#stx-null? _tl4198642549_)
                      (___match4504845049_
                       _e4195342626_
                       _hd4195242630_
                       _tl4195142633_
                       _e4195642636_
                       _hd4195542640_
                       _tl4195442643_
                       _e4195942646_
                       _hd4195842650_
                       _tl4195742653_
                       ___splice4497444975_
                       _target4198442546_
                       _tl4198642549_)
                      (if (gx#stx-pair? _tl4195442643_)
                          (let ((_e4202442402_ (gx#syntax-e _tl4195442643_)))
                            (let ((_tl4202242409_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4202442402_)))
                                  (_hd4202342406_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4202442402_))))
                              (if (gx#stx-null? _tl4202242409_)
                                  (___kont4497844979_
                                   _hd4202342406_
                                   _hd4195542640_)
                                  (if (gx#identifier? _hd4202342406_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45981_|
                                           _hd4202342406_)
                                          (if (gx#stx-pair? _tl4202242409_)
                                              (let ((_e4204742302_
                                                     (gx#syntax-e
                                                      _tl4202242409_)))
                                                (let ((_tl4204542309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4204742302_)))
                                                      (_hd4204642306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4204742302_))))
                                                  (if (gx#stx-null?
                                                       _tl4204542309_)
                                                      (___kont4498244983_
                                                       _hd4204642306_
                                                       _hd4195542640_
                                                       _hd4195242630_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4194642092_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))
                                      (if (gx#stx-datum? _hd4202342406_)
                                          (let ((_e4206042229_
                                                 (gx#stx-e _hd4202342406_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4206042229_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4202242409_)
                                                    (let ((_e4206342233_
                                                           (gx#syntax-e
                                                            _tl4202242409_)))
                                                      (let ((_tl4206142240_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4206342233_)))
                    (_hd4206242237_
                     (let () (declare (not safe)) (##car _e4206342233_))))
                (if (gx#stx-null? _tl4206142240_)
                    (___kont4498444985_
                     _hd4206242237_
                     _hd4195542640_
                     _hd4195242630_)
                    (if (gx#stx-pair? _tl4206142240_)
                        (let ((_e4208342143_ (gx#syntax-e _tl4206142240_)))
                          (let ((_tl4208142150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4208342143_)))
                                (_hd4208242147_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4208342143_))))
                            (if (gx#identifier? _hd4208242147_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45980_|
                                     _hd4208242147_)
                                    (if (gx#stx-pair? _tl4208142150_)
                                        (let ((_e4208642153_
                                               (gx#syntax-e _tl4208142150_)))
                                          (let ((_tl4208442160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4208642153_)))
                                                (_hd4208542157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4208642153_))))
                                            (if (gx#stx-null? _tl4208442160_)
                                                (___kont4498644987_
                                                 _hd4208542157_
                                                 _hd4206242237_
                                                 _hd4195542640_
                                                 _hd4195242630_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4194642092_)))))
                        (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))))))
                          (if (gx#stx-null? _tl4195442643_)
                              (___kont4498044981_
                               _hd4195542640_
                               _hd4195242630_)
                              (let ()
                                (declare (not safe))
                                (_g4194642092_)))))))
              (if (gx#stx-pair? _tl4195442643_)
                  (let ((_e4202442402_ (gx#syntax-e _tl4195442643_)))
                    (let ((_tl4202242409_
                           (let () (declare (not safe)) (##cdr _e4202442402_)))
                          (_hd4202342406_
                           (let ()
                             (declare (not safe))
                             (##car _e4202442402_))))
                      (if (gx#stx-null? _tl4202242409_)
                          (___kont4497844979_ _hd4202342406_ _hd4195542640_)
                          (if (gx#identifier? _hd4202342406_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45981_|
                                   _hd4202342406_)
                                  (if (gx#stx-pair? _tl4202242409_)
                                      (let ((_e4204742302_
                                             (gx#syntax-e _tl4202242409_)))
                                        (let ((_tl4204542309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4204742302_)))
                                              (_hd4204642306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4204742302_))))
                                          (if (gx#stx-null? _tl4204542309_)
                                              (___kont4498244983_
                                               _hd4204642306_
                                               _hd4195542640_
                                               _hd4195242630_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))
                              (if (gx#stx-datum? _hd4202342406_)
                                  (let ((_e4206042229_
                                         (gx#stx-e _hd4202342406_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4206042229_ '::))
                                        (if (gx#stx-pair? _tl4202242409_)
                                            (let ((_e4206342233_
                                                   (gx#syntax-e
                                                    _tl4202242409_)))
                                              (let ((_tl4206142240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4206342233_)))
                                                    (_hd4206242237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4206342233_))))
                                                (if (gx#stx-null?
                                                     _tl4206142240_)
                                                    (___kont4498444985_
                                                     _hd4206242237_
                                                     _hd4195542640_
                                                     _hd4195242630_)
                                                    (if (gx#stx-pair?
                                                         _tl4206142240_)
                                                        (let ((_e4208342143_
                                                               (gx#syntax-e
                                                                _tl4206142240_)))
                                                          (let ((_tl4208142150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4208342143_)))
                        (_hd4208242147_
                         (let () (declare (not safe)) (##car _e4208342143_))))
                    (if (gx#identifier? _hd4208242147_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45980_|
                             _hd4208242147_)
                            (if (gx#stx-pair? _tl4208142150_)
                                (let ((_e4208642153_
                                       (gx#syntax-e _tl4208142150_)))
                                  (let ((_tl4208442160_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4208642153_)))
                                        (_hd4208542157_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4208642153_))))
                                    (if (gx#stx-null? _tl4208442160_)
                                        (___kont4498644987_
                                         _hd4208542157_
                                         _hd4206242237_
                                         _hd4195542640_
                                         _hd4195242630_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))))
                                (let () (declare (not safe)) (_g4194642092_)))
                            (let () (declare (not safe)) (_g4194642092_)))
                        (let () (declare (not safe)) (_g4194642092_)))))
                (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))))))
                  (if (gx#stx-null? _tl4195442643_)
                      (___kont4498044981_ _hd4195542640_ _hd4195242630_)
                      (let () (declare (not safe)) (_g4194642092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45982_|
                                                       _hd4195842650_)
                                                      (if (gx#stx-pair?
                                                           _tl4195742653_)
                                                          (let ((_e4201042466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4195742653_)))
                    (let ((_tl4200842473_
                           (let () (declare (not safe)) (##cdr _e4201042466_)))
                          (_hd4200942470_
                           (let ()
                             (declare (not safe))
                             (##car _e4201042466_))))
                      (if (gx#stx-null? _tl4200842473_)
                          (if (gx#stx-pair? _tl4195442643_)
                              (let ((_e4201342476_
                                     (gx#syntax-e _tl4195442643_)))
                                (let ((_tl4201142483_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4201342476_)))
                                      (_hd4201242480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4201342476_))))
                                  (if (gx#stx-null? _tl4201142483_)
                                      (___kont4497644977_
                                       _hd4201242480_
                                       _hd4200942470_
                                       _hd4195242630_)
                                      (if (gx#identifier? _hd4201242480_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45981_|
                                               _hd4201242480_)
                                              (if (gx#stx-pair? _tl4201142483_)
                                                  (let ((_e4204742302_
                                                         (gx#syntax-e
                                                          _tl4201142483_)))
                                                    (let ((_tl4204542309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4204742302_)))
                                                          (_hd4204642306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4204742302_))))
                                                      (if (gx#stx-null?
                                                           _tl4204542309_)
                                                          (___kont4498244983_
                                                           _hd4204642306_
                                                           _hd4195542640_
                                                           _hd4195242630_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4194642092_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4194642092_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))
                                          (if (gx#stx-datum? _hd4201242480_)
                                              (let ((_e4206042229_
                                                     (gx#stx-e
                                                      _hd4201242480_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4206042229_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4201142483_)
                                                        (let ((_e4206342233_
                                                               (gx#syntax-e
                                                                _tl4201142483_)))
                                                          (let ((_tl4206142240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4206342233_)))
                        (_hd4206242237_
                         (let () (declare (not safe)) (##car _e4206342233_))))
                    (if (gx#stx-null? _tl4206142240_)
                        (___kont4498444985_
                         _hd4206242237_
                         _hd4195542640_
                         _hd4195242630_)
                        (if (gx#stx-pair? _tl4206142240_)
                            (let ((_e4208342143_ (gx#syntax-e _tl4206142240_)))
                              (let ((_tl4208142150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208342143_)))
                                    (_hd4208242147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208342143_))))
                                (if (gx#identifier? _hd4208242147_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45980_|
                                         _hd4208242147_)
                                        (if (gx#stx-pair? _tl4208142150_)
                                            (let ((_e4208642153_
                                                   (gx#syntax-e
                                                    _tl4208142150_)))
                                              (let ((_tl4208442160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4208642153_)))
                                                    (_hd4208542157_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4208642153_))))
                                                (if (gx#stx-null?
                                                     _tl4208442160_)
                                                    (___kont4498644987_
                                                     _hd4208542157_
                                                     _hd4206242237_
                                                     _hd4195542640_
                                                     _hd4195242630_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))))
                            (let () (declare (not safe)) (_g4194642092_))))))
                (let () (declare (not safe)) (_g4194642092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))))))
                              (if (gx#stx-null? _tl4195442643_)
                                  (___kont4498044981_
                                   _hd4195542640_
                                   _hd4195242630_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_))))
                          (if (gx#stx-pair? _tl4195442643_)
                              (let ((_e4202442402_
                                     (gx#syntax-e _tl4195442643_)))
                                (let ((_tl4202242409_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4202442402_)))
                                      (_hd4202342406_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4202442402_))))
                                  (if (gx#stx-null? _tl4202242409_)
                                      (___kont4497844979_
                                       _hd4202342406_
                                       _hd4195542640_)
                                      (if (gx#identifier? _hd4202342406_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45981_|
                                               _hd4202342406_)
                                              (if (gx#stx-pair? _tl4202242409_)
                                                  (let ((_e4204742302_
                                                         (gx#syntax-e
                                                          _tl4202242409_)))
                                                    (let ((_tl4204542309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4204742302_)))
                                                          (_hd4204642306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4204742302_))))
                                                      (if (gx#stx-null?
                                                           _tl4204542309_)
                                                          (___kont4498244983_
                                                           _hd4204642306_
                                                           _hd4195542640_
                                                           _hd4195242630_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4194642092_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4194642092_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))
                                          (if (gx#stx-datum? _hd4202342406_)
                                              (let ((_e4206042229_
                                                     (gx#stx-e
                                                      _hd4202342406_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4206042229_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4202242409_)
                                                        (let ((_e4206342233_
                                                               (gx#syntax-e
                                                                _tl4202242409_)))
                                                          (let ((_tl4206142240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4206342233_)))
                        (_hd4206242237_
                         (let () (declare (not safe)) (##car _e4206342233_))))
                    (if (gx#stx-null? _tl4206142240_)
                        (___kont4498444985_
                         _hd4206242237_
                         _hd4195542640_
                         _hd4195242630_)
                        (if (gx#stx-pair? _tl4206142240_)
                            (let ((_e4208342143_ (gx#syntax-e _tl4206142240_)))
                              (let ((_tl4208142150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4208342143_)))
                                    (_hd4208242147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4208342143_))))
                                (if (gx#identifier? _hd4208242147_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45980_|
                                         _hd4208242147_)
                                        (if (gx#stx-pair? _tl4208142150_)
                                            (let ((_e4208642153_
                                                   (gx#syntax-e
                                                    _tl4208142150_)))
                                              (let ((_tl4208442160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4208642153_)))
                                                    (_hd4208542157_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4208642153_))))
                                                (if (gx#stx-null?
                                                     _tl4208442160_)
                                                    (___kont4498644987_
                                                     _hd4208542157_
                                                     _hd4206242237_
                                                     _hd4195542640_
                                                     _hd4195242630_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))))
                            (let () (declare (not safe)) (_g4194642092_))))))
                (let () (declare (not safe)) (_g4194642092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))))))
                              (if (gx#stx-null? _tl4195442643_)
                                  (___kont4498044981_
                                   _hd4195542640_
                                   _hd4195242630_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))))))
                  (if (gx#stx-pair? _tl4195442643_)
                      (let ((_e4202442402_ (gx#syntax-e _tl4195442643_)))
                        (let ((_tl4202242409_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4202442402_)))
                              (_hd4202342406_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4202442402_))))
                          (if (gx#stx-null? _tl4202242409_)
                              (___kont4497844979_
                               _hd4202342406_
                               _hd4195542640_)
                              (if (gx#identifier? _hd4202342406_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45981_|
                                       _hd4202342406_)
                                      (if (gx#stx-pair? _tl4202242409_)
                                          (let ((_e4204742302_
                                                 (gx#syntax-e _tl4202242409_)))
                                            (let ((_tl4204542309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4204742302_)))
                                                  (_hd4204642306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4204742302_))))
                                              (if (gx#stx-null? _tl4204542309_)
                                                  (___kont4498244983_
                                                   _hd4204642306_
                                                   _hd4195542640_
                                                   _hd4195242630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4194642092_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))
                                  (if (gx#stx-datum? _hd4202342406_)
                                      (let ((_e4206042229_
                                             (gx#stx-e _hd4202342406_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4206042229_ '::))
                                            (if (gx#stx-pair? _tl4202242409_)
                                                (let ((_e4206342233_
                                                       (gx#syntax-e
                                                        _tl4202242409_)))
                                                  (let ((_tl4206142240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4206342233_)))
                                                        (_hd4206242237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4206342233_))))
                                                    (if (gx#stx-null?
                                                         _tl4206142240_)
                                                        (___kont4498444985_
                                                         _hd4206242237_
                                                         _hd4195542640_
                                                         _hd4195242630_)
                                                        (if (gx#stx-pair?
                                                             _tl4206142240_)
                                                            (let ((_e4208342143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4206142240_)))
                      (let ((_tl4208142150_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4208342143_)))
                            (_hd4208242147_
                             (let ()
                               (declare (not safe))
                               (##car _e4208342143_))))
                        (if (gx#identifier? _hd4208242147_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45980_|
                                 _hd4208242147_)
                                (if (gx#stx-pair? _tl4208142150_)
                                    (let ((_e4208642153_
                                           (gx#syntax-e _tl4208142150_)))
                                      (let ((_tl4208442160_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4208642153_)))
                                            (_hd4208542157_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4208642153_))))
                                        (if (gx#stx-null? _tl4208442160_)
                                            (___kont4498644987_
                                             _hd4208542157_
                                             _hd4206242237_
                                             _hd4195542640_
                                             _hd4195242630_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_)))
                                (let () (declare (not safe)) (_g4194642092_)))
                            (let () (declare (not safe)) (_g4194642092_)))))
                    (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))))))
                      (if (gx#stx-null? _tl4195442643_)
                          (___kont4498044981_ _hd4195542640_ _hd4195242630_)
                          (let () (declare (not safe)) (_g4194642092_)))))
              (if (gx#stx-pair? _tl4195442643_)
                  (let ((_e4202442402_ (gx#syntax-e _tl4195442643_)))
                    (let ((_tl4202242409_
                           (let () (declare (not safe)) (##cdr _e4202442402_)))
                          (_hd4202342406_
                           (let ()
                             (declare (not safe))
                             (##car _e4202442402_))))
                      (if (gx#stx-null? _tl4202242409_)
                          (___kont4497844979_ _hd4202342406_ _hd4195542640_)
                          (if (gx#identifier? _hd4202342406_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45981_|
                                   _hd4202342406_)
                                  (if (gx#stx-pair? _tl4202242409_)
                                      (let ((_e4204742302_
                                             (gx#syntax-e _tl4202242409_)))
                                        (let ((_tl4204542309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4204742302_)))
                                              (_hd4204642306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4204742302_))))
                                          (if (gx#stx-null? _tl4204542309_)
                                              (___kont4498244983_
                                               _hd4204642306_
                                               _hd4195542640_
                                               _hd4195242630_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4194642092_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4194642092_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))
                              (if (gx#stx-datum? _hd4202342406_)
                                  (let ((_e4206042229_
                                         (gx#stx-e _hd4202342406_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4206042229_ '::))
                                        (if (gx#stx-pair? _tl4202242409_)
                                            (let ((_e4206342233_
                                                   (gx#syntax-e
                                                    _tl4202242409_)))
                                              (let ((_tl4206142240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4206342233_)))
                                                    (_hd4206242237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4206342233_))))
                                                (if (gx#stx-null?
                                                     _tl4206142240_)
                                                    (___kont4498444985_
                                                     _hd4206242237_
                                                     _hd4195542640_
                                                     _hd4195242630_)
                                                    (if (gx#stx-pair?
                                                         _tl4206142240_)
                                                        (let ((_e4208342143_
                                                               (gx#syntax-e
                                                                _tl4206142240_)))
                                                          (let ((_tl4208142150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4208342143_)))
                        (_hd4208242147_
                         (let () (declare (not safe)) (##car _e4208342143_))))
                    (if (gx#identifier? _hd4208242147_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45980_|
                             _hd4208242147_)
                            (if (gx#stx-pair? _tl4208142150_)
                                (let ((_e4208642153_
                                       (gx#syntax-e _tl4208142150_)))
                                  (let ((_tl4208442160_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4208642153_)))
                                        (_hd4208542157_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4208642153_))))
                                    (if (gx#stx-null? _tl4208442160_)
                                        (___kont4498644987_
                                         _hd4208542157_
                                         _hd4206242237_
                                         _hd4195542640_
                                         _hd4195242630_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_)))))
                                (let () (declare (not safe)) (_g4194642092_)))
                            (let () (declare (not safe)) (_g4194642092_)))
                        (let () (declare (not safe)) (_g4194642092_)))))
                (let () (declare (not safe)) (_g4194642092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4194642092_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))))))
                  (if (gx#stx-null? _tl4195442643_)
                      (___kont4498044981_ _hd4195542640_ _hd4195242630_)
                      (let () (declare (not safe)) (_g4194642092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4195442643_)
                                              (let ((_e4202442402_
                                                     (gx#syntax-e
                                                      _tl4195442643_)))
                                                (let ((_tl4202242409_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4202442402_)))
                                                      (_hd4202342406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4202442402_))))
                                                  (if (gx#stx-null?
                                                       _tl4202242409_)
                                                      (___kont4497844979_
                                                       _hd4202342406_
                                                       _hd4195542640_)
                                                      (if (gx#identifier?
                                                           _hd4202342406_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g45981_|
                                                               _hd4202342406_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4202242409_)
                          (let ((_e4204742302_ (gx#syntax-e _tl4202242409_)))
                            (let ((_tl4204542309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4204742302_)))
                                  (_hd4204642306_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4204742302_))))
                              (if (gx#stx-null? _tl4204542309_)
                                  (___kont4498244983_
                                   _hd4204642306_
                                   _hd4195542640_
                                   _hd4195242630_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4194642092_)))))
                          (let () (declare (not safe)) (_g4194642092_)))
                      (let () (declare (not safe)) (_g4194642092_)))
                  (if (gx#stx-datum? _hd4202342406_)
                      (let ((_e4206042229_ (gx#stx-e _hd4202342406_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e4206042229_ '::))
                            (if (gx#stx-pair? _tl4202242409_)
                                (let ((_e4206342233_
                                       (gx#syntax-e _tl4202242409_)))
                                  (let ((_tl4206142240_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4206342233_)))
                                        (_hd4206242237_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4206342233_))))
                                    (if (gx#stx-null? _tl4206142240_)
                                        (___kont4498444985_
                                         _hd4206242237_
                                         _hd4195542640_
                                         _hd4195242630_)
                                        (if (gx#stx-pair? _tl4206142240_)
                                            (let ((_e4208342143_
                                                   (gx#syntax-e
                                                    _tl4206142240_)))
                                              (let ((_tl4208142150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4208342143_)))
                                                    (_hd4208242147_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4208342143_))))
                                                (if (gx#identifier?
                                                     _hd4208242147_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g45980_|
                                                         _hd4208242147_)
                                                        (if (gx#stx-pair?
                                                             _tl4208142150_)
                                                            (let ((_e4208642153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4208142150_)))
                      (let ((_tl4208442160_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4208642153_)))
                            (_hd4208542157_
                             (let ()
                               (declare (not safe))
                               (##car _e4208642153_))))
                        (if (gx#stx-null? _tl4208442160_)
                            (___kont4498644987_
                             _hd4208542157_
                             _hd4206242237_
                             _hd4195542640_
                             _hd4195242630_)
                            (let () (declare (not safe)) (_g4194642092_)))))
                    (let () (declare (not safe)) (_g4194642092_)))
                (let () (declare (not safe)) (_g4194642092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_))))))
                                (let () (declare (not safe)) (_g4194642092_)))
                            (let () (declare (not safe)) (_g4194642092_))))
                      (let () (declare (not safe)) (_g4194642092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl4195442643_)
                                                  (___kont4498044981_
                                                   _hd4195542640_
                                                   _hd4195242630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4194642092_)))))))
                                  (if (gx#stx-pair? _tl4195442643_)
                                      (let ((_e4202442402_
                                             (gx#syntax-e _tl4195442643_)))
                                        (let ((_tl4202242409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4202442402_)))
                                              (_hd4202342406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4202442402_))))
                                          (if (gx#stx-null? _tl4202242409_)
                                              (___kont4497844979_
                                               _hd4202342406_
                                               _hd4195542640_)
                                              (if (gx#identifier?
                                                   _hd4202342406_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45981_|
                                                       _hd4202342406_)
                                                      (if (gx#stx-pair?
                                                           _tl4202242409_)
                                                          (let ((_e4204742302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4202242409_)))
                    (let ((_tl4204542309_
                           (let () (declare (not safe)) (##cdr _e4204742302_)))
                          (_hd4204642306_
                           (let ()
                             (declare (not safe))
                             (##car _e4204742302_))))
                      (if (gx#stx-null? _tl4204542309_)
                          (___kont4498244983_
                           _hd4204642306_
                           _hd4195542640_
                           _hd4195242630_)
                          (let () (declare (not safe)) (_g4194642092_)))))
                  (let () (declare (not safe)) (_g4194642092_)))
              (let () (declare (not safe)) (_g4194642092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd4202342406_)
                                                      (let ((_e4206042229_
                                                             (gx#stx-e
                                                              _hd4202342406_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e4206042229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl4202242409_)
                        (let ((_e4206342233_ (gx#syntax-e _tl4202242409_)))
                          (let ((_tl4206142240_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4206342233_)))
                                (_hd4206242237_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4206342233_))))
                            (if (gx#stx-null? _tl4206142240_)
                                (___kont4498444985_
                                 _hd4206242237_
                                 _hd4195542640_
                                 _hd4195242630_)
                                (if (gx#stx-pair? _tl4206142240_)
                                    (let ((_e4208342143_
                                           (gx#syntax-e _tl4206142240_)))
                                      (let ((_tl4208142150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4208342143_)))
                                            (_hd4208242147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4208342143_))))
                                        (if (gx#identifier? _hd4208242147_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45980_|
                                                 _hd4208242147_)
                                                (if (gx#stx-pair?
                                                     _tl4208142150_)
                                                    (let ((_e4208642153_
                                                           (gx#syntax-e
                                                            _tl4208142150_)))
                                                      (let ((_tl4208442160_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4208642153_)))
                    (_hd4208542157_
                     (let () (declare (not safe)) (##car _e4208642153_))))
                (if (gx#stx-null? _tl4208442160_)
                    (___kont4498644987_
                     _hd4208542157_
                     _hd4206242237_
                     _hd4195542640_
                     _hd4195242630_)
                    (let () (declare (not safe)) (_g4194642092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4194642092_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4194642092_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4194642092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4194642092_))))))
                        (let () (declare (not safe)) (_g4194642092_)))
                    (let () (declare (not safe)) (_g4194642092_))))
              (let () (declare (not safe)) (_g4194642092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl4195442643_)
                                          (___kont4498044981_
                                           _hd4195542640_
                                           _hd4195242630_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4194642092_)))))))
                          (let () (declare (not safe)) (_g4194642092_)))))
                  (let () (declare (not safe)) (_g4194642092_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx42735_)
        (let* ((___stx4523345234_ _$stx42735_)
               (_g4274042774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4523345234_))))
          (let ((___kont4523645237_
                 (lambda (_L42878_ _L42880_ _L42881_)
                   (let ((__tmp46046 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp45985
                          (let ((__tmp45986
                                 (let ((__tmp45987
                                        (let ((__tmp46045
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp45988
                                               (let ((__tmp45989
                                                      (let ((__tmp45990
                                                             (let ((__tmp46044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp45991
                            (let ((__tmp46036
                                   (let ((__tmp46041
                                          (let ((__tmp46043
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp46042
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L42880_ '()))))
                                            (declare (not safe))
                                            (cons __tmp46043 __tmp46042)))
                                         (__tmp46037
                                          (let ((__tmp46038
                                                 (let ((__tmp46040
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp46039
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42878_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp46040
                                                         __tmp46039))))
                                            (declare (not safe))
                                            (cons __tmp46038 '()))))
                                     (declare (not safe))
                                     (cons __tmp46041 __tmp46037)))
                                  (__tmp45992
                                   (let ((__tmp45993
                                          (let ((__tmp46035
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45994
                                                 (let ((__tmp46033
                                                        (let ((__tmp46034
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp46034
                                                                '())))
                                                       (__tmp45995
                                                        (let ((__tmp45996
                                                               (let ((__tmp46032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp45997
                              (let ((__tmp46031 (gx#datum->syntax '#f '$stx))
                                    (__tmp45998
                                     (let ((__tmp45999
                                            (let ((__tmp46010
                                                   (let ((__tmp46029
                                                          (let ((__tmp46030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp46030)))
                 (__tmp46011
                  (let ((__tmp46012
                         (let ((__tmp46028
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp46013
                                (let ((__tmp46027
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp46014
                                       (let ((__tmp46015
                                              (let ((__tmp46026
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp46016
                                                     (let ((__tmp46022
                                                            (let ((__tmp46025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp46023
                           (let ((__tmp46024 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp46024 '()))))
                      (declare (not safe))
                      (cons __tmp46025 __tmp46023)))
                   (__tmp46017
                    (let ((__tmp46018
                           (let ((__tmp46021
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp46019
                                  (let ((__tmp46020
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp46020 '()))))
                             (declare (not safe))
                             (cons __tmp46021 __tmp46019))))
                      (declare (not safe))
                      (cons __tmp46018 '()))))
               (declare (not safe))
               (cons __tmp46022 __tmp46017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp46026 __tmp46016))))
                                         (declare (not safe))
                                         (cons __tmp46015 '()))))
                                  (declare (not safe))
                                  (cons __tmp46027 __tmp46014))))
                           (declare (not safe))
                           (cons __tmp46028 __tmp46013))))
                    (declare (not safe))
                    (cons __tmp46012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46029
                                                           __tmp46011)))
                                                  (__tmp46000
                                                   (let ((__tmp46001
                                                          (let ((__tmp46009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp46002
                         (let ((__tmp46003
                                (let ((__tmp46008
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp46004
                                       (let ((__tmp46007
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp46005
                                              (let ((__tmp46006
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp46006 '()))))
                                         (declare (not safe))
                                         (cons __tmp46007 __tmp46005))))
                                  (declare (not safe))
                                  (cons __tmp46008 __tmp46004))))
                           (declare (not safe))
                           (cons __tmp46003 '()))))
                    (declare (not safe))
                    (cons __tmp46009 __tmp46002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46001 '()))))
                                              (declare (not safe))
                                              (cons __tmp46010 __tmp46000))))
                                       (declare (not safe))
                                       (cons '() __tmp45999))))
                                (declare (not safe))
                                (cons __tmp46031 __tmp45998))))
                         (declare (not safe))
                         (cons __tmp46032 __tmp45997))))
                  (declare (not safe))
                  (cons __tmp45996 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46033
                                                         __tmp45995))))
                                            (declare (not safe))
                                            (cons __tmp46035 __tmp45994))))
                                     (declare (not safe))
                                     (cons __tmp45993 '()))))
                              (declare (not safe))
                              (cons __tmp46036 __tmp45992))))
                       (declare (not safe))
                       (cons __tmp46044 __tmp45991))))
                (declare (not safe))
                (cons __tmp45990 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp45989))))
                                          (declare (not safe))
                                          (cons __tmp46045 __tmp45988))))
                                   (declare (not safe))
                                   (cons __tmp45987 '()))))
                            (declare (not safe))
                            (cons _L42881_ __tmp45986))))
                     (declare (not safe))
                     (cons __tmp46046 __tmp45985))))
                (___kont4523845239_
                 (lambda (_L42811_ _L42813_ _L42814_)
                   (let ((__tmp46047
                          (let ((__tmp46048
                                 (let ((__tmp46049
                                        (let ((__tmp46050
                                               (let ((__tmp46061
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp46051
                                                      (let ((__tmp46059
                                                             (let ((__tmp46060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp46060 '())))
                    (__tmp46052
                     (let ((__tmp46053
                            (let ((__tmp46058
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp46054
                                   (let ((__tmp46055
                                          (let ((__tmp46056
                                                 (let ((__tmp46057
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp46057 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp46056))))
                                     (declare (not safe))
                                     (cons '#f __tmp46055))))
                              (declare (not safe))
                              (cons __tmp46058 __tmp46054))))
                       (declare (not safe))
                       (cons __tmp46053 '()))))
                (declare (not safe))
                (cons __tmp46059 __tmp46052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46061
                                                       __tmp46051))))
                                          (declare (not safe))
                                          (cons __tmp46050 '()))))
                                   (declare (not safe))
                                   (cons _L42811_ __tmp46049))))
                            (declare (not safe))
                            (cons _L42813_ __tmp46048))))
                     (declare (not safe))
                     (cons _L42814_ __tmp46047)))))
            (let ((___match4526645267_
                   (lambda (_e4274742838_
                            _hd4274642842_
                            _tl4274542845_
                            _e4275042848_
                            _hd4274942852_
                            _tl4274842855_
                            _e4275342858_
                            _hd4275242862_
                            _tl4275142865_
                            _e4275642868_
                            _hd4275542872_
                            _tl4275442875_)
                     (let ((_L42878_ _hd4275542872_)
                           (_L42880_ _hd4275242862_)
                           (_L42881_ _hd4274942852_))
                       (if (gx#identifier? _L42881_)
                           (___kont4523645237_ _L42878_ _L42880_ _L42881_)
                           (let () (declare (not safe)) (_g4274042774_)))))))
              (if (gx#stx-pair? ___stx4523345234_)
                  (let ((_e4274742838_ (gx#syntax-e ___stx4523345234_)))
                    (let ((_tl4274542845_
                           (let () (declare (not safe)) (##cdr _e4274742838_)))
                          (_hd4274642842_
                           (let ()
                             (declare (not safe))
                             (##car _e4274742838_))))
                      (if (gx#stx-pair? _tl4274542845_)
                          (let ((_e4275042848_ (gx#syntax-e _tl4274542845_)))
                            (let ((_tl4274842855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4275042848_)))
                                  (_hd4274942852_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4275042848_))))
                              (if (gx#stx-pair? _tl4274842855_)
                                  (let ((_e4275342858_
                                         (gx#syntax-e _tl4274842855_)))
                                    (let ((_tl4275142865_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4275342858_)))
                                          (_hd4275242862_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4275342858_))))
                                      (if (gx#stx-pair? _tl4275142865_)
                                          (let ((_e4275642868_
                                                 (gx#syntax-e _tl4275142865_)))
                                            (let ((_tl4275442875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4275642868_)))
                                                  (_hd4275542872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4275642868_))))
                                              (if (gx#stx-null? _tl4275442875_)
                                                  (___match4526645267_
                                                   _e4274742838_
                                                   _hd4274642842_
                                                   _tl4274542845_
                                                   _e4275042848_
                                                   _hd4274942852_
                                                   _tl4274842855_
                                                   _e4275342858_
                                                   _hd4275242862_
                                                   _tl4275142865_
                                                   _e4275642868_
                                                   _hd4275542872_
                                                   _tl4275442875_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4274042774_)))))
                                          (if (gx#stx-null? _tl4275142865_)
                                              (___kont4523845239_
                                               _hd4275242862_
                                               _hd4274942852_
                                               _hd4274642842_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4274042774_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4274042774_)))))
                          (let () (declare (not safe)) (_g4274042774_)))))
                  (let () (declare (not safe)) (_g4274042774_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx42903_)
        (let* ((_g4290742922_
                (lambda (_g4290842918_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4290842918_)))
               (_g4290642965_
                (lambda (_g4290842926_)
                  (if (gx#stx-pair? _g4290842926_)
                      (let ((_e4291342929_ (gx#syntax-e _g4290842926_)))
                        (let ((_hd4291242933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4291342929_)))
                              (_tl4291142936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4291342929_))))
                          (if (gx#stx-pair? _tl4291142936_)
                              (let ((_e4291642939_
                                     (gx#syntax-e _tl4291142936_)))
                                (let ((_hd4291542943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4291642939_)))
                                      (_tl4291442946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4291642939_))))
                                  ((lambda (_L42949_ _L42951_)
                                     (let ((__tmp46066
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp46062
                                            (let ((__tmp46063
                                                   (let ((__tmp46064
                                                          (let ((__tmp46065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp46065 _L42949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46064 '()))))
                                              (declare (not safe))
                                              (cons _L42951_ __tmp46063))))
                                       (declare (not safe))
                                       (cons __tmp46066 __tmp46062)))
                                   _tl4291442946_
                                   _hd4291542943_)))
                              (_g4290742922_ _g4290842926_))))
                      (_g4290742922_ _g4290842926_)))))
          (_g4290642965_ _$stx42903_))))))
