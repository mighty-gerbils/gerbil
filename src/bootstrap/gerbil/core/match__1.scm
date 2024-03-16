(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g45279_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45280_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45336_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45337_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45338_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45340_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45341_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45342_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45343_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45344_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45345_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45346_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45347_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45348_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45349_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45729_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45809_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45829_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45830_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45947_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45948_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45949_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45950_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45951_|
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
      (lambda _$args40565_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args40565_)))
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
      (lambda (_stx40562_)
        (if (gx#identifier? _stx40562_)
            (let ((__tmp45264 (gx#syntax-local-value _stx40562_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp45264))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx38868_ _match-stx38870_)
        (letrec ((_parse138872_
                  (lambda (_hd39225_)
                    (let* ((___stx4305243053_ _hd39225_)
                           (_g3925139393_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4305243053_))))
                      (let ((___kont4305543056_
                             (lambda (_L40325_ _L40327_)
                               (let* ((___stx4297242973_ _L40325_)
                                      (_g4034440377_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4297242973_))))
                                 (let ((___kont4297542976_
                                        (lambda ()
                                          (let ((__tmp45265
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L40327_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp45265))))
                                       (___kont4297742978_
                                        (lambda (_L40518_)
                                          (let ((__tmp45266
                                                 (let ((__tmp45267
                                                        (let ((__tmp45268
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse138872_ _L40518_))))
                  (declare (not safe))
                  (cons __tmp45268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40327_
                                                         __tmp45267))))
                                            (declare (not safe))
                                            (cons '?: __tmp45266))))
                                       (___kont4297942980_
                                        (lambda (_L40488_)
                                          (let ((__tmp45269
                                                 (let ((__tmp45270
                                                        (let ((__tmp45271
                                                               (let ((__tmp45272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse138872_ _L40488_))))
                         (declare (not safe))
                         (cons __tmp45272 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp45271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40327_
                                                         __tmp45270))))
                                            (declare (not safe))
                                            (cons '?: __tmp45269))))
                                       (___kont4298142982_
                                        (lambda (_L40439_ _L40441_)
                                          (let ((__tmp45273
                                                 (let ((__tmp45274
                                                        (let ((__tmp45275
                                                               (let ((__tmp45276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45277
                                     (let ((__tmp45278
                                            (let ()
                                              (declare (not safe))
                                              (_parse138872_ _L40439_))))
                                       (declare (not safe))
                                       (cons __tmp45278 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp45277))))
                         (declare (not safe))
                         (cons _L40441_ __tmp45276))))
                  (declare (not safe))
                  (cons ':: __tmp45275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L40327_
                                                         __tmp45274))))
                                            (declare (not safe))
                                            (cons '?: __tmp45273))))
                                       (___kont4298342984_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error38879_ _hd39225_)))))
                                   (let ((_g4034040529_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4297242973_)
                                                (let ((_e4034740508_
                                                       (gx#syntax-e
                                                        ___stx4297242973_)))
                                                  (let ((_tl4034940515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4034740508_)))
                                                        (_hd4034840512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4034740508_))))
                                                    (if (gx#stx-null?
                                                         _tl4034940515_)
                                                        (___kont4297742978_
                                                         _hd4034840512_)
                                                        (if (gx#identifier?
                                                             _hd4034840512_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45279_|
                         _hd4034840512_)
                        (if (gx#stx-pair? _tl4034940515_)
                            (let ((_e4035440478_ (gx#syntax-e _tl4034940515_)))
                              (let ((_tl4035640485_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4035440478_)))
                                    (_hd4035540482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4035440478_))))
                                (if (gx#stx-null? _tl4035640485_)
                                    (___kont4297942980_ _hd4035540482_)
                                    (___kont4298342984_))))
                            (___kont4298342984_))
                        (___kont4298342984_))
                    (if (gx#stx-datum? _hd4034840512_)
                        (let ((_e4036240405_ (gx#stx-e _hd4034840512_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e4036240405_ '::))
                              (if (gx#stx-pair? _tl4034940515_)
                                  (let ((_e4036340409_
                                         (gx#syntax-e _tl4034940515_)))
                                    (let ((_tl4036540416_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4036340409_)))
                                          (_hd4036440413_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4036340409_))))
                                      (if (gx#stx-pair? _tl4036540416_)
                                          (let ((_e4036640419_
                                                 (gx#syntax-e _tl4036540416_)))
                                            (let ((_tl4036840426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4036640419_)))
                                                  (_hd4036740423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4036640419_))))
                                              (if (gx#identifier?
                                                   _hd4036740423_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45280_|
                                                       _hd4036740423_)
                                                      (if (gx#stx-pair?
                                                           _tl4036840426_)
                                                          (let ((_e4036940429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4036840426_)))
                    (let ((_tl4037140436_
                           (let () (declare (not safe)) (##cdr _e4036940429_)))
                          (_hd4037040433_
                           (let ()
                             (declare (not safe))
                             (##car _e4036940429_))))
                      (if (gx#stx-null? _tl4037140436_)
                          (___kont4298142982_ _hd4037040433_ _hd4036440413_)
                          (___kont4298342984_))))
                  (___kont4298342984_))
              (___kont4298342984_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4298342984_))))
                                          (___kont4298342984_))))
                                  (___kont4298342984_))
                              (___kont4298342984_)))
                        (___kont4298342984_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4298342984_)))))
                                     (if (gx#stx-null? ___stx4297242973_)
                                         (___kont4297542976_)
                                         (let ()
                                           (declare (not safe))
                                           (_g4034040529_))))))))
                            (___kont4305743058_
                             (lambda (_L40230_)
                               (let* ((___stx4295442955_ _L40230_)
                                      (_g4024240253_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4295442955_))))
                                 (let ((___kont4295742958_
                                        (lambda (_L40281_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138872_ _L40281_))))
                                       (___kont4295942960_
                                        (lambda ()
                                          (let ((__tmp45281
                                                 (gx#stx-map
                                                  _parse138872_
                                                  _L40230_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp45281)))))
                                   (if (gx#stx-pair? ___stx4295442955_)
                                       (let ((_e4024540271_
                                              (gx#syntax-e ___stx4295442955_)))
                                         (let ((_tl4024740278_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4024540271_)))
                                               (_hd4024640275_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4024540271_))))
                                           (if (gx#stx-null? _tl4024740278_)
                                               (___kont4295742958_
                                                _hd4024640275_)
                                               (___kont4295942960_))))
                                       (___kont4295942960_))))))
                            (___kont4305943060_
                             (lambda (_L40145_)
                               (let* ((___stx4293642937_ _L40145_)
                                      (_g4015740168_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4293642937_))))
                                 (let ((___kont4293942940_
                                        (lambda (_L40196_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138872_ _L40196_))))
                                       (___kont4294142942_
                                        (lambda ()
                                          (let ((__tmp45282
                                                 (gx#stx-map
                                                  _parse138872_
                                                  _L40145_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp45282)))))
                                   (if (gx#stx-pair? ___stx4293642937_)
                                       (let ((_e4016040186_
                                              (gx#syntax-e ___stx4293642937_)))
                                         (let ((_tl4016240193_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4016040186_)))
                                               (_hd4016140190_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4016040186_))))
                                           (if (gx#stx-null? _tl4016240193_)
                                               (___kont4293942940_
                                                _hd4016140190_)
                                               (___kont4294142942_))))
                                       (___kont4294142942_))))))
                            (___kont4306143062_
                             (lambda (_L40115_)
                               (let ((__tmp45283
                                      (let ((__tmp45284
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L40115_))))
                                        (declare (not safe))
                                        (cons __tmp45284 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp45283))))
                            (___kont4306343064_
                             (lambda (_L40071_ _L40073_)
                               (let ((__tmp45285
                                      (let ((__tmp45288
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L40073_)))
                                            (__tmp45286
                                             (let ((__tmp45287
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138872_
                                                       _L40071_))))
                                               (declare (not safe))
                                               (cons __tmp45287 '()))))
                                        (declare (not safe))
                                        (cons __tmp45288 __tmp45286))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45285))))
                            (___kont4306543066_
                             (lambda (_L40015_ _L40017_ _L40018_)
                               (if (gx#stx-null? _L40015_)
                                   (let ((__tmp45289
                                          (let ((__tmp45292
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138872_ _L40018_)))
                                                (__tmp45290
                                                 (let ((__tmp45291
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse138872_
                                                           _L40017_))))
                                                   (declare (not safe))
                                                   (cons __tmp45291 '()))))
                                            (declare (not safe))
                                            (cons __tmp45292 __tmp45290))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45289))
                                   (let ((__tmp45293
                                          (let ((__tmp45299
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138872_ _L40018_)))
                                                (__tmp45294
                                                 (let ((__tmp45295
                                                        (let ((__tmp45296
                                                               (let ((__tmp45298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp45297
                              (let ()
                                (declare (not safe))
                                (cons _L40017_ _L40015_))))
                         (declare (not safe))
                         (cons __tmp45298 __tmp45297))))
                  (declare (not safe))
                  (_parse138872_ __tmp45296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45295 '()))))
                                            (declare (not safe))
                                            (cons __tmp45299 __tmp45294))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp45293)))))
                            (___kont4306743068_
                             (lambda (_L39967_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list38874_ _L39967_))))
                            (___kont4306943070_
                             (lambda (_L39937_)
                               (let ((__tmp45300
                                      (let ((__tmp45301
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L39937_))))
                                        (declare (not safe))
                                        (cons __tmp45301 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45300))))
                            (___kont4307143072_
                             (lambda (_L39900_)
                               (let ((__tmp45302
                                      (let ((__tmp45303
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L39900_))))
                                        (declare (not safe))
                                        (cons __tmp45303 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp45302))))
                            (___kont4307343074_
                             (lambda (_L39876_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138872_ _L39876_))))
                            (___kont4307543076_
                             (lambda (_L39838_)
                               (let ((__tmp45304
                                      (let ((__tmp45305
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38875_
                                                _L39838_))))
                                        (declare (not safe))
                                        (cons __tmp45305 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp45304))))
                            (___kont4307743078_
                             (lambda (_L39810_)
                               (let ((__tmp45306
                                      (let ((__tmp45307
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38875_
                                                _L39810_))))
                                        (declare (not safe))
                                        (cons __tmp45307 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45306))))
                            (___kont4307943080_
                             (lambda (_L39771_)
                               (let ((__tmp45308
                                      (let ((__tmp45309
                                             (let ((__tmp45310
                                                    (foldr (lambda (_g3978439787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3978539790_)
                     (let ()
                       (declare (not safe))
                       (cons _g3978439787_ _g3978539790_)))
                   '()
                   _L39771_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector38875_
                                                __tmp45310))))
                                        (declare (not safe))
                                        (cons __tmp45309 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp45308))))
                            (___kont4308343084_
                             (lambda (_L39717_ _L39719_)
                               (let ((__tmp45311
                                      (let ((__tmp45314
                                             (gx#syntax-local-value _L39719_))
                                            (__tmp45312
                                             (let ((__tmp45313
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector38875_
                                                       _L39717_))))
                                               (declare (not safe))
                                               (cons __tmp45313 '()))))
                                        (declare (not safe))
                                        (cons __tmp45314 __tmp45312))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp45311))))
                            (___kont4308543086_
                             (lambda (_L39687_ _L39689_)
                               (let ((__tmp45315
                                      (let ((__tmp45318
                                             (gx#syntax-local-value _L39689_))
                                            (__tmp45316
                                             (let ((__tmp45317
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body38877_
                                                       _L39687_))))
                                               (declare (not safe))
                                               (cons __tmp45317 '()))))
                                        (declare (not safe))
                                        (cons __tmp45318 __tmp45316))))
                                 (declare (not safe))
                                 (cons 'class: __tmp45315))))
                            (___kont4308743088_
                             (lambda (_L39647_ _L39649_)
                               (let ((__tmp45319
                                      (let ((__tmp45320
                                             (let ((__tmp45325
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp45321
                                                    (let ((__tmp45322
                                                           (let ((__tmp45324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp45323
                          (let () (declare (not safe)) (cons _L39647_ '()))))
                     (declare (not safe))
                     (cons __tmp45324 __tmp45323))))
              (declare (not safe))
              (cons _L39649_ __tmp45322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45325 __tmp45321))))
                                        (declare (not safe))
                                        (cons __tmp45320 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp45319))))
                            (___kont4308943090_
                             (lambda (_L39607_)
                               (let ((__tmp45326
                                      (let ((__tmp45327 (gx#stx-e _L39607_)))
                                        (declare (not safe))
                                        (cons __tmp45327 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45326))))
                            (___kont4309143092_
                             (lambda (_L39567_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq38878_ _L39567_))))
                            (___kont4309343094_
                             (lambda (_L39523_ _L39525_)
                               (let ((__tmp45328
                                      (let ((__tmp45329
                                             (let ((__tmp45330
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138872_
                                                       _L39523_))))
                                               (declare (not safe))
                                               (cons __tmp45330 '()))))
                                        (declare (not safe))
                                        (cons _L39525_ __tmp45329))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp45328))))
                            (___kont4309543096_
                             (lambda (_L39471_)
                               (let ((__tmp45331
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L39471_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd39225_))
                                        (let ((_$e39482_
                                               (gx#stx-source _hd39225_)))
                                          (if _$e39482_
                                              _$e39482_
                                              (gx#stx-source _stx38868_)))))))
                                 (declare (not safe))
                                 (_parse138872_ __tmp45331))))
                            (___kont4309743098_
                             (lambda (_L39445_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4309943100_
                             (lambda (_L39429_)
                               (let ((__tmp45332
                                      (let ()
                                        (declare (not safe))
                                        (cons _L39429_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp45332))))
                            (___kont4310143102_
                             (lambda (_L39411_)
                               (let ((__tmp45333
                                      (let ((__tmp45334 (gx#stx-e _L39411_)))
                                        (declare (not safe))
                                        (cons __tmp45334 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp45333))))
                            (___kont4310343104_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error38879_ _hd39225_)))))
                        (let* ((_g3924939422_
                                (lambda ()
                                  (let ((_L39411_ ___stx4305243053_))
                                    (if (gx#stx-datum? _L39411_)
                                        (___kont4310143102_ _L39411_)
                                        (___kont4310343104_)))))
                               (_g3924839438_
                                (lambda ()
                                  (let ((_L39429_ ___stx4305243053_))
                                    (if (and (gx#identifier? _L39429_)
                                             (let ((__tmp45335
                                                    (gx#ellipsis? _L39429_)))
                                               (declare (not safe))
                                               (not __tmp45335)))
                                        (___kont4309943100_ _L39429_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3924939422_))))))
                               (_g3924739454_
                                (lambda ()
                                  (let ((_L39445_ ___stx4305243053_))
                                    (if (gx#underscore? _L39445_)
                                        (___kont4309743098_ _L39445_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3924839438_))))))
                               (___match4337943380_
                                (lambda (_e3938239461_
                                         _hd3938339465_
                                         _tl3938439468_)
                                  (let ((_L39471_ _hd3938339465_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L39471_))
                                        (___kont4309543096_ _L39471_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3924739454_))))))
                               (___match4331343314_
                                (lambda (_e3935039627_
                                         _hd3935139631_
                                         _tl3935239634_
                                         _e3935339637_
                                         _hd3935439641_
                                         _tl3935539644_)
                                  (let ((_L39647_ _hd3935439641_)
                                        (_L39649_ _hd3935139631_))
                                    (if (and (gx#identifier? _L39649_)
                                             (or (gx#free-identifier=?
                                                  _L39649_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L39649_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L39649_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4308743088_ _L39647_ _L39649_)
                                        (if (gx#identifier? _hd3935139631_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45336_|
                                                 _hd3935139631_)
                                                (___kont4308943090_
                                                 _hd3935439641_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g45337_|
                                                     _hd3935139631_)
                                                    (___kont4309143092_
                                                     _hd3935439641_)
                                                    (___match4337943380_
                                                     _e3935039627_
                                                     _hd3935139631_
                                                     _tl3935239634_)))
                                            (___match4337943380_
                                             _e3935039627_
                                             _hd3935139631_
                                             _tl3935239634_))))))
                               (___match4329943300_
                                (lambda (_e3934539677_
                                         _hd3934639681_
                                         _tl3934739684_)
                                  (let ((_L39687_ _tl3934739684_)
                                        (_L39689_ _hd3934639681_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__0
                                           _L39689_))
                                        (___kont4308543086_ _L39687_ _L39689_)
                                        (if (gx#stx-pair? _tl3934739684_)
                                            (let ((_e3935339637_
                                                   (gx#syntax-e
                                                    _tl3934739684_)))
                                              (let ((_tl3935539644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3935339637_)))
                                                    (_hd3935439641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3935339637_))))
                                                (if (gx#stx-null?
                                                     _tl3935539644_)
                                                    (___match4331343314_
                                                     _e3934539677_
                                                     _hd3934639681_
                                                     _tl3934739684_
                                                     _e3935339637_
                                                     _hd3935439641_
                                                     _tl3935539644_)
                                                    (if (gx#identifier?
                                                         _hd3934639681_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g45336_|
                                                             _hd3934639681_)
                                                            (___match4337943380_
                                                             _e3934539677_
                                                             _hd3934639681_
                                                             _tl3934739684_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g45337_|
                         _hd3934639681_)
                        (___match4337943380_
                         _e3934539677_
                         _hd3934639681_
                         _tl3934739684_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45338_|
                             _hd3934639681_)
                            (if (gx#stx-pair? _tl3935539644_)
                                (let ((_e3937839513_
                                       (gx#syntax-e _tl3935539644_)))
                                  (let ((_tl3938039520_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3937839513_)))
                                        (_hd3937939517_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3937839513_))))
                                    (if (gx#stx-null? _tl3938039520_)
                                        (___kont4309343094_
                                         _hd3937939517_
                                         _hd3935439641_)
                                        (___match4337943380_
                                         _e3934539677_
                                         _hd3934639681_
                                         _tl3934739684_))))
                                (___match4337943380_
                                 _e3934539677_
                                 _hd3934639681_
                                 _tl3934739684_))
                            (___match4337943380_
                             _e3934539677_
                             _hd3934639681_
                             _tl3934739684_))))
                (___match4337943380_
                 _e3934539677_
                 _hd3934639681_
                 _tl3934739684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4337943380_
                                             _e3934539677_
                                             _hd3934639681_
                                             _tl3934739684_))))))
                               (___match4329343294_
                                (lambda (_e3934039707_
                                         _hd3934139711_
                                         _tl3934239714_)
                                  (let ((_L39717_ _tl3934239714_)
                                        (_L39719_ _hd3934139711_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$<MOP:2>#syntax-local-class-type-info?__%
                                           _L39719_
                                           gerbil/core/mop$<MOP:2>#!class-type-struct?))
                                        (___kont4308343084_ _L39717_ _L39719_)
                                        (___match4329943300_
                                         _e3934039707_
                                         _hd3934139711_
                                         _tl3934239714_)))))
                               (___match4328743288_
                                (lambda (_e3932839737_
                                         ___splice4308143082_
                                         _target3932939741_
                                         _tl3933139744_)
                                  (letrec ((_loop3933239747_
                                            (lambda (_hd3933039751_
                                                     _body3933639754_)
                                              (if (gx#stx-pair? _hd3933039751_)
                                                  (let ((_e3933339757_
                                                         (gx#syntax-e
                                                          _hd3933039751_)))
                                                    (let ((_lp-tl3933539764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3933339757_)))
                                                          (_lp-hd3933439761_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3933339757_))))
                                                      (let ((__tmp45339
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd3933439761_ _body3933639754_))))
                (declare (not safe))
                (_loop3933239747_ _lp-tl3933539764_ __tmp45339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body3933739767_
                                                         (reverse _body3933639754_)))
                                                    (___kont4307943080_
                                                     _body3933739767_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop3933239747_
                                       _target3932939741_
                                       '())))))
                               (_g3923939793_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4305243053_)
                                      (let ((_e3932839737_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4305243053_))))
                                        (if (gx#stx-pair/null? _e3932839737_)
                                            (let ((___splice4308143082_
                                                   (gx#syntax-split-splice
                                                    _e3932839737_
                                                    '0)))
                                              (let ((_tl3933139744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4308143082_
                                                        '1)))
                                                    (_target3932939741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4308143082_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3933139744_)
                                                    (___match4328743288_
                                                     _e3932839737_
                                                     ___splice4308143082_
                                                     _target3932939741_
                                                     _tl3933139744_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3924739454_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3924739454_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3924739454_)))))
                               (_g3923539910_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4305243053_)
                                      (let ((_e3931139896_
                                             (unbox (gx#syntax-e
                                                     ___stx4305243053_))))
                                        (___kont4307143072_ _e3931139896_))
                                      (let ()
                                        (declare (not safe))
                                        (_g3923939793_)))))
                               (___match4314143142_
                                (lambda (_e3926640135_
                                         _hd3926740139_
                                         _tl3926840142_)
                                  (let ((_L40145_ _tl3926840142_))
                                    (if (gx#stx-list? _L40145_)
                                        (___kont4305943060_ _L40145_)
                                        (___match4329343294_
                                         _e3926640135_
                                         _hd3926740139_
                                         _tl3926840142_)))))
                               (___match4313143132_
                                (lambda (_e3926240220_
                                         _hd3926340224_
                                         _tl3926440227_)
                                  (let ((_L40230_ _tl3926440227_))
                                    (if (gx#stx-list? _L40230_)
                                        (___kont4305743058_ _L40230_)
                                        (___match4329343294_
                                         _e3926240220_
                                         _hd3926340224_
                                         _tl3926440227_))))))
                          (if (gx#stx-pair? ___stx4305243053_)
                              (let ((_e3925540305_
                                     (gx#syntax-e ___stx4305243053_)))
                                (let ((_tl3925740312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3925540305_)))
                                      (_hd3925640309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3925540305_))))
                                  (if (gx#identifier? _hd3925640309_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45340_|
                                           _hd3925640309_)
                                          (if (gx#stx-pair? _tl3925740312_)
                                              (let ((_e3925840315_
                                                     (gx#syntax-e
                                                      _tl3925740312_)))
                                                (let ((_tl3926040322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3925840315_)))
                                                      (_hd3925940319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3925840315_))))
                                                  (___kont4305543056_
                                                   _tl3926040322_
                                                   _hd3925940319_)))
                                              (___match4329343294_
                                               _e3925540305_
                                               _hd3925640309_
                                               _tl3925740312_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45341_|
                                               _hd3925640309_)
                                              (___match4313143132_
                                               _e3925540305_
                                               _hd3925640309_
                                               _tl3925740312_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45342_|
                                                   _hd3925640309_)
                                                  (___match4314143142_
                                                   _e3925540305_
                                                   _hd3925640309_
                                                   _tl3925740312_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45343_|
                                                       _hd3925640309_)
                                                      (if (gx#stx-pair?
                                                           _tl3925740312_)
                                                          (let ((_e3927340105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3925740312_)))
                    (let ((_tl3927540112_
                           (let () (declare (not safe)) (##cdr _e3927340105_)))
                          (_hd3927440109_
                           (let ()
                             (declare (not safe))
                             (##car _e3927340105_))))
                      (if (gx#stx-null? _tl3927540112_)
                          (___kont4306143062_ _hd3927440109_)
                          (___match4329343294_
                           _e3925540305_
                           _hd3925640309_
                           _tl3925740312_))))
                  (___match4329343294_
                   _e3925540305_
                   _hd3925640309_
                   _tl3925740312_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g45344_|
                   _hd3925640309_)
                  (if (gx#stx-pair? _tl3925740312_)
                      (let ((_e3928140051_ (gx#syntax-e _tl3925740312_)))
                        (let ((_tl3928340058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3928140051_)))
                              (_hd3928240055_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3928140051_))))
                          (if (gx#stx-pair? _tl3928340058_)
                              (let ((_e3928440061_
                                     (gx#syntax-e _tl3928340058_)))
                                (let ((_tl3928640068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3928440061_)))
                                      (_hd3928540065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3928440061_))))
                                  (if (gx#stx-null? _tl3928640068_)
                                      (___kont4306343064_
                                       _hd3928540065_
                                       _hd3928240055_)
                                      (___match4329343294_
                                       _e3925540305_
                                       _hd3925640309_
                                       _tl3925740312_))))
                              (___match4329343294_
                               _e3925540305_
                               _hd3925640309_
                               _tl3925740312_))))
                      (___match4329343294_
                       _e3925540305_
                       _hd3925640309_
                       _tl3925740312_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g45345_|
                       _hd3925640309_)
                      (if (gx#stx-pair? _tl3925740312_)
                          (let ((_e3929339995_ (gx#syntax-e _tl3925740312_)))
                            (let ((_tl3929540002_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3929339995_)))
                                  (_hd3929439999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3929339995_))))
                              (if (gx#stx-pair? _tl3929540002_)
                                  (let ((_e3929640005_
                                         (gx#syntax-e _tl3929540002_)))
                                    (let ((_tl3929840012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3929640005_)))
                                          (_hd3929740009_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3929640005_))))
                                      (___kont4306543066_
                                       _tl3929840012_
                                       _hd3929740009_
                                       _hd3929439999_)))
                                  (___match4329343294_
                                   _e3925540305_
                                   _hd3925640309_
                                   _tl3925740312_))))
                          (___match4329343294_
                           _e3925540305_
                           _hd3925640309_
                           _tl3925740312_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g45346_|
                           _hd3925640309_)
                          (___kont4306743068_ _tl3925740312_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45347_|
                               _hd3925640309_)
                              (if (gx#stx-pair? _tl3925740312_)
                                  (let ((_e3930739927_
                                         (gx#syntax-e _tl3925740312_)))
                                    (let ((_tl3930939934_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3930739927_)))
                                          (_hd3930839931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3930739927_))))
                                      (if (gx#stx-null? _tl3930939934_)
                                          (___kont4306943070_ _hd3930839931_)
                                          (___match4329343294_
                                           _e3925540305_
                                           _hd3925640309_
                                           _tl3925740312_))))
                                  (___match4329343294_
                                   _e3925540305_
                                   _hd3925640309_
                                   _tl3925740312_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45348_|
                                   _hd3925640309_)
                                  (if (gx#stx-pair? _tl3925740312_)
                                      (let ((_e3931639866_
                                             (gx#syntax-e _tl3925740312_)))
                                        (let ((_tl3931839873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3931639866_)))
                                              (_hd3931739870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3931639866_))))
                                          (if (gx#stx-null? _tl3931839873_)
                                              (___kont4307343074_
                                               _hd3931739870_)
                                              (___kont4307543076_
                                               _tl3925740312_))))
                                      (___kont4307543076_ _tl3925740312_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45349_|
                                       _hd3925640309_)
                                      (___kont4307743078_ _tl3925740312_)
                                      (___match4329343294_
                                       _e3925540305_
                                       _hd3925640309_
                                       _tl3925740312_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4329343294_
                                       _e3925540305_
                                       _hd3925640309_
                                       _tl3925740312_))))
                              (let ()
                                (declare (not safe))
                                (_g3923539910_))))))))
                 (_parse-list38874_
                  (lambda (_body39054_)
                    (let* ((___stx4338243383_ _body39054_)
                           (_g3906039089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4338243383_))))
                      (let ((___kont4338543386_
                             (lambda (_L39207_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138872_ _L39207_))))
                            (___kont4338743388_
                             (lambda (_L39159_ _L39161_ _L39162_)
                               (let ((__tmp45350
                                      (let ((__tmp45353
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L39162_)))
                                            (__tmp45351
                                             (let ((__tmp45352
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38874_
                                                       _L39159_))))
                                               (declare (not safe))
                                               (cons __tmp45352 '()))))
                                        (declare (not safe))
                                        (cons __tmp45353 __tmp45351))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp45350))))
                            (___kont4338943390_
                             (lambda (_L39117_ _L39119_)
                               (let ((__tmp45354
                                      (let ((__tmp45357
                                             (let ()
                                               (declare (not safe))
                                               (_parse138872_ _L39119_)))
                                            (__tmp45355
                                             (let ((__tmp45356
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38874_
                                                       _L39117_))))
                                               (declare (not safe))
                                               (cons __tmp45356 '()))))
                                        (declare (not safe))
                                        (cons __tmp45357 __tmp45355))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp45354))))
                            (___kont4339143392_
                             (lambda ()
                               (if (gx#stx-null? _body39054_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp45358
                                              (gx#stx-pair? _body39054_)))
                                         (declare (not safe))
                                         (not __tmp45358))
                                       (let ()
                                         (declare (not safe))
                                         (_parse138872_ _body39054_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error38879_ _body39054_)))))))
                        (let* ((___match4343143432_
                                (lambda (_e3908139107_
                                         _hd3908239111_
                                         _tl3908339114_)
                                  (let ((_L39117_ _tl3908339114_)
                                        (_L39119_ _hd3908239111_))
                                    (if (let ((__tmp45359
                                               (gx#ellipsis? _L39119_)))
                                          (declare (not safe))
                                          (not __tmp45359))
                                        (___kont4338943390_ _L39117_ _L39119_)
                                        (___kont4339143392_)))))
                               (___match4342543426_
                                (lambda (_e3907339139_
                                         _hd3907439143_
                                         _tl3907539146_
                                         _e3907639149_
                                         _hd3907739153_
                                         _tl3907839156_)
                                  (let ((_L39159_ _tl3907839156_)
                                        (_L39161_ _hd3907739153_)
                                        (_L39162_ _hd3907439143_))
                                    (if (gx#ellipsis? _L39161_)
                                        (___kont4338743388_
                                         _L39159_
                                         _L39161_
                                         _L39162_)
                                        (___match4343143432_
                                         _e3907339139_
                                         _hd3907439143_
                                         _tl3907539146_))))))
                          (if (gx#stx-pair? ___stx4338243383_)
                              (let ((_e3906339183_
                                     (gx#syntax-e ___stx4338243383_)))
                                (let ((_tl3906539190_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3906339183_)))
                                      (_hd3906439187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3906339183_))))
                                  (if (gx#stx-datum? _hd3906439187_)
                                      (let ((_e3906639193_
                                             (gx#stx-e _hd3906439187_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3906639193_ '::))
                                            (if (gx#stx-pair? _tl3906539190_)
                                                (let ((_e3906739197_
                                                       (gx#syntax-e
                                                        _tl3906539190_)))
                                                  (let ((_tl3906939204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3906739197_)))
                                                        (_hd3906839201_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3906739197_))))
                                                    (if (gx#stx-null?
                                                         _tl3906939204_)
                                                        (___kont4338543386_
                                                         _hd3906839201_)
                                                        (___match4342543426_
                                                         _e3906339183_
                                                         _hd3906439187_
                                                         _tl3906539190_
                                                         _e3906739197_
                                                         _hd3906839201_
                                                         _tl3906939204_))))
                                                (___match4343143432_
                                                 _e3906339183_
                                                 _hd3906439187_
                                                 _tl3906539190_))
                                            (if (gx#stx-pair? _tl3906539190_)
                                                (let ((_e3907639149_
                                                       (gx#syntax-e
                                                        _tl3906539190_)))
                                                  (let ((_tl3907839156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3907639149_)))
                                                        (_hd3907739153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3907639149_))))
                                                    (___match4342543426_
                                                     _e3906339183_
                                                     _hd3906439187_
                                                     _tl3906539190_
                                                     _e3907639149_
                                                     _hd3907739153_
                                                     _tl3907839156_)))
                                                (___match4343143432_
                                                 _e3906339183_
                                                 _hd3906439187_
                                                 _tl3906539190_))))
                                      (if (gx#stx-pair? _tl3906539190_)
                                          (let ((_e3907639149_
                                                 (gx#syntax-e _tl3906539190_)))
                                            (let ((_tl3907839156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3907639149_)))
                                                  (_hd3907739153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3907639149_))))
                                              (___match4342543426_
                                               _e3906339183_
                                               _hd3906439187_
                                               _tl3906539190_
                                               _e3907639149_
                                               _hd3907739153_
                                               _tl3907839156_)))
                                          (___match4343143432_
                                           _e3906339183_
                                           _hd3906439187_
                                           _tl3906539190_)))))
                              (___kont4339143392_)))))))
                 (_parse-vector38875_
                  (lambda (_body39051_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?38876_ _body39051_))
                        (let ((__tmp45360
                               (let ((__tmp45361
                                      (gx#stx-map _parse138872_ _body39051_)))
                                 (declare (not safe))
                                 (cons __tmp45361 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp45360))
                        (let ((__tmp45362
                               (let ((__tmp45363
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list38874_ _body39051_))))
                                 (declare (not safe))
                                 (cons __tmp45363 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp45362)))))
                 (_simple-vector?38876_
                  (lambda (_body38988_)
                    (let* ((___stx4343443435_ _body38988_)
                           (_g3899239004_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4343443435_))))
                      (let ((___kont4343743438_
                             (lambda (_L39032_ _L39034_)
                               (if (let ((__tmp45364 (gx#ellipsis? _L39034_)))
                                     (declare (not safe))
                                     (not __tmp45364))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?38876_ _L39032_))
                                   '#f)))
                            (___kont4343943440_
                             (lambda () (gx#stx-null? _body38988_))))
                        (if (gx#stx-pair? ___stx4343443435_)
                            (let ((_e3899639022_
                                   (gx#syntax-e ___stx4343443435_)))
                              (let ((_tl3899839029_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3899639022_)))
                                    (_hd3899739026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3899639022_))))
                                (___kont4343743438_
                                 _tl3899839029_
                                 _hd3899739026_)))
                            (___kont4343943440_))))))
                 (_parse-class-body38877_
                  (lambda (_body38897_)
                    (let _recur38900_ ((_rest38903_ _body38897_))
                      (let* ((___stx4345043451_ _rest38903_)
                             (_g3890738923_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4345043451_))))
                        (let ((___kont4345343454_
                               (lambda (_L38961_ _L38963_ _L38964_)
                                 (let ((__tmp45365
                                        (let ((__tmp45367
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse138872_ _L38963_)))
                                              (__tmp45366
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur38900_ _L38961_))))
                                          (declare (not safe))
                                          (cons __tmp45367 __tmp45366))))
                                   (declare (not safe))
                                   (cons _L38964_ __tmp45365))))
                              (___kont4345543456_
                               (lambda ()
                                 (if (gx#stx-null? _rest38903_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error38879_ _rest38903_))))))
                          (let ((___match4346943470_
                                 (lambda (_e3891238941_
                                          _hd3891338945_
                                          _tl3891438948_
                                          _e3891538951_
                                          _hd3891638955_
                                          _tl3891738958_)
                                   (let ((_L38961_ _tl3891738958_)
                                         (_L38963_ _hd3891638955_)
                                         (_L38964_ _hd3891338945_))
                                     (if (gx#stx-keyword? _L38964_)
                                         (___kont4345343454_
                                          _L38961_
                                          _L38963_
                                          _L38964_)
                                         (___kont4345543456_))))))
                            (if (gx#stx-pair? ___stx4345043451_)
                                (let ((_e3891238941_
                                       (gx#syntax-e ___stx4345043451_)))
                                  (let ((_tl3891438948_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3891238941_)))
                                        (_hd3891338945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3891238941_))))
                                    (if (gx#stx-pair? _tl3891438948_)
                                        (let ((_e3891538951_
                                               (gx#syntax-e _tl3891438948_)))
                                          (let ((_tl3891738958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3891538951_)))
                                                (_hd3891638955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3891538951_))))
                                            (___match4346943470_
                                             _e3891238941_
                                             _hd3891338945_
                                             _tl3891438948_
                                             _e3891538951_
                                             _hd3891638955_
                                             _tl3891738958_)))
                                        (___kont4345543456_))))
                                (___kont4345543456_))))))))
                 (_parse-qq38878_
                  (lambda (_hd38884_)
                    (let ((_g3888638893_
                           (lambda (_g3888738889_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3888738889_))))
                      (declare (not safe))
                      (_g3888638893_ _hd38884_))))
                 (_parse-error38879_
                  (lambda (_hd38881_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx38870_
                               (let ((__tmp45368
                                      (let ((__tmp45369
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd38881_ '()))))
                                        (declare (not safe))
                                        (cons _stx38868_ __tmp45369))))
                                 (declare (not safe))
                                 (cons _match-stx38870_ __tmp45368))
                               (let ((__tmp45370
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd38881_ '()))))
                                 (declare (not safe))
                                 (cons _stx38868_ __tmp45370)))))))
          (let () (declare (not safe)) (_parse138872_ _stx38868_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx40552_)
        (let ((_match-stx40555_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx40552_
           _match-stx40555_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g45372_
        (let ((_g45371_ (let () (declare (not safe)) (##length _g45372_))))
          (cond ((let () (declare (not safe)) (##fx= _g45371_ 1))
                 (apply (lambda (_stx40552_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx40552_)))
                        _g45372_))
                ((let () (declare (not safe)) (##fx= _g45371_ 2))
                 (apply (lambda (_stx40558_ _match-stx40560_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx40558_
                             _match-stx40560_)))
                        _g45372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g45372_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx38853_)
        (call/cc (lambda (_E38856_)
                   (with-exception-handler
                    (let ((_E!38859_ (current-exception-handler)))
                      (lambda (_e38862_)
                        (if (syntax-error? _e38862_)
                            (_E38856_ '#f)
                            (_E!38859_ _e38862_))))
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/match[1]#parse-match-pattern__0|
                         _stx38853_))
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree37588_)
        (letrec ((_loop37591_
                  (lambda (_ptree37878_ _vars37880_ _K37881_)
                    (let* ((___stx4356843569_ _ptree37878_)
                           (_g3789438004_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4356843569_))))
                      (let ((___kont4357143572_
                             (lambda (_L38634_)
                               (let* ((___stx4348843489_ _L38634_)
                                      (_g3865138685_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4348843489_))))
                                 (let ((___kont4349143492_
                                        (lambda (_L38834_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37591_
                                             _L38834_
                                             _vars37880_
                                             _K37881_))))
                                       (___kont4349343494_
                                        (lambda (_L38803_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37591_
                                             _L38803_
                                             _vars37880_
                                             _K37881_))))
                                       (___kont4349543496_
                                        (lambda (_L38751_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop37591_
                                             _L38751_
                                             _vars37880_
                                             _K37881_))))
                                       (___kont4349743498_
                                        (lambda () (_K37881_ _vars37880_))))
                                   (if (gx#stx-pair? ___stx4348843489_)
                                       (let ((_e3865438824_
                                              (gx#syntax-e ___stx4348843489_)))
                                         (let ((_tl3865638831_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3865438824_)))
                                               (_hd3865538828_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3865438824_))))
                                           (if (gx#stx-null? _tl3865638831_)
                                               (___kont4349143492_
                                                _hd3865538828_)
                                               (if (gx#stx-datum?
                                                    _hd3865538828_)
                                                   (let ((_e3866138789_
                                                          (gx#stx-e
                                                           _hd3865538828_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3866138789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl3865638831_)
                     (let ((_e3866238793_ (gx#syntax-e _tl3865638831_)))
                       (let ((_tl3866438800_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3866238793_)))
                             (_hd3866338797_
                              (let ()
                                (declare (not safe))
                                (##car _e3866238793_))))
                         (if (gx#stx-null? _tl3866438800_)
                             (___kont4349343494_ _hd3866338797_)
                             (___kont4349743498_))))
                     (___kont4349743498_))
                 (if (let () (declare (not safe)) (equal? _e3866138789_ '::))
                     (if (gx#stx-pair? _tl3865638831_)
                         (let ((_e3867038717_ (gx#syntax-e _tl3865638831_)))
                           (let ((_tl3867238724_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3867038717_)))
                                 (_hd3867138721_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3867038717_))))
                             (if (gx#stx-pair? _tl3867238724_)
                                 (let ((_e3867338727_
                                        (gx#syntax-e _tl3867238724_)))
                                   (let ((_tl3867538734_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3867338727_)))
                                         (_hd3867438731_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3867338727_))))
                                     (if (gx#stx-datum? _hd3867438731_)
                                         (let ((_e3867638737_
                                                (gx#stx-e _hd3867438731_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e3867638737_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl3867538734_)
                                                   (let ((_e3867738741_
                                                          (gx#syntax-e
                                                           _tl3867538734_)))
                                                     (let ((_tl3867938748_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3867738741_)))
                                                           (_hd3867838745_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3867738741_))))
                                                       (if (gx#stx-null?
                                                            _tl3867938748_)
                                                           (___kont4349543496_
                                                            _hd3867838745_)
                                                           (___kont4349743498_))))
                                                   (___kont4349743498_))
                                               (___kont4349743498_)))
                                         (___kont4349743498_))))
                                 (___kont4349743498_))))
                         (___kont4349743498_))
                     (___kont4349743498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4349743498_)))))
                                       (___kont4349743498_))))))
                            (___kont4357343574_
                             (lambda (_L38521_ _L38523_)
                               (let* ((___stx4347243473_ _L38521_)
                                      (_g3853938551_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4347243473_))))
                                 (let ((___kont4347543476_
                                        (lambda (_L38579_ _L38581_)
                                          (let ((__tmp45373
                                                 (lambda (_g3859338595_)
                                                   (let ((__tmp45374
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L38523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L38579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop37591_
                                                      __tmp45374
                                                      _g3859338595_
                                                      _K37881_)))))
                                            (declare (not safe))
                                            (_loop37591_
                                             _L38581_
                                             _vars37880_
                                             __tmp45373))))
                                       (___kont4347743478_
                                        (lambda () (_K37881_ _vars37880_))))
                                   (if (gx#stx-pair? ___stx4347243473_)
                                       (let ((_e3854338569_
                                              (gx#syntax-e ___stx4347243473_)))
                                         (let ((_tl3854538576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3854338569_)))
                                               (_hd3854438573_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3854338569_))))
                                           (___kont4347543476_
                                            _tl3854538576_
                                            _hd3854438573_)))
                                       (___kont4347743478_))))))
                            (___kont4357543576_
                             (lambda (_L38490_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37591_ _L38490_ _vars37880_ _K37881_))))
                            (___kont4357743578_
                             (lambda (_L38436_ _L38438_)
                               (let ((__tmp45375
                                      (lambda (_g3845338455_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37591_
                                           _L38436_
                                           _g3845338455_
                                           _K37881_)))))
                                 (declare (not safe))
                                 (_loop37591_
                                  _L38438_
                                  _vars37880_
                                  __tmp45375))))
                            (___kont4357943580_
                             (lambda (_L38372_ _L38374_)
                               (let ((__tmp45376
                                      (lambda (_g3838938391_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop37591_
                                           _L38372_
                                           _g3838938391_
                                           _K37881_)))))
                                 (declare (not safe))
                                 (_loop37591_
                                  _L38374_
                                  _vars37880_
                                  __tmp45376))))
                            (___kont4358143582_
                             (lambda (_L38317_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37591_ _L38317_ _vars37880_ _K37881_))))
                            (___kont4358343584_
                             (lambda (_L38267_ _L38269_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37593_
                                  _L38267_
                                  _vars37880_
                                  _K37881_))))
                            (___kont4358543586_
                             (lambda (_L38224_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector37593_
                                  _L38224_
                                  _vars37880_
                                  _K37881_))))
                            (___kont4358743588_
                             (lambda (_L38167_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list37595_
                                  _L38167_
                                  _vars37880_
                                  _K37881_))))
                            (___kont4358943590_
                             (lambda (_L38108_ _L38110_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37591_ _L38108_ _vars37880_ _K37881_))))
                            (___kont4359143592_
                             (lambda (_L38046_)
                               (if (find (lambda (_g3806138063_)
                                           (gx#bound-identifier=?
                                            _g3806138063_
                                            _L38046_))
                                         _vars37880_)
                                   (_K37881_ _vars37880_)
                                   (_K37881_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L38046_ _vars37880_))))))
                            (___kont4359343594_
                             (lambda () (_K37881_ _vars37880_))))
                        (let* ((___match4372543726_
                                (lambda (_e3795138247_
                                         _hd3795238251_
                                         _tl3795338254_
                                         _e3795438257_
                                         _hd3795538261_
                                         _tl3795638264_)
                                  (let ((_L38267_ _hd3795538261_)
                                        (_L38269_ _hd3795238251_))
                                    (if (or (gx#stx-eq? 'values: _L38269_)
                                            (gx#stx-eq? 'vector: _L38269_))
                                        (___kont4358343584_ _L38267_ _L38269_)
                                        (if (gx#stx-datum? _hd3795238251_)
                                            (let ((_e3796138200_
                                                   (gx#stx-e _hd3795238251_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3796138200_
                                                            'struct:))
                                                  (___kont4359343594_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3796138200_
                                                                'class:))
                                                      (___kont4359343594_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e3796138200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4359343594_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3796138200_ 'var:))
                      (___kont4359143592_ _hd3795538261_)
                      (___kont4359343594_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4359343594_))))))
                               (___match4361943620_
                                (lambda (_e3790638511_
                                         _hd3790738515_
                                         _tl3790838518_)
                                  (let ((_L38521_ _tl3790838518_)
                                        (_L38523_ _hd3790738515_))
                                    (if (or (gx#stx-eq? 'and: _L38523_)
                                            (gx#stx-eq? 'or: _L38523_))
                                        (___kont4357343574_ _L38521_ _L38523_)
                                        (if (gx#stx-datum? _hd3790738515_)
                                            (let ((_e3791338476_
                                                   (gx#stx-e _hd3790738515_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3791338476_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl3790838518_)
                                                      (let ((_e3791438480_
                                                             (gx#syntax-e
                                                              _tl3790838518_)))
                                                        (let ((_tl3791638487_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3791438480_)))
                      (_hd3791538484_
                       (let () (declare (not safe)) (##car _e3791438480_))))
                  (if (gx#stx-null? _tl3791638487_)
                      (___kont4357543576_ _hd3791538484_)
                      (___kont4359343594_))))
              (___kont4359343594_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3791338476_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl3790838518_)
                                                          (let ((_e3792338416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3790838518_)))
                    (let ((_tl3792538423_
                           (let () (declare (not safe)) (##cdr _e3792338416_)))
                          (_hd3792438420_
                           (let ()
                             (declare (not safe))
                             (##car _e3792338416_))))
                      (if (gx#stx-pair? _tl3792538423_)
                          (let ((_e3792638426_ (gx#syntax-e _tl3792538423_)))
                            (let ((_tl3792838433_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3792638426_)))
                                  (_hd3792738430_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3792638426_))))
                              (if (gx#stx-null? _tl3792838433_)
                                  (___kont4357743578_
                                   _hd3792738430_
                                   _hd3792438420_)
                                  (___kont4359343594_))))
                          (if (gx#stx-null? _tl3792538423_)
                              (___match4372543726_
                               _e3790638511_
                               _hd3790738515_
                               _tl3790838518_
                               _e3792338416_
                               _hd3792438420_
                               _tl3792538423_)
                              (___kont4359343594_)))))
                  (___kont4359343594_))
              (if (let () (declare (not safe)) (equal? _e3791338476_ 'splice:))
                  (if (gx#stx-pair? _tl3790838518_)
                      (let ((_e3793538352_ (gx#syntax-e _tl3790838518_)))
                        (let ((_tl3793738359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3793538352_)))
                              (_hd3793638356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3793538352_))))
                          (if (gx#stx-pair? _tl3793738359_)
                              (let ((_e3793838362_
                                     (gx#syntax-e _tl3793738359_)))
                                (let ((_tl3794038369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3793838362_)))
                                      (_hd3793938366_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3793838362_))))
                                  (if (gx#stx-null? _tl3794038369_)
                                      (___kont4357943580_
                                       _hd3793938366_
                                       _hd3793638356_)
                                      (___kont4359343594_))))
                              (if (gx#stx-null? _tl3793738359_)
                                  (___match4372543726_
                                   _e3790638511_
                                   _hd3790738515_
                                   _tl3790838518_
                                   _e3793538352_
                                   _hd3793638356_
                                   _tl3793738359_)
                                  (___kont4359343594_)))))
                      (___kont4359343594_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3791338476_ 'box:))
                      (if (gx#stx-pair? _tl3790838518_)
                          (let ((_e3794638307_ (gx#syntax-e _tl3790838518_)))
                            (let ((_tl3794838314_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3794638307_)))
                                  (_hd3794738311_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3794638307_))))
                              (if (gx#stx-null? _tl3794838314_)
                                  (___kont4358143582_ _hd3794738311_)
                                  (___kont4359343594_))))
                          (___kont4359343594_))
                      (if (gx#stx-pair? _tl3790838518_)
                          (let ((_e3795438257_ (gx#syntax-e _tl3790838518_)))
                            (let ((_tl3795638264_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3795438257_)))
                                  (_hd3795538261_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3795438257_))))
                              (if (gx#stx-null? _tl3795638264_)
                                  (___match4372543726_
                                   _e3790638511_
                                   _hd3790738515_
                                   _tl3790838518_
                                   _e3795438257_
                                   _hd3795538261_
                                   _tl3795638264_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e3791338476_ 'struct:))
                                      (if (gx#stx-pair? _tl3795638264_)
                                          (let ((_e3796538214_
                                                 (gx#syntax-e _tl3795638264_)))
                                            (let ((_tl3796738221_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3796538214_)))
                                                  (_hd3796638218_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3796538214_))))
                                              (if (gx#stx-null? _tl3796738221_)
                                                  (___kont4358543586_
                                                   _hd3796638218_)
                                                  (___kont4359343594_))))
                                          (___kont4359343594_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3791338476_ 'class:))
                                          (if (gx#stx-pair? _tl3795638264_)
                                              (let ((_e3797638157_
                                                     (gx#syntax-e
                                                      _tl3795638264_)))
                                                (let ((_tl3797838164_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3797638157_)))
                                                      (_hd3797738161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3797638157_))))
                                                  (if (gx#stx-null?
                                                       _tl3797838164_)
                                                      (___kont4358743588_
                                                       _hd3797738161_)
                                                      (___kont4359343594_))))
                                              (___kont4359343594_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3791338476_ 'apply:))
                                              (if (gx#stx-pair? _tl3795638264_)
                                                  (let ((_e3798838098_
                                                         (gx#syntax-e
                                                          _tl3795638264_)))
                                                    (let ((_tl3799038105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3798838098_)))
                                                          (_hd3798938102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3798838098_))))
                                                      (if (gx#stx-null?
                                                           _tl3799038105_)
                                                          (___kont4358943590_
                                                           _hd3798938102_
                                                           _hd3795538261_)
                                                          (___kont4359343594_))))
                                                  (___kont4359343594_))
                                              (___kont4359343594_)))))))
                          (___kont4359343594_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3790838518_)
                                                (let ((_e3795438257_
                                                       (gx#syntax-e
                                                        _tl3790838518_)))
                                                  (let ((_tl3795638264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3795438257_)))
                                                        (_hd3795538261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3795438257_))))
                                                    (if (gx#stx-null?
                                                         _tl3795638264_)
                                                        (___match4372543726_
                                                         _e3790638511_
                                                         _hd3790738515_
                                                         _tl3790838518_
                                                         _e3795438257_
                                                         _hd3795538261_
                                                         _tl3795638264_)
                                                        (___kont4359343594_))))
                                                (___kont4359343594_))))))))
                          (if (gx#stx-pair? ___stx4356843569_)
                              (let ((_e3789738610_
                                     (gx#syntax-e ___stx4356843569_)))
                                (let ((_tl3789938617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3789738610_)))
                                      (_hd3789838614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3789738610_))))
                                  (if (gx#stx-datum? _hd3789838614_)
                                      (let ((_e3790038620_
                                             (gx#stx-e _hd3789838614_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3790038620_ '?:))
                                            (if (gx#stx-pair? _tl3789938617_)
                                                (let ((_e3790138624_
                                                       (gx#syntax-e
                                                        _tl3789938617_)))
                                                  (let ((_tl3790338631_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3790138624_)))
                                                        (_hd3790238628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3790138624_))))
                                                    (___kont4357143572_
                                                     _tl3790338631_)))
                                                (___match4361943620_
                                                 _e3789738610_
                                                 _hd3789838614_
                                                 _tl3789938617_))
                                            (___match4361943620_
                                             _e3789738610_
                                             _hd3789838614_
                                             _tl3789938617_)))
                                      (___match4361943620_
                                       _e3789738610_
                                       _hd3789838614_
                                       _tl3789938617_))))
                              (___kont4359343594_)))))))
                 (_loop-vector37593_
                  (lambda (_body37754_ _vars37756_ _K37757_)
                    (let* ((___stx4382643827_ _body37754_)
                           (_g3776037783_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4382643827_))))
                      (let ((___kont4382943830_
                             (lambda (_L37860_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list37594_
                                  _L37860_
                                  _vars37756_
                                  _K37757_))))
                            (___kont4383143832_
                             (lambda (_L37814_)
                               (let ()
                                 (declare (not safe))
                                 (_loop37591_
                                  _L37814_
                                  _vars37756_
                                  _K37757_)))))
                        (if (gx#stx-pair? ___stx4382643827_)
                            (let ((_e3776337836_
                                   (gx#syntax-e ___stx4382643827_)))
                              (let ((_tl3776537843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3776337836_)))
                                    (_hd3776437840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3776337836_))))
                                (if (gx#stx-datum? _hd3776437840_)
                                    (let ((_e3776637846_
                                           (gx#stx-e _hd3776437840_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3776637846_ 'simple:))
                                          (if (gx#stx-pair? _tl3776537843_)
                                              (let ((_e3776737850_
                                                     (gx#syntax-e
                                                      _tl3776537843_)))
                                                (let ((_tl3776937857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3776737850_)))
                                                      (_hd3776837854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3776737850_))))
                                                  (if (gx#stx-null?
                                                       _tl3776937857_)
                                                      (___kont4382943830_
                                                       _hd3776837854_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3776037783_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3776037783_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3776637846_ 'list:))
                                              (if (gx#stx-pair? _tl3776537843_)
                                                  (let ((_e3777537804_
                                                         (gx#syntax-e
                                                          _tl3776537843_)))
                                                    (let ((_tl3777737811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3777537804_)))
                                                          (_hd3777637808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3777537804_))))
                                                      (if (gx#stx-null?
                                                           _tl3777737811_)
                                                          (___kont4383143832_
                                                           _hd3777637808_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3776037783_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3776037783_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3776037783_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3776037783_)))))
                            (let () (declare (not safe)) (_g3776037783_)))))))
                 (_loop-list37594_
                  (lambda (_rest37684_ _vars37686_ _K37687_)
                    (let* ((___stx4387643877_ _rest37684_)
                           (_g3769037702_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4387643877_))))
                      (let ((___kont4387943880_
                             (lambda (_L37730_ _L37732_)
                               (let ((__tmp45377
                                      (lambda (_g3774437746_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list37594_
                                           _L37730_
                                           _g3774437746_
                                           _K37687_)))))
                                 (declare (not safe))
                                 (_loop37591_
                                  _L37732_
                                  _vars37686_
                                  __tmp45377))))
                            (___kont4388143882_
                             (lambda () (_K37687_ _vars37686_))))
                        (if (gx#stx-pair? ___stx4387643877_)
                            (let ((_e3769437720_
                                   (gx#syntax-e ___stx4387643877_)))
                              (let ((_tl3769637727_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3769437720_)))
                                    (_hd3769537724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3769437720_))))
                                (___kont4387943880_
                                 _tl3769637727_
                                 _hd3769537724_)))
                            (___kont4388143882_))))))
                 (_loop-class-list37595_
                  (lambda (_rest37597_ _vars37599_ _K37600_)
                    (let* ((___stx4389243893_ _rest37597_)
                           (_g3760337618_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4389243893_))))
                      (let ((___kont4389543896_
                             (lambda (_L37656_ _L37658_)
                               (let ((__tmp45378
                                      (lambda (_g3767437676_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list37595_
                                           _L37656_
                                           _g3767437676_
                                           _K37600_)))))
                                 (declare (not safe))
                                 (_loop37591_
                                  _L37658_
                                  _vars37599_
                                  __tmp45378))))
                            (___kont4389743898_
                             (lambda () (_K37600_ _vars37599_))))
                        (if (gx#stx-pair? ___stx4389243893_)
                            (let ((_e3760737636_
                                   (gx#syntax-e ___stx4389243893_)))
                              (let ((_tl3760937643_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3760737636_)))
                                    (_hd3760837640_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3760737636_))))
                                (if (gx#stx-pair? _tl3760937643_)
                                    (let ((_e3761037646_
                                           (gx#syntax-e _tl3760937643_)))
                                      (let ((_tl3761237653_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3761037646_)))
                                            (_hd3761137650_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3761037646_))))
                                        (___kont4389543896_
                                         _tl3761237653_
                                         _hd3761137650_)))
                                    (___kont4389743898_))))
                            (___kont4389743898_)))))))
          (let ()
            (declare (not safe))
            (_loop37591_ _ptree37588_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx34549_ _tgt34551_ _ptree34552_ _K34553_ _E34554_)
        (letrec ((_generate134556_
                  (lambda (_tgt35801_ _ptree35803_ _K35804_ _E35805_)
                    (let* ((_g3580735815_
                            (lambda (_g3580835811_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3580835811_)))
                           (_g3580637584_
                            (lambda (_g3580835819_)
                              ((lambda (_L35822_)
                                 (let ()
                                   (let* ((___stx4412844129_ _ptree35803_)
                                          (_g3584935991_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4412844129_))))
                                     (let ((___kont4413144132_
                                            (lambda (_L37299_ _L37301_)
                                              (let* ((___stx4404644047_
                                                      _L37299_)
                                                     (_g3731837353_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4404644047_))))
                                                (let ((___kont4404944050_
                                                       (lambda ()
                                                         (let ((__tmp45379
                                                                (let ((__tmp45382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45385 (gx#datum->syntax '#f '?))
                                     (__tmp45383
                                      (let ((__tmp45384
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35822_ '()))))
                                        (declare (not safe))
                                        (cons _L37301_ __tmp45384))))
                                 (declare (not safe))
                                 (cons __tmp45385 __tmp45383)))
                              (__tmp45380
                               (let ((__tmp45381
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35805_ '()))))
                                 (declare (not safe))
                                 (cons _K35804_ __tmp45381))))
                          (declare (not safe))
                          (cons __tmp45382 __tmp45380))))
                   (declare (not safe))
                   (cons 'if __tmp45379))))
              (___kont4405144052_
               (lambda (_L37554_)
                 (let ((__tmp45386
                        (let ((__tmp45390
                               (let ((__tmp45393 (gx#datum->syntax '#f '?))
                                     (__tmp45391
                                      (let ((__tmp45392
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35822_ '()))))
                                        (declare (not safe))
                                        (cons _L37301_ __tmp45392))))
                                 (declare (not safe))
                                 (cons __tmp45393 __tmp45391)))
                              (__tmp45387
                               (let ((__tmp45389
                                      (let ()
                                        (declare (not safe))
                                        (_generate134556_
                                         _tgt35801_
                                         _L37554_
                                         _K35804_
                                         _E35805_)))
                                     (__tmp45388
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35805_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45389 __tmp45388))))
                          (declare (not safe))
                          (cons __tmp45390 __tmp45387))))
                   (declare (not safe))
                   (cons 'if __tmp45386))))
              (___kont4405344054_
               (lambda (_L37492_)
                 (let* ((_g3750637514_
                         (lambda (_g3750737510_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3750737510_)))
                        (_g3750537533_
                         (lambda (_g3750737518_)
                           ((lambda (_L37521_)
                              (let ()
                                (let ((__tmp45394
                                       (let ((__tmp45401
                                              (let ((__tmp45402
                                                     (let ((__tmp45403
                                                            (let ((__tmp45404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45405
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35822_ '()))))
                             (declare (not safe))
                             (cons _L37301_ __tmp45405))))
                      (declare (not safe))
                      (cons __tmp45404 '()))))
               (declare (not safe))
               (cons _L37521_ __tmp45403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45402 '())))
                                             (__tmp45395
                                              (let ((__tmp45396
                                                     (let ((__tmp45397
                                                            (let ((__tmp45398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45400
                                  (let ()
                                    (declare (not safe))
                                    (_generate134556_
                                     _L37521_
                                     _L37492_
                                     _K35804_
                                     _E35805_)))
                                 (__tmp45399
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35805_ '()))))
                             (declare (not safe))
                             (cons __tmp45400 __tmp45399))))
                      (declare (not safe))
                      (cons _L37521_ __tmp45398))))
               (declare (not safe))
               (cons 'if __tmp45397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45396 '()))))
                                         (declare (not safe))
                                         (cons __tmp45401 __tmp45395))))
                                  (declare (not safe))
                                  (cons 'let __tmp45394))))
                            _g3750737518_)))
                        (__tmp45406 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3750537533_ __tmp45406))))
              (___kont4405544056_
               (lambda (_L37408_ _L37410_)
                 (let* ((_g3743037438_
                         (lambda (_g3743137434_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3743137434_)))
                        (_g3742937457_
                         (lambda (_g3743137442_)
                           ((lambda (_L37445_)
                              (let ()
                                (let ((__tmp45407
                                       (let ((__tmp45419
                                              (let ((__tmp45422
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp45420
                                                     (let ((__tmp45421
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L35822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L37301_ __tmp45421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45422 __tmp45420)))
                                             (__tmp45408
                                              (let ((__tmp45410
                                                     (let ((__tmp45411
                                                            (let ((__tmp45414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45415
                                  (let ((__tmp45416
                                         (let ((__tmp45417
                                                (let ((__tmp45418
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35822_ '()))))
                                                  (declare (not safe))
                                                  (cons _L37410_ __tmp45418))))
                                           (declare (not safe))
                                           (cons __tmp45417 '()))))
                                    (declare (not safe))
                                    (cons _L37445_ __tmp45416))))
                             (declare (not safe))
                             (cons __tmp45415 '())))
                          (__tmp45412
                           (let ((__tmp45413
                                  (let ()
                                    (declare (not safe))
                                    (_generate134556_
                                     _L37445_
                                     _L37408_
                                     _K35804_
                                     _E35805_))))
                             (declare (not safe))
                             (cons __tmp45413 '()))))
                      (declare (not safe))
                      (cons __tmp45414 __tmp45412))))
               (declare (not safe))
               (cons 'let __tmp45411)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45409
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35805_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45410 __tmp45409))))
                                         (declare (not safe))
                                         (cons __tmp45419 __tmp45408))))
                                  (declare (not safe))
                                  (cons 'if __tmp45407))))
                            _g3743137442_)))
                        (__tmp45423 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3742937457_ __tmp45423)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3731537565_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4404644047_)
                                                               (let ((_e3732137544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4404644047_)))
                         (let ((_tl3732337551_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3732137544_)))
                               (_hd3732237548_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3732137544_))))
                           (if (gx#stx-null? _tl3732337551_)
                               (___kont4405144052_ _hd3732237548_)
                               (if (gx#stx-datum? _hd3732237548_)
                                   (let ((_e3732837478_
                                          (gx#stx-e _hd3732237548_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3732837478_ '=>:))
                                         (if (gx#stx-pair? _tl3732337551_)
                                             (let ((_e3732937482_
                                                    (gx#syntax-e
                                                     _tl3732337551_)))
                                               (let ((_tl3733137489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3732937482_)))
                                                     (_hd3733037486_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3732937482_))))
                                                 (if (gx#stx-null?
                                                      _tl3733137489_)
                                                     (___kont4405344054_
                                                      _hd3733037486_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3731837353_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3731837353_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3732837478_ '::))
                                             (if (gx#stx-pair? _tl3732337551_)
                                                 (let ((_e3733837374_
                                                        (gx#syntax-e
                                                         _tl3732337551_)))
                                                   (let ((_tl3734037381_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3733837374_)))
                                                         (_hd3733937378_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3733837374_))))
                                                     (if (gx#stx-pair?
                                                          _tl3734037381_)
                                                         (let ((_e3734137384_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3734037381_)))
                   (let ((_tl3734337391_
                          (let () (declare (not safe)) (##cdr _e3734137384_)))
                         (_hd3734237388_
                          (let () (declare (not safe)) (##car _e3734137384_))))
                     (if (gx#stx-datum? _hd3734237388_)
                         (let ((_e3734437394_ (gx#stx-e _hd3734237388_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e3734437394_ '=>:))
                               (if (gx#stx-pair? _tl3734337391_)
                                   (let ((_e3734537398_
                                          (gx#syntax-e _tl3734337391_)))
                                     (let ((_tl3734737405_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3734537398_)))
                                           (_hd3734637402_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3734537398_))))
                                       (if (gx#stx-null? _tl3734737405_)
                                           (___kont4405544056_
                                            _hd3734637402_
                                            _hd3733937378_)
                                           (let ()
                                             (declare (not safe))
                                             (_g3731837353_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3731837353_)))
                               (let () (declare (not safe)) (_g3731837353_))))
                         (let () (declare (not safe)) (_g3731837353_)))))
                 (let () (declare (not safe)) (_g3731837353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3731837353_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g3731837353_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3731837353_))))))
                       (let () (declare (not safe)) (_g3731837353_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4404644047_)
                                                        (___kont4404944050_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3731537565_))))))))
                                           (___kont4413344134_
                                            (lambda (_L37196_)
                                              (let* ((___stx4403044031_
                                                      _L37196_)
                                                     (_g3720937221_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4403044031_))))
                                                (let ((___kont4403344034_
                                                       (lambda (_L37249_
                                                                _L37251_)
                                                         (let ((__tmp45424
                                                                (let ((__tmp45425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L37249_))))
                          (declare (not safe))
                          (_generate134556_
                           _tgt35801_
                           __tmp45425
                           _K35804_
                           _E35805_))))
                   (declare (not safe))
                   (_generate134556_
                    _tgt35801_
                    _L37251_
                    __tmp45424
                    _E35805_))))
              (___kont4403544036_ (lambda () _K35804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4403044031_)
                                                      (let ((_e3721337239_
                                                             (gx#syntax-e
                                                              ___stx4403044031_)))
                                                        (let ((_tl3721537246_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3721337239_)))
                      (_hd3721437243_
                       (let () (declare (not safe)) (##car _e3721337239_))))
                  (___kont4403344034_ _tl3721537246_ _hd3721437243_)))
              (___kont4403544036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4413544136_
                                            (lambda (_L37103_)
                                              (let* ((___stx4401444015_
                                                      _L37103_)
                                                     (_g3711637128_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4401444015_))))
                                                (let ((___kont4401744018_
                                                       (lambda (_L37156_
                                                                _L37158_)
                                                         (let ((__tmp45426
                                                                (let ((__tmp45427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L37156_))))
                          (declare (not safe))
                          (_generate134556_
                           _tgt35801_
                           __tmp45427
                           _K35804_
                           _E35805_))))
                   (declare (not safe))
                   (_generate134556_
                    _tgt35801_
                    _L37158_
                    _K35804_
                    __tmp45426))))
              (___kont4401944020_ (lambda () _E35805_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4401444015_)
                                                      (let ((_e3712037146_
                                                             (gx#syntax-e
                                                              ___stx4401444015_)))
                                                        (let ((_tl3712237153_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3712037146_)))
                      (_hd3712137150_
                       (let () (declare (not safe)) (##car _e3712037146_))))
                  (___kont4401744018_ _tl3712237153_ _hd3712137150_)))
              (___kont4401944020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4413744138_
                                            (lambda (_L37068_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate134556_
                                                 _tgt35801_
                                                 _L37068_
                                                 _E35805_
                                                 _K35804_))))
                                           (___kont4413944140_
                                            (lambda (_L36950_ _L36952_)
                                              (let* ((_g3696936984_
                                                      (lambda (_g3697036980_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3697036980_)))
                                                     (_g3696837033_
                                                      (lambda (_g3697036988_)
                                                        (if (gx#stx-pair?
                                                             _g3697036988_)
                                                            (let ((_e3697336991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3697036988_)))
                      (let ((_hd3697436995_
                             (let ()
                               (declare (not safe))
                               (##car _e3697336991_)))
                            (_tl3697536998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3697336991_))))
                        (if (gx#stx-pair? _tl3697536998_)
                            (let ((_e3697637001_ (gx#syntax-e _tl3697536998_)))
                              (let ((_hd3697737005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3697637001_)))
                                    (_tl3697837008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3697637001_))))
                                (if (gx#stx-null? _tl3697837008_)
                                    ((lambda (_L37011_ _L37013_)
                                       (let ()
                                         (let ((__tmp45428
                                                (let ((__tmp45466
                                                       (let ((__tmp45468
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp45467
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L35822_ '()))))
                 (declare (not safe))
                 (cons __tmp45468 __tmp45467)))
              (__tmp45429
               (let ((__tmp45431
                      (let ((_hd-pat37029_ (gx#stx-e _L36952_))
                            (_tl-pat37031_ (gx#stx-e _L36950_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat37029_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat37031_ '(any:))))
                            _K35804_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat37031_ '(any:)))
                                (let ((__tmp45432
                                       (let ((__tmp45435
                                              (let ((__tmp45436
                                                     (let ((__tmp45437
                                                            (let ((__tmp45438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45440 (gx#datum->syntax '#f '##car))
                                 (__tmp45439
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35822_ '()))))
                             (declare (not safe))
                             (cons __tmp45440 __tmp45439))))
                      (declare (not safe))
                      (cons __tmp45438 '()))))
               (declare (not safe))
               (cons _L37013_ __tmp45437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45436 '())))
                                             (__tmp45433
                                              (let ((__tmp45434
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate134556_
                                                        _L37013_
                                                        _L36952_
                                                        _K35804_
                                                        _E35805_))))
                                                (declare (not safe))
                                                (cons __tmp45434 '()))))
                                         (declare (not safe))
                                         (cons __tmp45435 __tmp45433))))
                                  (declare (not safe))
                                  (cons 'let __tmp45432))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat37029_ '(any:)))
                                    (let ((__tmp45441
                                           (let ((__tmp45444
                                                  (let ((__tmp45445
                                                         (let ((__tmp45446
                                                                (let ((__tmp45447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45449 (gx#datum->syntax '#f '##cdr))
                                     (__tmp45448
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35822_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45449 __tmp45448))))
                          (declare (not safe))
                          (cons __tmp45447 '()))))
                   (declare (not safe))
                   (cons _L37011_ __tmp45446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45445 '())))
                                                 (__tmp45442
                                                  (let ((__tmp45443
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate134556_
                                                            _L37011_
                                                            _L36950_
                                                            _K35804_
                                                            _E35805_))))
                                                    (declare (not safe))
                                                    (cons __tmp45443 '()))))
                                             (declare (not safe))
                                             (cons __tmp45444 __tmp45442))))
                                      (declare (not safe))
                                      (cons 'let __tmp45441))
                                    (let ((__tmp45450
                                           (let ((__tmp45454
                                                  (let ((__tmp45461
                                                         (let ((__tmp45462
                                                                (let ((__tmp45463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45465 (gx#datum->syntax '#f '##car))
                                     (__tmp45464
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35822_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45465 __tmp45464))))
                          (declare (not safe))
                          (cons __tmp45463 '()))))
                   (declare (not safe))
                   (cons _L37013_ __tmp45462)))
                (__tmp45455
                 (let ((__tmp45456
                        (let ((__tmp45457
                               (let ((__tmp45458
                                      (let ((__tmp45460
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp45459
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35822_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45460 __tmp45459))))
                                 (declare (not safe))
                                 (cons __tmp45458 '()))))
                          (declare (not safe))
                          (cons _L37011_ __tmp45457))))
                   (declare (not safe))
                   (cons __tmp45456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45461
                                                          __tmp45455)))
                                                 (__tmp45451
                                                  (let ((__tmp45452
                                                         (let ((__tmp45453
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate134556_
                           _L37011_
                           _L36950_
                           _K35804_
                           _E35805_))))
                   (declare (not safe))
                   (_generate134556_ _L37013_ _L36952_ __tmp45453 _E35805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45452 '()))))
                                             (declare (not safe))
                                             (cons __tmp45454 __tmp45451))))
                                      (declare (not safe))
                                      (cons 'let __tmp45450)))))))
                     (__tmp45430
                      (let () (declare (not safe)) (cons _E35805_ '()))))
                 (declare (not safe))
                 (cons __tmp45431 __tmp45430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45466
                                                        __tmp45429))))
                                           (declare (not safe))
                                           (cons 'if __tmp45428))))
                                     _hd3697737005_
                                     _hd3697436995_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3696936984_ _g3697036988_)))))
                            (let ()
                              (declare (not safe))
                              (_g3696936984_ _g3697036988_)))))
                    (let ()
                      (declare (not safe))
                      (_g3696936984_ _g3697036988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45469
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3696837033_ __tmp45469))))
                                           (___kont4414144142_
                                            (lambda ()
                                              (let ((__tmp45470
                                                     (let ((__tmp45473
                                                            (let ((__tmp45475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp45474
                           (let () (declare (not safe)) (cons _L35822_ '()))))
                      (declare (not safe))
                      (cons __tmp45475 __tmp45474)))
                   (__tmp45471
                    (let ((__tmp45472
                           (let () (declare (not safe)) (cons _E35805_ '()))))
                      (declare (not safe))
                      (cons _K35804_ __tmp45472))))
               (declare (not safe))
               (cons __tmp45473 __tmp45471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp45470))))
                                           (___kont4414344144_
                                            (lambda (_L36866_ _L36868_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice34558_
                                                 _tgt35801_
                                                 _L36868_
                                                 _L36866_
                                                 _K35804_
                                                 _E35805_))))
                                           (___kont4414544146_
                                            (lambda (_L36780_)
                                              (let* ((_g3679436802_
                                                      (lambda (_g3679536798_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3679536798_)))
                                                     (_g3679336821_
                                                      (lambda (_g3679536806_)
                                                        ((lambda (_L36809_)
                                                           (let ()
                                                             (let ((__tmp45476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45489
                                   (let ((__tmp45491
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp45490
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35822_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45491 __tmp45490)))
                                  (__tmp45477
                                   (let ((__tmp45479
                                          (let ((__tmp45480
                                                 (let ((__tmp45483
                                                        (let ((__tmp45484
                                                               (let ((__tmp45485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45486
                                     (let ((__tmp45488
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp45487
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35822_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45488 __tmp45487))))
                                (declare (not safe))
                                (cons __tmp45486 '()))))
                         (declare (not safe))
                         (cons _L36809_ __tmp45485))))
                  (declare (not safe))
                  (cons __tmp45484 '())))
               (__tmp45481
                (let ((__tmp45482
                       (let ()
                         (declare (not safe))
                         (_generate134556_
                          _L36809_
                          _L36780_
                          _K35804_
                          _E35805_))))
                  (declare (not safe))
                  (cons __tmp45482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45483
                                                         __tmp45481))))
                                            (declare (not safe))
                                            (cons 'let __tmp45480)))
                                         (__tmp45478
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35805_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45479 __tmp45478))))
                              (declare (not safe))
                              (cons __tmp45489 __tmp45477))))
                       (declare (not safe))
                       (cons 'if __tmp45476))))
                 _g3679536806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45492
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3679336821_ __tmp45492))))
                                           (___kont4414744148_
                                            (lambda (_L36585_)
                                              (let* ((___stx4396443965_
                                                      _L36585_)
                                                     (_g3660036623_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4396443965_))))
                                                (let ((___kont4396743968_
                                                       (lambda (_L36700_)
                                                         (let* ((_g3671436722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3671536718_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3671536718_)))
                        (_g3671336741_
                         (lambda (_g3671536726_)
                           ((lambda (_L36729_)
                              (let ()
                                (let ((__tmp45493
                                       (let ((__tmp45497
                                              (let ((__tmp45503
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp45498
                                                     (let ((__tmp45500
                                                            (let ((__tmp45502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp45501
                           (let () (declare (not safe)) (cons _L35822_ '()))))
                      (declare (not safe))
                      (cons __tmp45502 __tmp45501)))
                   (__tmp45499
                    (let () (declare (not safe)) (cons _L36729_ '()))))
               (declare (not safe))
               (cons __tmp45500 __tmp45499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45503 __tmp45498)))
                                             (__tmp45494
                                              (let ((__tmp45496
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector34559_
                                                        _tgt35801_
                                                        _L36700_
                                                        '0
                                                        _K35804_
                                                        _E35805_)))
                                                    (__tmp45495
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35805_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45496 __tmp45495))))
                                         (declare (not safe))
                                         (cons __tmp45497 __tmp45494))))
                                  (declare (not safe))
                                  (cons 'if __tmp45493))))
                            _g3671536726_)))
                        (__tmp45504 (gx#stx-length _L36700_)))
                   (declare (not safe))
                   (_g3671336741_ __tmp45504))))
              (___kont4396943970_
               (lambda (_L36654_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector34560_
                    _tgt35801_
                    _L36654_
                    'values->list
                    _K35804_
                    _E35805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4396443965_)
                                                      (let ((_e3660336676_
                                                             (gx#syntax-e
                                                              ___stx4396443965_)))
                                                        (let ((_tl3660536683_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3660336676_)))
                      (_hd3660436680_
                       (let () (declare (not safe)) (##car _e3660336676_))))
                  (if (gx#stx-datum? _hd3660436680_)
                      (let ((_e3660636686_ (gx#stx-e _hd3660436680_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3660636686_ 'simple:))
                            (if (gx#stx-pair? _tl3660536683_)
                                (let ((_e3660736690_
                                       (gx#syntax-e _tl3660536683_)))
                                  (let ((_tl3660936697_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3660736690_)))
                                        (_hd3660836694_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3660736690_))))
                                    (if (gx#stx-null? _tl3660936697_)
                                        (___kont4396743968_ _hd3660836694_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3660036623_)))))
                                (let () (declare (not safe)) (_g3660036623_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3660636686_ 'list:))
                                (if (gx#stx-pair? _tl3660536683_)
                                    (let ((_e3661536644_
                                           (gx#syntax-e _tl3660536683_)))
                                      (let ((_tl3661736651_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3661536644_)))
                                            (_hd3661636648_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3661536644_))))
                                        (if (gx#stx-null? _tl3661736651_)
                                            (___kont4396943970_ _hd3661636648_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3660036623_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3660036623_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3660036623_)))))
                      (let () (declare (not safe)) (_g3660036623_)))))
              (let () (declare (not safe)) (_g3660036623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4414944150_
                                            (lambda (_L36390_)
                                              (let* ((___stx4391443915_
                                                      _L36390_)
                                                     (_g3640536428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4391443915_))))
                                                (let ((___kont4391743918_
                                                       (lambda (_L36505_)
                                                         (let* ((_g3651936527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3652036523_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3652036523_)))
                        (_g3651836546_
                         (lambda (_g3652036531_)
                           ((lambda (_L36534_)
                              (let ()
                                (let ((__tmp45505
                                       (let ((__tmp45520
                                              (let ((__tmp45522
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp45521
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L35822_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45522 __tmp45521)))
                                             (__tmp45506
                                              (let ((__tmp45508
                                                     (let ((__tmp45509
                                                            (let ((__tmp45513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45519 (gx#datum->syntax '#f '##fx=))
                                 (__tmp45514
                                  (let ((__tmp45516
                                         (let ((__tmp45518
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp45517
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L35822_ '()))))
                                           (declare (not safe))
                                           (cons __tmp45518 __tmp45517)))
                                        (__tmp45515
                                         (let ()
                                           (declare (not safe))
                                           (cons _L36534_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45516 __tmp45515))))
                             (declare (not safe))
                             (cons __tmp45519 __tmp45514)))
                          (__tmp45510
                           (let ((__tmp45512
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector34559_
                                     _tgt35801_
                                     _L36505_
                                     '0
                                     _K35804_
                                     _E35805_)))
                                 (__tmp45511
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35805_ '()))))
                             (declare (not safe))
                             (cons __tmp45512 __tmp45511))))
                      (declare (not safe))
                      (cons __tmp45513 __tmp45510))))
               (declare (not safe))
               (cons 'if __tmp45509)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45507
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35805_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45508 __tmp45507))))
                                         (declare (not safe))
                                         (cons __tmp45520 __tmp45506))))
                                  (declare (not safe))
                                  (cons 'if __tmp45505))))
                            _g3652036531_)))
                        (__tmp45523 (gx#stx-length _L36505_)))
                   (declare (not safe))
                   (_g3651836546_ __tmp45523))))
              (___kont4391943920_
               (lambda (_L36459_)
                 (let ((__tmp45524
                        (let ((__tmp45528
                               (let ((__tmp45530
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp45529
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35822_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45530 __tmp45529)))
                              (__tmp45525
                               (let ((__tmp45527
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector34560_
                                         _tgt35801_
                                         _L36459_
                                         'vector->list
                                         _K35804_
                                         _E35805_)))
                                     (__tmp45526
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35805_ '()))))
                                 (declare (not safe))
                                 (cons __tmp45527 __tmp45526))))
                          (declare (not safe))
                          (cons __tmp45528 __tmp45525))))
                   (declare (not safe))
                   (cons 'if __tmp45524)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4391443915_)
                                                      (let ((_e3640836481_
                                                             (gx#syntax-e
                                                              ___stx4391443915_)))
                                                        (let ((_tl3641036488_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3640836481_)))
                      (_hd3640936485_
                       (let () (declare (not safe)) (##car _e3640836481_))))
                  (if (gx#stx-datum? _hd3640936485_)
                      (let ((_e3641136491_ (gx#stx-e _hd3640936485_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3641136491_ 'simple:))
                            (if (gx#stx-pair? _tl3641036488_)
                                (let ((_e3641236495_
                                       (gx#syntax-e _tl3641036488_)))
                                  (let ((_tl3641436502_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3641236495_)))
                                        (_hd3641336499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3641236495_))))
                                    (if (gx#stx-null? _tl3641436502_)
                                        (___kont4391743918_ _hd3641336499_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3640536428_)))))
                                (let () (declare (not safe)) (_g3640536428_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3641136491_ 'list:))
                                (if (gx#stx-pair? _tl3641036488_)
                                    (let ((_e3642036449_
                                           (gx#syntax-e _tl3641036488_)))
                                      (let ((_tl3642236456_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3642036449_)))
                                            (_hd3642136453_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3642036449_))))
                                        (if (gx#stx-null? _tl3642236456_)
                                            (___kont4391943920_ _hd3642136453_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3640536428_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3640536428_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3640536428_)))))
                      (let () (declare (not safe)) (_g3640536428_)))))
              (let () (declare (not safe)) (_g3640536428_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4415144152_
                                            (lambda (_L36341_ _L36343_)
                                              (let ((__tmp45531
                                                     (gx#stx-e _L36343_)))
                                                (declare (not safe))
                                                (_generate-struct34561_
                                                 __tmp45531
                                                 _tgt35801_
                                                 _L36341_
                                                 _K35804_
                                                 _E35805_))))
                                           (___kont4415344154_
                                            (lambda (_L36282_ _L36284_)
                                              (let ((__tmp45532
                                                     (gx#stx-e _L36284_)))
                                                (declare (not safe))
                                                (_generate-class34564_
                                                 __tmp45532
                                                 _tgt35801_
                                                 _L36282_
                                                 _K35804_
                                                 _E35805_))))
                                           (___kont4415544156_
                                            (lambda (_L36185_)
                                              (let* ((_g3619936207_
                                                      (lambda (_g3620036203_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3620036203_)))
                                                     (_g3619836226_
                                                      (lambda (_g3620036211_)
                                                        ((lambda (_L36214_)
                                                           (let ()
                                                             (let ((__tmp45533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45536
                                   (let ((__tmp45537
                                          (let ((__tmp45538
                                                 (let ((__tmp45539
                                                        (let ((__tmp45541
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp45540
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L36185_ '()))))
                  (declare (not safe))
                  (cons __tmp45541 __tmp45540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45539 '()))))
                                            (declare (not safe))
                                            (cons _L35822_ __tmp45538))))
                                     (declare (not safe))
                                     (cons _L36214_ __tmp45537)))
                                  (__tmp45534
                                   (let ((__tmp45535
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35805_ '()))))
                                     (declare (not safe))
                                     (cons _K35804_ __tmp45535))))
                              (declare (not safe))
                              (cons __tmp45536 __tmp45534))))
                       (declare (not safe))
                       (cons 'if __tmp45533))))
                 _g3620036211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45542
                                                      (let ((_e36230_
                                                             (gx#stx-e
                                                              _L36185_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e36230_))
                        (keyword? _e36230_)
                        (let () (declare (not safe)) (immediate? _e36230_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e36230_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3619836226_ __tmp45542))))
                                           (___kont4415744158_
                                            (lambda (_L36105_ _L36107_)
                                              (let* ((_g3612336131_
                                                      (lambda (_g3612436127_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3612436127_)))
                                                     (_g3612236150_
                                                      (lambda (_g3612436135_)
                                                        ((lambda (_L36138_)
                                                           (let ()
                                                             (let ((__tmp45543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45546
                                   (let ((__tmp45547
                                          (let ((__tmp45548
                                                 (let ((__tmp45549
                                                        (let ((__tmp45550
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L35822_ '()))))
                  (declare (not safe))
                  (cons _L36107_ __tmp45550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45549 '()))))
                                            (declare (not safe))
                                            (cons _L36138_ __tmp45548))))
                                     (declare (not safe))
                                     (cons __tmp45547 '())))
                                  (__tmp45544
                                   (let ((__tmp45545
                                          (let ()
                                            (declare (not safe))
                                            (_generate134556_
                                             _L36138_
                                             _L36105_
                                             _K35804_
                                             _E35805_))))
                                     (declare (not safe))
                                     (cons __tmp45545 '()))))
                              (declare (not safe))
                              (cons __tmp45546 __tmp45544))))
                       (declare (not safe))
                       (cons 'let __tmp45543))))
                 _g3612436135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45551
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3612236150_ __tmp45551))))
                                           (___kont4415944160_
                                            (lambda (_L36047_)
                                              (let ((__tmp45552
                                                     (let ((__tmp45554
                                                            (let ((__tmp45555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45556
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35822_ '()))))
                             (declare (not safe))
                             (cons _L36047_ __tmp45556))))
                      (declare (not safe))
                      (cons __tmp45555 '())))
                   (__tmp45553
                    (let () (declare (not safe)) (cons _K35804_ '()))))
               (declare (not safe))
               (cons __tmp45554 __tmp45553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp45552))))
                                           (___kont4416144162_
                                            (lambda () _K35804_)))
                                       (if (gx#stx-pair? ___stx4412844129_)
                                           (let ((_e3585337275_
                                                  (gx#syntax-e
                                                   ___stx4412844129_)))
                                             (let ((_tl3585537282_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3585337275_)))
                                                   (_hd3585437279_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3585337275_))))
                                               (if (gx#stx-datum?
                                                    _hd3585437279_)
                                                   (let ((_e3585637285_
                                                          (gx#stx-e
                                                           _hd3585437279_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3585637285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl3585537282_)
                     (let ((_e3585737289_ (gx#syntax-e _tl3585537282_)))
                       (let ((_tl3585937296_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3585737289_)))
                             (_hd3585837293_
                              (let ()
                                (declare (not safe))
                                (##car _e3585737289_))))
                         (___kont4413144132_ _tl3585937296_ _hd3585837293_)))
                     (let () (declare (not safe)) (_g3584935991_)))
                 (if (let () (declare (not safe)) (equal? _e3585637285_ 'and:))
                     (___kont4413344134_ _tl3585537282_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3585637285_ 'or:))
                         (___kont4413544136_ _tl3585537282_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3585637285_ 'not:))
                             (if (gx#stx-pair? _tl3585537282_)
                                 (let ((_e3587537058_
                                        (gx#syntax-e _tl3585537282_)))
                                   (let ((_tl3587737065_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3587537058_)))
                                         (_hd3587637062_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3587537058_))))
                                     (if (gx#stx-null? _tl3587737065_)
                                         (___kont4413744138_ _hd3587637062_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3584935991_)))))
                                 (let () (declare (not safe)) (_g3584935991_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3585637285_ 'cons:))
                                 (if (gx#stx-pair? _tl3585537282_)
                                     (let ((_e3588436930_
                                            (gx#syntax-e _tl3585537282_)))
                                       (let ((_tl3588636937_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3588436930_)))
                                             (_hd3588536934_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3588436930_))))
                                         (if (gx#stx-pair? _tl3588636937_)
                                             (let ((_e3588736940_
                                                    (gx#syntax-e
                                                     _tl3588636937_)))
                                               (let ((_tl3588936947_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3588736940_)))
                                                     (_hd3588836944_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3588736940_))))
                                                 (if (gx#stx-null?
                                                      _tl3588936947_)
                                                     (___kont4413944140_
                                                      _hd3588836944_
                                                      _hd3588536934_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3584935991_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3584935991_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3584935991_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3585637285_ 'null:))
                                     (if (gx#stx-null? _tl3585537282_)
                                         (___kont4414144142_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3584935991_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3585637285_ 'splice:))
                                         (if (gx#stx-pair? _tl3585537282_)
                                             (let ((_e3590036846_
                                                    (gx#syntax-e
                                                     _tl3585537282_)))
                                               (let ((_tl3590236853_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3590036846_)))
                                                     (_hd3590136850_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3590036846_))))
                                                 (if (gx#stx-pair?
                                                      _tl3590236853_)
                                                     (let ((_e3590336856_
                                                            (gx#syntax-e
                                                             _tl3590236853_)))
                                                       (let ((_tl3590536863_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3590336856_)))
                     (_hd3590436860_
                      (let () (declare (not safe)) (##car _e3590336856_))))
                 (if (gx#stx-null? _tl3590536863_)
                     (___kont4414344144_ _hd3590436860_ _hd3590136850_)
                     (let () (declare (not safe)) (_g3584935991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3584935991_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3584935991_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3585637285_ 'box:))
                                             (if (gx#stx-pair? _tl3585537282_)
                                                 (let ((_e3591136770_
                                                        (gx#syntax-e
                                                         _tl3585537282_)))
                                                   (let ((_tl3591336777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3591136770_)))
                                                         (_hd3591236774_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3591136770_))))
                                                     (if (gx#stx-null?
                                                          _tl3591336777_)
                                                         (___kont4414544146_
                                                          _hd3591236774_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3584935991_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3584935991_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e3585637285_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl3585537282_)
                                                     (let ((_e3591936575_
                                                            (gx#syntax-e
                                                             _tl3585537282_)))
                                                       (let ((_tl3592136582_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3591936575_)))
                     (_hd3592036579_
                      (let () (declare (not safe)) (##car _e3591936575_))))
                 (if (gx#stx-null? _tl3592136582_)
                     (___kont4414744148_ _hd3592036579_)
                     (let () (declare (not safe)) (_g3584935991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3584935991_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3585637285_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl3585537282_)
                                                         (let ((_e3592736380_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3585537282_)))
                   (let ((_tl3592936387_
                          (let () (declare (not safe)) (##cdr _e3592736380_)))
                         (_hd3592836384_
                          (let () (declare (not safe)) (##car _e3592736380_))))
                     (if (gx#stx-null? _tl3592936387_)
                         (___kont4414944150_ _hd3592836384_)
                         (let () (declare (not safe)) (_g3584935991_)))))
                 (let () (declare (not safe)) (_g3584935991_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3585637285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl3585537282_)
                     (let ((_e3593636321_ (gx#syntax-e _tl3585537282_)))
                       (let ((_tl3593836328_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3593636321_)))
                             (_hd3593736325_
                              (let ()
                                (declare (not safe))
                                (##car _e3593636321_))))
                         (if (gx#stx-pair? _tl3593836328_)
                             (let ((_e3593936331_
                                    (gx#syntax-e _tl3593836328_)))
                               (let ((_tl3594136338_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3593936331_)))
                                     (_hd3594036335_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3593936331_))))
                                 (if (gx#stx-null? _tl3594136338_)
                                     (___kont4415144152_
                                      _hd3594036335_
                                      _hd3593736325_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3584935991_)))))
                             (let () (declare (not safe)) (_g3584935991_)))))
                     (let () (declare (not safe)) (_g3584935991_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e3585637285_ 'class:))
                     (if (gx#stx-pair? _tl3585537282_)
                         (let ((_e3594836262_ (gx#syntax-e _tl3585537282_)))
                           (let ((_tl3595036269_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3594836262_)))
                                 (_hd3594936266_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3594836262_))))
                             (if (gx#stx-pair? _tl3595036269_)
                                 (let ((_e3595136272_
                                        (gx#syntax-e _tl3595036269_)))
                                   (let ((_tl3595336279_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3595136272_)))
                                         (_hd3595236276_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3595136272_))))
                                     (if (gx#stx-null? _tl3595336279_)
                                         (___kont4415344154_
                                          _hd3595236276_
                                          _hd3594936266_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3584935991_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3584935991_)))))
                         (let () (declare (not safe)) (_g3584935991_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3585637285_ 'datum:))
                         (if (gx#stx-pair? _tl3585537282_)
                             (let ((_e3595936175_
                                    (gx#syntax-e _tl3585537282_)))
                               (let ((_tl3596136182_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3595936175_)))
                                     (_hd3596036179_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3595936175_))))
                                 (if (gx#stx-null? _tl3596136182_)
                                     (___kont4415544156_ _hd3596036179_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3584935991_)))))
                             (let () (declare (not safe)) (_g3584935991_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3585637285_ 'apply:))
                             (if (gx#stx-pair? _tl3585537282_)
                                 (let ((_e3596836085_
                                        (gx#syntax-e _tl3585537282_)))
                                   (let ((_tl3597036092_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3596836085_)))
                                         (_hd3596936089_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3596836085_))))
                                     (if (gx#stx-pair? _tl3597036092_)
                                         (let ((_e3597136095_
                                                (gx#syntax-e _tl3597036092_)))
                                           (let ((_tl3597336102_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3597136095_)))
                                                 (_hd3597236099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3597136095_))))
                                             (if (gx#stx-null? _tl3597336102_)
                                                 (___kont4415744158_
                                                  _hd3597236099_
                                                  _hd3596936089_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3584935991_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3584935991_)))))
                                 (let () (declare (not safe)) (_g3584935991_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3585637285_ 'var:))
                                 (if (gx#stx-pair? _tl3585537282_)
                                     (let ((_e3597936037_
                                            (gx#syntax-e _tl3585537282_)))
                                       (let ((_tl3598136044_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3597936037_)))
                                             (_hd3598036041_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3597936037_))))
                                         (if (gx#stx-null? _tl3598136044_)
                                             (___kont4415944160_
                                              _hd3598036041_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3584935991_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3584935991_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3585637285_ 'any:))
                                     (if (gx#stx-null? _tl3585537282_)
                                         (___kont4416144162_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3584935991_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3584935991_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3584935991_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3584935991_)))))))
                               _g3580835819_))))
                      (declare (not safe))
                      (_g3580637584_ _tgt35801_))))
                 (_generate-splice34558_
                  (lambda (_tgt35173_ _hd35175_ _rest35176_ _K35177_ _E35178_)
                    (let* ((_g3518035197_
                            (lambda (_g3518135193_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3518135193_)))
                           (_g3517935797_
                            (lambda (_g3518135201_)
                              (if (gx#stx-pair/null? _g3518135201_)
                                  (let ((_g45557_
                                         (gx#syntax-split-splice
                                          _g3518135201_
                                          '0)))
                                    (begin
                                      (let ((_g45558_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45557_)
                                                   (##vector-length _g45557_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45558_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45558_)))
                                      (let ((_target3518335204_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45557_ 0)))
                                            (_tl3518535207_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g45557_ 1))))
                                        (if (gx#stx-null? _tl3518535207_)
                                            (letrec ((_loop3518635210_
                                                      (lambda (_hd3518435214_
                                                               _var3519035217_)
                                                        (if (gx#stx-pair?
                                                             _hd3518435214_)
                                                            (let ((_e3518735220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3518435214_)))
                      (let ((_lp-hd3518835224_
                             (let ()
                               (declare (not safe))
                               (##car _e3518735220_)))
                            (_lp-tl3518935227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3518735220_))))
                        (let ((__tmp45559
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3518835224_ _var3519035217_))))
                          (declare (not safe))
                          (_loop3518635210_ _lp-tl3518935227_ __tmp45559))))
                    (let ((_var3519135230_ (reverse _var3519035217_)))
                      ((lambda (_L35234_)
                         (let ()
                           (let* ((_g3525035267_
                                   (lambda (_g3525135263_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3525135263_)))
                                  (_g3524935785_
                                   (lambda (_g3525135271_)
                                     (if (gx#stx-pair/null? _g3525135271_)
                                         (let ((_g45560_
                                                (gx#syntax-split-splice
                                                 _g3525135271_
                                                 '0)))
                                           (begin
                                             (let ((_g45561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g45560_)
                                                          (##vector-length
                                                           _g45560_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g45561_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g45561_)))
                                             (let ((_target3525335274_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45560_
                                                       0)))
                                                   (_tl3525535277_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g45560_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3525535277_)
                                                   (letrec ((_loop3525635280_
                                                             (lambda (_hd3525435284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3526035287_)
                       (if (gx#stx-pair? _hd3525435284_)
                           (let ((_e3525735290_ (gx#syntax-e _hd3525435284_)))
                             (let ((_lp-hd3525835294_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3525735290_)))
                                   (_lp-tl3525935297_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3525735290_))))
                               (let ((__tmp45562
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3525835294_
                                              _var-r3526035287_))))
                                 (declare (not safe))
                                 (_loop3525635280_
                                  _lp-tl3525935297_
                                  __tmp45562))))
                           (let ((_var-r3526135300_
                                  (reverse _var-r3526035287_)))
                             ((lambda (_L35304_)
                                (let ()
                                  (let* ((_g3532135338_
                                          (lambda (_g3532235334_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3532235334_)))
                                         (_g3532035773_
                                          (lambda (_g3532235342_)
                                            (if (gx#stx-pair/null?
                                                 _g3532235342_)
                                                (let ((_g45563_
                                                       (gx#syntax-split-splice
                                                        _g3532235342_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45564_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45563_)
                         (##vector-length _g45563_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45564_ 2)))
                  (error "Context expects 2 values" _g45564_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3532435345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45563_
                                                              0)))
                                                          (_tl3532635348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g45563_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3532635348_)
                                                          (letrec ((_loop3532735351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3532535355_ _init3533135358_)
                              (if (gx#stx-pair? _hd3532535355_)
                                  (let ((_e3532835361_
                                         (gx#syntax-e _hd3532535355_)))
                                    (let ((_lp-hd3532935365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3532835361_)))
                                          (_lp-tl3533035368_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3532835361_))))
                                      (let ((__tmp45565
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3532935365_
                                                     _init3533135358_))))
                                        (declare (not safe))
                                        (_loop3532735351_
                                         _lp-tl3533035368_
                                         __tmp45565))))
                                  (let ((_init3533235371_
                                         (reverse _init3533135358_)))
                                    ((lambda (_L35375_)
                                       (let ()
                                         (let* ((_g3539235400_
                                                 (lambda (_g3539335396_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3539335396_)))
                                                (_g3539135769_
                                                 (lambda (_g3539335404_)
                                                   ((lambda (_L35407_)
                                                      (let ()
                                                        (let* ((_g3542035428_
                                                                (lambda (_g3542135424_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3542135424_)))
                       (_g3541935765_
                        (lambda (_g3542135432_)
                          ((lambda (_L35435_)
                             (let ()
                               (let* ((_g3544835456_
                                       (lambda (_g3544935452_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3544935452_)))
                                      (_g3544735761_
                                       (lambda (_g3544935460_)
                                         ((lambda (_L35463_)
                                            (let ()
                                              (let* ((_g3547635484_
                                                      (lambda (_g3547735480_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3547735480_)))
                                                     (_g3547535757_
                                                      (lambda (_g3547735488_)
                                                        ((lambda (_L35491_)
                                                           (let ()
                                                             (let* ((_g3550435512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3550535508_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3550535508_)))
                            (_g3550335753_
                             (lambda (_g3550535516_)
                               ((lambda (_L35519_)
                                  (let ()
                                    (let* ((_g3553235540_
                                            (lambda (_g3553335536_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3553335536_)))
                                           (_g3553135749_
                                            (lambda (_g3553335544_)
                                              ((lambda (_L35547_)
                                                 (let ()
                                                   (let* ((_g3556035568_
                                                           (lambda (_g3556135564_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3556135564_)))
                                                          (_g3555935745_
                                                           (lambda (_g3556135572_)
                                                             ((lambda (_L35575_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3558835596_
                                  (lambda (_g3558935592_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3558935592_)))
                                 (_g3558735730_
                                  (lambda (_g3558935600_)
                                    ((lambda (_L35603_)
                                       (let ()
                                         (let* ((_g3561635624_
                                                 (lambda (_g3561735620_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3561735620_)))
                                                (_g3561535718_
                                                 (lambda (_g3561735628_)
                                                   ((lambda (_L35631_)
                                                      (let ()
                                                        (let* ((_g3564435652_
                                                                (lambda (_g3564535648_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3564535648_)))
                       (_g3564335714_
                        (lambda (_g3564535656_)
                          ((lambda (_L35659_)
                             (let ()
                               (let ()
                                 (let ((__tmp45614
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp45566
                                        (let ((__tmp45571
                                               (let ((__tmp45606
                                                      (let ((__tmp45607
                                                             (let ((__tmp45608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45613 (gx#datum->syntax '#f 'lambda))
                                  (__tmp45609
                                   (let ((__tmp45611
                                          (let ((__tmp45612
                                                 (foldr (lambda (_g3567335684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3567435687_)
                  (let ()
                    (declare (not safe))
                    (cons _g3567335684_ _g3567435687_)))
                '()
                _L35234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L35547_ __tmp45612)))
                                         (__tmp45610
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35575_ '()))))
                                     (declare (not safe))
                                     (cons __tmp45611 __tmp45610))))
                              (declare (not safe))
                              (cons __tmp45613 __tmp45609))))
                       (declare (not safe))
                       (cons __tmp45608 '()))))
                (declare (not safe))
                (cons _L35435_ __tmp45607)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45572
                                                      (let ((__tmp45597
                                                             (let ((__tmp45598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45599
                                   (let ((__tmp45605
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp45600
                                          (let ((__tmp45602
                                                 (let ((__tmp45603
                                                        (let ((__tmp45604
                                                               (foldr (lambda (_g3567535690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3567635693_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3567535690_ _g3567635693_)))
                              '()
                              _L35304_)))
                  (declare (not safe))
                  (cons _L35547_ __tmp45604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35519_ __tmp45603)))
                                                (__tmp45601
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L35659_ '()))))
                                            (declare (not safe))
                                            (cons __tmp45602 __tmp45601))))
                                     (declare (not safe))
                                     (cons __tmp45605 __tmp45600))))
                              (declare (not safe))
                              (cons __tmp45599 '()))))
                       (declare (not safe))
                       (cons _L35491_ __tmp45598)))
                    (__tmp45573
                     (let ((__tmp45574
                            (let ((__tmp45575
                                   (let ((__tmp45576
                                          (let ((__tmp45596
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45577
                                                 (let ((__tmp45594
                                                        (let ((__tmp45595
                                                               (foldr (lambda (_g3567735696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3567835699_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3567735696_ _g3567835699_)))
                              '()
                              _L35304_)))
                  (declare (not safe))
                  (cons _L35547_ __tmp45595)))
               (__tmp45578
                (let ((__tmp45579
                       (let ((__tmp45593 (gx#datum->syntax '#f 'if))
                             (__tmp45580
                              (let ((__tmp45590
                                     (let ((__tmp45592
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp45591
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35547_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45592 __tmp45591)))
                                    (__tmp45581
                                     (let ((__tmp45583
                                            (let ((__tmp45584
                                                   (let ((__tmp45587
                                                          (let ((__tmp45589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp45588
                         (let () (declare (not safe)) (cons _L35547_ '()))))
                    (declare (not safe))
                    (cons __tmp45589 __tmp45588)))
                 (__tmp45585
                  (let ((__tmp45586
                         (foldr (lambda (_g3567935702_ _g3568035705_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3567935702_ _g3568035705_)))
                                '()
                                _L35304_)))
                    (declare (not safe))
                    (cons _L35547_ __tmp45586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45587
                                                           __tmp45585))))
                                              (declare (not safe))
                                              (cons _L35491_ __tmp45584)))
                                           (__tmp45582
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35631_ '()))))
                                       (declare (not safe))
                                       (cons __tmp45583 __tmp45582))))
                                (declare (not safe))
                                (cons __tmp45590 __tmp45581))))
                         (declare (not safe))
                         (cons __tmp45593 __tmp45580))))
                  (declare (not safe))
                  (cons __tmp45579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45594
                                                         __tmp45578))))
                                            (declare (not safe))
                                            (cons __tmp45596 __tmp45577))))
                                     (declare (not safe))
                                     (cons __tmp45576 '()))))
                              (declare (not safe))
                              (cons _L35463_ __tmp45575))))
                       (declare (not safe))
                       (cons __tmp45574 '()))))
                (declare (not safe))
                (cons __tmp45597 __tmp45573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45606 __tmp45572)))
                                              (__tmp45567
                                               (let ((__tmp45568
                                                      (let ((__tmp45569
                                                             (let ((__tmp45570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g3568135708_ _g3568235711_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g3568135708_ _g3568235711_)))
                                   '()
                                   _L35375_)))
                       (declare (not safe))
                       (cons _L35407_ __tmp45570))))
                (declare (not safe))
                (cons _L35463_ __tmp45569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45568 '()))))
                                          (declare (not safe))
                                          (cons __tmp45571 __tmp45567))))
                                   (declare (not safe))
                                   (cons __tmp45614 __tmp45566)))))
                           _g3564535656_)))
                       (__tmp45615
                        (let ()
                          (declare (not safe))
                          (_generate134556_
                           _L35519_
                           _hd35175_
                           _L35603_
                           _L35631_))))
                  (declare (not safe))
                  (_g3564335714_ __tmp45615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3561735628_)))
                                                (__tmp45616
                                                 (let ((__tmp45617
                                                        (let ((__tmp45618
                                                               (foldr (lambda (_g3572135724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3572235727_)
                                (let ((__tmp45619
                                       (let ((__tmp45621
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp45620
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3572135724_ '()))))
                                         (declare (not safe))
                                         (cons __tmp45621 __tmp45620))))
                                  (declare (not safe))
                                  (cons __tmp45619 _g3572235727_)))
                              '()
                              _L35304_)))
                  (declare (not safe))
                  (cons _L35547_ __tmp45618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L35435_
                                                         __tmp45617))))
                                           (declare (not safe))
                                           (_g3561535718_ __tmp45616))))
                                     _g3558935600_)))
                                 (__tmp45622
                                  (let ((__tmp45623
                                         (let ((__tmp45629
                                                (let ((__tmp45631
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp45630
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35547_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp45631
                                                        __tmp45630)))
                                               (__tmp45624
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L35304_
                                                   _L35234_)
                                                  (foldr (lambda (_g3573335737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3573435740_
                          _g3573535742_)
                   (let ((__tmp45625
                          (let ((__tmp45628 (gx#datum->syntax '#f 'cons))
                                (__tmp45626
                                 (let ((__tmp45627
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3573335737_ '()))))
                                   (declare (not safe))
                                   (cons _g3573435740_ __tmp45627))))
                            (declare (not safe))
                            (cons __tmp45628 __tmp45626))))
                     (declare (not safe))
                     (cons __tmp45625 _g3573535742_)))
                 '()
                 _L35304_
                 _L35234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp45629 __tmp45624))))
                                    (declare (not safe))
                                    (cons _L35463_ __tmp45623))))
                            (declare (not safe))
                            (_g3558735730_ __tmp45622))))
                      _g3556135572_)))
                  (__tmp45632
                   (let ()
                     (declare (not safe))
                     (_generate134556_
                      _L35547_
                      _rest35176_
                      _K35177_
                      _E35178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3555935745_
                                                      __tmp45632))))
                                               _g3553335544_)))
                                           (__tmp45633 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3553135749_ __tmp45633))))
                                _g3550535516_)))
                            (__tmp45634 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3550335753_ __tmp45634))))
                 _g3547735488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45635
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3547535757_ __tmp45635))))
                                          _g3544935460_)))
                                      (__tmp45636 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3544735761_ __tmp45636))))
                           _g3542135432_)))
                       (__tmp45637 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3541935765_ __tmp45637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3539335404_))))
                                           (declare (not safe))
                                           (_g3539135769_ _tgt35173_))))
                                     _init3533235371_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3532735351_ _target3532435345_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3532135338_ _g3532235342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3532135338_
                                                   _g3532235342_)))))
                                         (__tmp45638
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g3577635779_
                                                            _g3577735782_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3577635779_
                                                             _g3577735782_)))
                                                   '()
                                                   _L35234_))
                                           (let ((__tmp45639
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp45639 '())))))
                                    (declare (not safe))
                                    (_g3532035773_ __tmp45638))))
                              _var-r3526135300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3525635280_
                                                        _target3525335274_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3525035267_
                                                      _g3525135271_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3525035267_ _g3525135271_)))))
                                  (__tmp45640
                                   (gx#gentemps
                                    (foldr (lambda (_g3578835791_
                                                    _g3578935794_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3578835791_
                                                     _g3578935794_)))
                                           '()
                                           _L35234_))))
                             (declare (not safe))
                             (_g3524935785_ __tmp45640))))
                       _var3519135230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3518635210_
                                                 _target3518335204_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3518035197_
                                               _g3518135201_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3518035197_ _g3518135201_)))))
                           (__tmp45641
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd35175_))))
                      (declare (not safe))
                      (_g3517935797_ __tmp45641))))
                 (_generate-simple-vector34559_
                  (lambda (_tgt35015_
                           _body35017_
                           _start35018_
                           _K35019_
                           _E35020_)
                    (let _recur35022_ ((_rest35025_ _body35017_)
                                       (_off35027_ _start35018_))
                      (let* ((___stx4448644487_ _rest35025_)
                             (_g3503035042_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4448644487_))))
                        (let ((___kont4448944490_
                               (lambda (_L35070_ _L35072_)
                                 (let* ((_g3508735106_
                                         (lambda (_g3508835102_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3508835102_)))
                                        (_g3508635165_
                                         (lambda (_g3508835110_)
                                           (if (gx#stx-pair? _g3508835110_)
                                               (let ((_e3509235113_
                                                      (gx#syntax-e
                                                       _g3508835110_)))
                                                 (let ((_hd3509335117_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3509235113_)))
                                                       (_tl3509435120_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3509235113_))))
                                                   (if (gx#stx-pair?
                                                        _tl3509435120_)
                                                       (let ((_e3509535123_
                                                              (gx#syntax-e
                                                               _tl3509435120_)))
                                                         (let ((_hd3509635127_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3509535123_)))
                       (_tl3509735130_
                        (let () (declare (not safe)) (##cdr _e3509535123_))))
                   (if (gx#stx-pair? _tl3509735130_)
                       (let ((_e3509835133_ (gx#syntax-e _tl3509735130_)))
                         (let ((_hd3509935137_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3509835133_)))
                               (_tl3510035140_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3509835133_))))
                           (if (gx#stx-null? _tl3510035140_)
                               ((lambda (_L35143_ _L35145_ _L35146_)
                                  (let ()
                                    (let ((__tmp45642
                                           (let ((__tmp45647
                                                  (let ((__tmp45648
                                                         (let ((__tmp45649
                                                                (let ((__tmp45650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45653
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp45651
                                      (let ((__tmp45652
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35143_ '()))))
                                        (declare (not safe))
                                        (cons _L35145_ __tmp45652))))
                                 (declare (not safe))
                                 (cons __tmp45653 __tmp45651))))
                          (declare (not safe))
                          (cons __tmp45650 '()))))
                   (declare (not safe))
                   (cons _L35146_ __tmp45649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45648 '())))
                                                 (__tmp45643
                                                  (let ((__tmp45644
                                                         (let ((__tmp45645
                                                                (let ((__tmp45646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off35027_ '1))))
                          (declare (not safe))
                          (_recur35022_ _L35070_ __tmp45646))))
                   (declare (not safe))
                   (_generate134556_ _L35146_ _L35072_ __tmp45645 _E35020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45644 '()))))
                                             (declare (not safe))
                                             (cons __tmp45647 __tmp45643))))
                                      (declare (not safe))
                                      (cons 'let __tmp45642))))
                                _hd3509935137_
                                _hd3509635127_
                                _hd3509335117_)
                               (let ()
                                 (declare (not safe))
                                 (_g3508735106_ _g3508835110_)))))
                       (let ()
                         (declare (not safe))
                         (_g3508735106_ _g3508835110_)))))
               (let () (declare (not safe)) (_g3508735106_ _g3508835110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3508735106_
                                                  _g3508835110_)))))
                                        (__tmp45654
                                         (list (gx#genident 'e)
                                               _tgt35015_
                                               _off35027_)))
                                   (declare (not safe))
                                   (_g3508635165_ __tmp45654))))
                              (___kont4449144492_ (lambda () _K35019_)))
                          (if (gx#stx-pair? ___stx4448644487_)
                              (let ((_e3503435060_
                                     (gx#syntax-e ___stx4448644487_)))
                                (let ((_tl3503635067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3503435060_)))
                                      (_hd3503535064_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3503435060_))))
                                  (___kont4448944490_
                                   _tl3503635067_
                                   _hd3503535064_)))
                              (___kont4449144492_)))))))
                 (_generate-list-vector34560_
                  (lambda (_tgt34907_
                           _body34909_
                           _->list34910_
                           _K34911_
                           _E34912_)
                    (let* ((_g3491434922_
                            (lambda (_g3491534918_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3491534918_)))
                           (_g3491335011_
                            (lambda (_g3491534926_)
                              ((lambda (_L34929_)
                                 (let ()
                                   (let* ((_g3494134949_
                                           (lambda (_g3494234945_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3494234945_)))
                                          (_g3494035007_
                                           (lambda (_g3494234953_)
                                             ((lambda (_L34956_)
                                                (let ()
                                                  (let* ((_g3496934977_
                                                          (lambda (_g3497034973_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3497034973_)))
                                                         (_g3496834999_
                                                          (lambda (_g3497034981_)
                                                            ((lambda (_L34984_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp45655
                                  (let ((__tmp45658
                                         (let ((__tmp45659
                                                (let ((__tmp45660
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L34984_ '()))))
                                                  (declare (not safe))
                                                  (cons _L34929_ __tmp45660))))
                                           (declare (not safe))
                                           (cons __tmp45659 '())))
                                        (__tmp45656
                                         (let ((__tmp45657
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate134556_
                                                   _L34929_
                                                   _body34909_
                                                   _K34911_
                                                   _E34912_))))
                                           (declare (not safe))
                                           (cons __tmp45657 '()))))
                                    (declare (not safe))
                                    (cons __tmp45658 __tmp45656))))
                             (declare (not safe))
                             (cons 'let __tmp45655)))))
                     _g3497034981_)))
                 (__tmp45661
                  (let ((_$e35003_ _->list34910_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e35003_))
                        (let ((__tmp45663 (gx#datum->syntax '#f 'values->list))
                              (__tmp45662
                               (let ()
                                 (declare (not safe))
                                 (cons _L34956_ '()))))
                          (declare (not safe))
                          (cons __tmp45663 __tmp45662))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e35003_))
                            (let ((__tmp45665
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp45664
                                   (let ()
                                     (declare (not safe))
                                     (cons _L34956_ '()))))
                              (declare (not safe))
                              (cons __tmp45665 __tmp45664))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e35003_))
                                (let ((__tmp45670
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp45666
                                       (let ((__tmp45667
                                              (let ((__tmp45669
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp45668
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L34956_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45669 __tmp45668))))
                                         (declare (not safe))
                                         (cons __tmp45667 '()))))
                                  (declare (not safe))
                                  (cons __tmp45670 __tmp45666))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx34549_
                                 _->list34910_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3496834999_
                                                     __tmp45661))))
                                              _g3494234953_))))
                                     (declare (not safe))
                                     (_g3494035007_ _tgt34907_))))
                               _g3491534926_)))
                           (__tmp45671 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3491335011_ __tmp45671))))
                 (_generate-struct34561_
                  (lambda (_info34778_
                           _tgt34780_
                           _body34781_
                           _K34782_
                           _E34783_)
                    (let* ((___stx4450244503_ _body34781_)
                           (_g3478634809_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4450244503_))))
                      (let ((___kont4450544506_
                             (lambda (_L34886_)
                               (let* ((_fields34900_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors34563_
                                          _info34778_)))
                                      (__tmp45672
                                       (let ((__tmp45676
                                              (let ((__tmp45678
                                                     (let ((__obj45256
                                                            _info34778_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj45256
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj45256
                                                              '12
                                                              gerbil/core/mop$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$<MOP:2>#class-type-info::t
                                                            __obj45256
                                                            'predicate))))
                                                    (__tmp45677
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt34780_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45678 __tmp45677)))
                                             (__tmp45673
                                              (let ((__tmp45675
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body34562_
                                                        _info34778_
                                                        _tgt34780_
                                                        _L34886_
                                                        _K34782_
                                                        _E34783_)))
                                                    (__tmp45674
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E34783_ '()))))
                                                (declare (not safe))
                                                (cons __tmp45675 __tmp45674))))
                                         (declare (not safe))
                                         (cons __tmp45676 __tmp45673))))
                                 (declare (not safe))
                                 (cons 'if __tmp45672))))
                            (___kont4450744508_
                             (lambda (_L34840_)
                               (let ((__tmp45679
                                      (let ((__tmp45683
                                             (let ((__tmp45685
                                                    (let ((__obj45257
                                                           _info34778_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj45257
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj45257
                                                             '12
                                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop$<MOP:2>#class-type-info::t
                                                           __obj45257
                                                           'predicate))))
                                                   (__tmp45684
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt34780_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45685 __tmp45684)))
                                            (__tmp45680
                                             (let ((__tmp45682
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector34560_
                                                       _tgt34780_
                                                       _L34840_
                                                       'struct->list
                                                       _K34782_
                                                       _E34783_)))
                                                   (__tmp45681
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E34783_ '()))))
                                               (declare (not safe))
                                               (cons __tmp45682 __tmp45681))))
                                        (declare (not safe))
                                        (cons __tmp45683 __tmp45680))))
                                 (declare (not safe))
                                 (cons 'if __tmp45679)))))
                        (if (gx#stx-pair? ___stx4450244503_)
                            (let ((_e3478934862_
                                   (gx#syntax-e ___stx4450244503_)))
                              (let ((_tl3479134869_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3478934862_)))
                                    (_hd3479034866_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3478934862_))))
                                (if (gx#stx-datum? _hd3479034866_)
                                    (let ((_e3479234872_
                                           (gx#stx-e _hd3479034866_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3479234872_ 'simple:))
                                          (if (gx#stx-pair? _tl3479134869_)
                                              (let ((_e3479334876_
                                                     (gx#syntax-e
                                                      _tl3479134869_)))
                                                (let ((_tl3479534883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3479334876_)))
                                                      (_hd3479434880_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3479334876_))))
                                                  (if (gx#stx-null?
                                                       _tl3479534883_)
                                                      (___kont4450544506_
                                                       _hd3479434880_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3478634809_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3478634809_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3479234872_ 'list:))
                                              (if (gx#stx-pair? _tl3479134869_)
                                                  (let ((_e3480134830_
                                                         (gx#syntax-e
                                                          _tl3479134869_)))
                                                    (let ((_tl3480334837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3480134830_)))
                                                          (_hd3480234834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3480134830_))))
                                                      (if (gx#stx-null?
                                                           _tl3480334837_)
                                                          (___kont4450744508_
                                                           _hd3480234834_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3478634809_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3478634809_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3478634809_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3478634809_)))))
                            (let () (declare (not safe)) (_g3478634809_)))))))
                 (_generate-simple-struct-body34562_
                  (lambda (_info34698_
                           _tgt34700_
                           _body34701_
                           _K34702_
                           _E34703_)
                    (let _recur34705_ ((_rest34708_ _body34701_)
                                       (_fields34710_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors34563_
                                           _info34698_))))
                      (let* ((___stx4455244553_ _rest34708_)
                             (_g3471334725_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4455244553_))))
                        (let ((___kont4455544556_
                               (lambda (_L34753_ _L34755_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields34710_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx34549_
                                      _info34698_
                                      (let ((__obj45258 _info34698_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj45258
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj45258
                                               '2
                                               gerbil/core/mop$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop$<MOP:2>#class-type-info::t
                                             __obj45258
                                             'name))))
                                     (let ((_$tgt34770_ (gx#genident 'e))
                                           (_getf34772_ (car _fields34710_)))
                                       (let ((__tmp45686
                                              (let ((__tmp45691
                                                     (let ((__tmp45692
                                                            (let ((__tmp45693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45694
                                  (let ((__tmp45695
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34700_ '()))))
                                    (declare (not safe))
                                    (cons _getf34772_ __tmp45695))))
                             (declare (not safe))
                             (cons __tmp45694 '()))))
                      (declare (not safe))
                      (cons _$tgt34770_ __tmp45693))))
               (declare (not safe))
               (cons __tmp45692 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp45687
                                                     (let ((__tmp45688
                                                            (let ((__tmp45689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45690 (cdr _fields34710_)))
                             (declare (not safe))
                             (_recur34705_ _L34753_ __tmp45690))))
                      (declare (not safe))
                      (_generate134556_
                       _$tgt34770_
                       _L34755_
                       __tmp45689
                       _E34703_))))
               (declare (not safe))
               (cons __tmp45688 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45691 __tmp45687))))
                                         (declare (not safe))
                                         (cons 'let __tmp45686))))))
                              (___kont4455744558_ (lambda () _K34702_)))
                          (if (gx#stx-pair? ___stx4455244553_)
                              (let ((_e3471734743_
                                     (gx#syntax-e ___stx4455244553_)))
                                (let ((_tl3471934750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3471734743_)))
                                      (_hd3471834747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3471734743_))))
                                  (___kont4455544556_
                                   _tl3471934750_
                                   _hd3471834747_)))
                              (___kont4455744558_)))))))
                 (_struct-field-accessors34563_
                  (lambda (_info34679_)
                    (let _recur34682_ ((_next34685_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info34679_ '()))))
                      (if (let () (declare (not safe)) (null? _next34685_))
                          '()
                          (let ((_ti34688_ (car _next34685_)))
                            (append (let ((__tmp45696
                                           (map gx#syntax-local-value
                                                (let ((__obj45259 _ti34688_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj45259
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj45259
                                                         '3
                                                         gerbil/core/mop$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop$<MOP:2>#class-type-info::t
                                                       __obj45259
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur34682_ __tmp45696))
                                    (map (lambda (_slot34691_)
                                           (let ((_$e34694_
                                                  (assgetq _slot34691_
                                                           (let ((__obj45260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti34688_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj45260
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj45260
                            '15
                            gerbil/core/mop$<MOP:2>#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core/mop$<MOP:2>#class-type-info::t
                          __obj45260
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e34694_
                                                 _$e34694_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx34549_
                                                  _info34679_
                                                  _slot34691_))))
                                         (let ((__obj45261 _ti34688_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45261
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45261
                                                  '4
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45261
                                                'slots))))))))))
                 (_generate-class34564_
                  (lambda (_info34672_
                           _tgt34674_
                           _body34675_
                           _K34676_
                           _E34677_)
                    (let ((__tmp45697
                           (let ((__tmp45701
                                  (let ((__tmp45703
                                         (let ((__obj45262 _info34672_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj45262
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj45262
                                                  '12
                                                  gerbil/core/mop$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$<MOP:2>#class-type-info::t
                                                __obj45262
                                                'predicate))))
                                        (__tmp45702
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt34674_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45703 __tmp45702)))
                                 (__tmp45698
                                  (let ((__tmp45700
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body34565_
                                            _info34672_
                                            _tgt34674_
                                            _body34675_
                                            _K34676_
                                            _E34677_)))
                                        (__tmp45699
                                         (let ()
                                           (declare (not safe))
                                           (cons _E34677_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45700 __tmp45699))))
                             (declare (not safe))
                             (cons __tmp45701 __tmp45698))))
                      (declare (not safe))
                      (cons 'if __tmp45697))))
                 (_generate-class-body34565_
                  (lambda (_info34567_
                           _tgt34569_
                           _body34570_
                           _K34571_
                           _E34572_)
                    (let _recur34574_ ((_rest34577_ _body34570_))
                      (let* ((___stx4456844569_ _rest34577_)
                             (_g3458134597_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4456844569_))))
                        (let ((___kont4457144572_
                               (lambda (_L34635_ _L34637_ _L34638_)
                                 (let ((_$e34658_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L34638_)))
                                                 (let ((__obj45263
                                                        _info34567_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj45263
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj45263
                                                          '15
                                                          gerbil/core/mop$<MOP:2>#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop$<MOP:2>#class-type-info::t
                                                        __obj45263
                                                        'unchecked-accessors))))))
                                   (if _$e34658_
                                       ((lambda (_getf34662_)
                                          (let* ((_$tgt34665_ (gx#genident 'e))
                                                 (__tmp45704
                                                  (let ((__tmp45708
                                                         (let ((__tmp45709
                                                                (let ((__tmp45710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45711
                                      (let ((__tmp45712
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt34569_ '()))))
                                        (declare (not safe))
                                        (cons _getf34662_ __tmp45712))))
                                 (declare (not safe))
                                 (cons __tmp45711 '()))))
                          (declare (not safe))
                          (cons _$tgt34665_ __tmp45710))))
                   (declare (not safe))
                   (cons __tmp45709 '())))
                (__tmp45705
                 (let ((__tmp45706
                        (let ((__tmp45707
                               (let ()
                                 (declare (not safe))
                                 (_recur34574_ _L34635_))))
                          (declare (not safe))
                          (_generate134556_
                           _$tgt34665_
                           _L34637_
                           __tmp45707
                           _E34572_))))
                   (declare (not safe))
                   (cons __tmp45706 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45708
                                                          __tmp45705))))
                                            (declare (not safe))
                                            (cons 'let __tmp45704)))
                                        _$e34658_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx34549_
                                        _info34567_
                                        _L34638_)))))
                              (___kont4457344574_ (lambda () _K34571_)))
                          (if (gx#stx-pair? ___stx4456844569_)
                              (let ((_e3458634615_
                                     (gx#syntax-e ___stx4456844569_)))
                                (let ((_tl3458834622_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3458634615_)))
                                      (_hd3458734619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3458634615_))))
                                  (if (gx#stx-pair? _tl3458834622_)
                                      (let ((_e3458934625_
                                             (gx#syntax-e _tl3458834622_)))
                                        (let ((_tl3459134632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3458934625_)))
                                              (_hd3459034629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3458934625_))))
                                          (___kont4457144572_
                                           _tl3459134632_
                                           _hd3459034629_
                                           _hd3458734619_)))
                                      (___kont4457344574_))))
                              (___kont4457344574_))))))))
          (let ()
            (declare (not safe))
            (_generate134556_ _tgt34551_ _ptree34552_ _K34553_ _E34554_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx33445_ _tgt-lst33447_ _clauses33448_)
        (letrec ((_parse-body33450_
                  (lambda (_hd-len34371_)
                    (let _lp34374_ ((_rest34377_ _clauses33448_)
                                    (_r34379_ '()))
                      (let* ((___stx4461844619_ _rest34377_)
                             (_g3438234394_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4461844619_))))
                        (let ((___kont4462144622_
                               (lambda (_L34422_ _L34424_)
                                 (let* ((___stx4459044591_ _L34424_)
                                        (_g3444134457_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4459044591_))))
                                   (let ((___kont4459344594_
                                          (lambda (_L34526_)
                                            (if (gx#stx-null? _L34422_)
                                                (let ((__tmp45713
                                                       (let ((__tmp45718
                                                              (gx#genident
                                                               'else))
                                                             (__tmp45714
                                                              (let ((__tmp45715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45716
                                    (gx#stx-wrap-source
                                     (let ((__tmp45717
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp45717 _L34526_))
                                     (let ((_$e34537_
                                            (gx#stx-source _L34424_)))
                                       (if _$e34537_
                                           _$e34537_
                                           (gx#stx-source _stx33445_))))))
                               (declare (not safe))
                               (cons __tmp45716 '()))))
                        (declare (not safe))
                        (cons '#f __tmp45715))))
                 (declare (not safe))
                 (cons __tmp45718 __tmp45714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45713 _r34379_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx33445_
                                                 _L34424_))))
                                         (___kont4459544596_
                                          (lambda (_L34485_ _L34487_)
                                            (let ((__tmp45719
                                                   (let ((__tmp45720
                                                          (let ((__tmp45726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp45721
                         (let ((__tmp45725
                                (gx#stx-map
                                 (lambda (_g3449934501_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/match[1]#parse-match-pattern__%|
                                      _g3449934501_
                                      _stx33445_)))
                                 _L34487_))
                               (__tmp45722
                                (let ((__tmp45723
                                       (gx#stx-wrap-source
                                        (let ((__tmp45724
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp45724 _L34485_))
                                        (let ((_$e34505_
                                               (gx#stx-source _L34424_)))
                                          (if _$e34505_
                                              _$e34505_
                                              (gx#stx-source _stx33445_))))))
                                  (declare (not safe))
                                  (cons __tmp45723 '()))))
                           (declare (not safe))
                           (cons __tmp45725 __tmp45722))))
                    (declare (not safe))
                    (cons __tmp45726 __tmp45721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45720
                                                           _r34379_))))
                                              (declare (not safe))
                                              (_lp34374_
                                               _L34422_
                                               __tmp45719))))
                                         (___kont4459744598_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx33445_
                                             _L34424_))))
                                     (let* ((___match4461544616_
                                             (lambda (_e3444934475_
                                                      _hd3445034479_
                                                      _tl3445134482_)
                                               (let ((_L34485_ _tl3445134482_)
                                                     (_L34487_ _hd3445034479_))
                                                 (if (and (gx#stx-list?
                                                           _L34487_)
                                                          (fx= (gx#stx-length
                                                                _L34487_)
                                                               _hd-len34371_)
                                                          (gx#stx-list?
                                                           _L34485_)
                                                          (let ((__tmp45727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34485_)))
                    (declare (not safe))
                    (not __tmp45727)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4459544596_
                                                      _L34485_
                                                      _L34487_)
                                                     (___kont4459744598_)))))
                                            (___match4460944610_
                                             (lambda (_e3444434516_
                                                      _hd3444534520_
                                                      _tl3444634523_)
                                               (let ((_L34526_ _tl3444634523_))
                                                 (if (and (gx#stx-list?
                                                           _L34526_)
                                                          (let ((__tmp45728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L34526_)))
                    (declare (not safe))
                    (not __tmp45728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4459344594_
                                                      _L34526_)
                                                     (___match4461544616_
                                                      _e3444434516_
                                                      _hd3444534520_
                                                      _tl3444634523_))))))
                                       (if (gx#stx-pair? ___stx4459044591_)
                                           (let ((_e3444434516_
                                                  (gx#syntax-e
                                                   ___stx4459044591_)))
                                             (let ((_tl3444634523_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3444434516_)))
                                                   (_hd3444534520_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3444434516_))))
                                               (if (gx#identifier?
                                                    _hd3444534520_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g45729_|
                                                        _hd3444534520_)
                                                       (___match4460944610_
                                                        _e3444434516_
                                                        _hd3444534520_
                                                        _tl3444634523_)
                                                       (___match4461544616_
                                                        _e3444434516_
                                                        _hd3444534520_
                                                        _tl3444634523_))
                                                   (___match4461544616_
                                                    _e3444434516_
                                                    _hd3444534520_
                                                    _tl3444634523_))))
                                           (___kont4459744598_)))))))
                              (___kont4462344624_ (lambda () _r34379_)))
                          (if (gx#stx-pair? ___stx4461844619_)
                              (let ((_e3438634412_
                                     (gx#syntax-e ___stx4461844619_)))
                                (let ((_tl3438834419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3438634412_)))
                                      (_hd3438734416_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3438634412_))))
                                  (___kont4462144622_
                                   _tl3438834419_
                                   _hd3438734416_)))
                              (___kont4462344624_)))))))
                 (_generate-body33452_
                  (lambda (_body34156_)
                    (let* ((_g3415934167_
                            (lambda (_g3416034163_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3416034163_)))
                           (_g3415834367_
                            (lambda (_g3416034171_)
                              ((lambda (_L34174_)
                                 (let ()
                                   (let* ((_g3418634203_
                                           (lambda (_g3418734199_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3418734199_)))
                                          (_g3418534363_
                                           (lambda (_g3418734207_)
                                             (if (gx#stx-pair/null?
                                                  _g3418734207_)
                                                 (let ((_g45730_
                                                        (gx#syntax-split-splice
                                                         _g3418734207_
                                                         '0)))
                                                   (begin
                                                     (let ((_g45731_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g45730_)
                          (##vector-length _g45730_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g45731_ 2)))
                   (error "Context expects 2 values" _g45731_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3418934210_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45730_
                                                               0)))
                                                           (_tl3419134213_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g45730_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3419134213_)
                                                           (letrec ((_loop3419234216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3419034220_ _target3419634223_)
                               (if (gx#stx-pair? _hd3419034220_)
                                   (let ((_e3419334226_
                                          (gx#syntax-e _hd3419034220_)))
                                     (let ((_lp-hd3419434230_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3419334226_)))
                                           (_lp-tl3419534233_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3419334226_))))
                                       (let ((__tmp45732
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3419434230_
                                                      _target3419634223_))))
                                         (declare (not safe))
                                         (_loop3419234216_
                                          _lp-tl3419534233_
                                          __tmp45732))))
                                   (let ((_target3419734236_
                                          (reverse _target3419634223_)))
                                     ((lambda (_L34240_)
                                        (let ()
                                          (let* ((_g3425734265_
                                                  (lambda (_g3425834261_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3425834261_)))
                                                 (_g3425634351_
                                                  (lambda (_g3425834269_)
                                                    ((lambda (_L34272_)
                                                       (let ()
                                                         (let* ((_g3428534293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3428634289_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3428634289_)))
                        (_g3428434347_
                         (lambda (_g3428634297_)
                           ((lambda (_L34300_)
                              (let ()
                                (let* ((_g3431334321_
                                        (lambda (_g3431434317_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3431434317_)))
                                       (_g3431234343_
                                        (lambda (_g3431434325_)
                                          ((lambda (_L34328_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp45736
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp45733
                                                        (let ((__tmp45735
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp45734
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L34328_ '()))))
                  (declare (not safe))
                  (cons __tmp45735 __tmp45734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45736
                                                         __tmp45733)))))
                                           _g3431434325_)))
                                       (__tmp45737
                                        (gx#stx-wrap-source
                                         (let ((__tmp45743
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp45738
                                                (let ((__tmp45740
                                                       (let ((__tmp45741
                                                              (let ((__tmp45742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L34272_ '()))))
                        (declare (not safe))
                        (cons _L34174_ __tmp45742))))
                 (declare (not safe))
                 (cons __tmp45741 '())))
              (__tmp45739 (let () (declare (not safe)) (cons _L34300_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45740
                                                        __tmp45739))))
                                           (declare (not safe))
                                           (cons __tmp45743 __tmp45738))
                                         (gx#stx-source _stx33445_))))
                                  (declare (not safe))
                                  (_g3431234343_ __tmp45737))))
                            _g3428634297_)))
                        (__tmp45744
                         (let ((__tmp45745
                                (let ()
                                  (declare (not safe))
                                  (cons _L34174_ '()))))
                           (declare (not safe))
                           (_generate-clauses33453_ _body34156_ __tmp45745))))
                   (declare (not safe))
                   (_g3428434347_ __tmp45744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3425834269_)))
                                                 (__tmp45746
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp45753
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45747
                                                          (let ((__tmp45748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45749
                                (let ((__tmp45752
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp45750
                                       (let ((__tmp45751
                                              (foldr (lambda (_g3435434357_
                                                              _g3435534360_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3435434357_
                                                               _g3435534360_)))
                                                     '()
                                                     _L34240_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp45751))))
                                  (declare (not safe))
                                  (cons __tmp45752 __tmp45750))))
                           (declare (not safe))
                           (cons __tmp45749 '()))))
                    (declare (not safe))
                    (cons '() __tmp45748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45753
                                                           __tmp45747))
                                                   (gx#stx-source
                                                    _stx33445_))))
                                            (declare (not safe))
                                            (_g3425634351_ __tmp45746))))
                                      _target3419734236_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3419234216_ _target3418934210_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3418634203_ _g3418734207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3418634203_
                                                    _g3418734207_))))))
                                     (declare (not safe))
                                     (_g3418534363_ _tgt-lst33447_))))
                               _g3416034171_)))
                           (__tmp45754 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3415834367_ __tmp45754))))
                 (_generate-clauses33453_
                  (lambda (_rest33808_ _E33810_)
                    (let* ((___stx4463444635_ _rest33808_)
                           (_g3381433830_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4463444635_))))
                      (let ((___kont4463744638_
                             (lambda (_L34064_)
                               (let* ((_g3407534093_
                                       (lambda (_g3407634089_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3407634089_)))
                                      (_g3407434148_
                                       (lambda (_g3407634097_)
                                         (if (gx#stx-pair? _g3407634097_)
                                             (let ((_e3407934100_
                                                    (gx#syntax-e
                                                     _g3407634097_)))
                                               (let ((_hd3408034104_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3407934100_)))
                                                     (_tl3408134107_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3407934100_))))
                                                 (if (gx#stx-pair?
                                                      _tl3408134107_)
                                                     (let ((_e3408234110_
                                                            (gx#syntax-e
                                                             _tl3408134107_)))
                                                       (let ((_hd3408334114_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3408234110_)))
                     (_tl3408434117_
                      (let () (declare (not safe)) (##cdr _e3408234110_))))
                 (if (gx#stx-pair? _tl3408434117_)
                     (let ((_e3408534120_ (gx#syntax-e _tl3408434117_)))
                       (let ((_hd3408634124_
                              (let ()
                                (declare (not safe))
                                (##car _e3408534120_)))
                             (_tl3408734127_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3408534120_))))
                         (if (gx#stx-null? _tl3408734127_)
                             ((lambda (_L34130_ _L34132_)
                                (let ((__tmp45755
                                       (let ((__tmp45756
                                              (let ((__tmp45757
                                                     (if (gx#stx-e _L34132_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate133454_
                                                            _L34132_
                                                            _L34130_
                                                            _E33810_))
                                                         _L34130_)))
                                                (declare (not safe))
                                                (cons __tmp45757 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp45756))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp45755)))
                              _hd3408634124_
                              _hd3408334114_)
                             (let ()
                               (declare (not safe))
                               (_g3407534093_ _g3407634097_)))))
                     (let ()
                       (declare (not safe))
                       (_g3407534093_ _g3407634097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3407534093_
                                                        _g3407634097_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3407534093_
                                                _g3407634097_))))))
                                 (declare (not safe))
                                 (_g3407434148_ _L34064_))))
                            (___kont4463944640_
                             (lambda (_L33858_ _L33860_)
                               (let* ((_g3387333892_
                                       (lambda (_g3387433888_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3387433888_)))
                                      (_g3387234043_
                                       (lambda (_g3387433896_)
                                         (if (gx#stx-pair? _g3387433896_)
                                             (let ((_e3387833899_
                                                    (gx#syntax-e
                                                     _g3387433896_)))
                                               (let ((_hd3387933903_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3387833899_)))
                                                     (_tl3388033906_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3387833899_))))
                                                 (if (gx#stx-pair?
                                                      _tl3388033906_)
                                                     (let ((_e3388133909_
                                                            (gx#syntax-e
                                                             _tl3388033906_)))
                                                       (let ((_hd3388233913_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3388133909_)))
                     (_tl3388333916_
                      (let () (declare (not safe)) (##cdr _e3388133909_))))
                 (if (gx#stx-pair? _tl3388333916_)
                     (let ((_e3388433919_ (gx#syntax-e _tl3388333916_)))
                       (let ((_hd3388533923_
                              (let ()
                                (declare (not safe))
                                (##car _e3388433919_)))
                             (_tl3388633926_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3388433919_))))
                         (if (gx#stx-null? _tl3388633926_)
                             ((lambda (_L33929_ _L33931_ _L33932_)
                                (if (gx#stx-e _L33931_)
                                    (let* ((_g3394933964_
                                            (lambda (_g3395033960_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3395033960_)))
                                           (_g3394834009_
                                            (lambda (_g3395033968_)
                                              (if (gx#stx-pair? _g3395033968_)
                                                  (let ((_e3395333971_
                                                         (gx#syntax-e
                                                          _g3395033968_)))
                                                    (let ((_hd3395433975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3395333971_)))
                                                          (_tl3395533978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3395333971_))))
                                                      (if (gx#stx-pair?
                                                           _tl3395533978_)
                                                          (let ((_e3395633981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3395533978_)))
                    (let ((_hd3395733985_
                           (let () (declare (not safe)) (##car _e3395633981_)))
                          (_tl3395833988_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3395633981_))))
                      (if (gx#stx-null? _tl3395833988_)
                          ((lambda (_L33991_ _L33993_)
                             (let ()
                               (let ((__tmp45767 (gx#datum->syntax '#f 'let))
                                     (__tmp45758
                                      (let ((__tmp45760
                                             (let ((__tmp45761
                                                    (let ((__tmp45762
                                                           (let ((__tmp45763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45766 (gx#datum->syntax '#f 'lambda))
                                (__tmp45764
                                 (let ((__tmp45765
                                        (let ()
                                          (declare (not safe))
                                          (cons _L33993_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp45765))))
                            (declare (not safe))
                            (cons __tmp45766 __tmp45764))))
                     (declare (not safe))
                     (cons __tmp45763 '()))))
              (declare (not safe))
              (cons _L33932_ __tmp45762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45761 '())))
                                            (__tmp45759
                                             (let ()
                                               (declare (not safe))
                                               (cons _L33991_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45760 __tmp45759))))
                                 (declare (not safe))
                                 (cons __tmp45767 __tmp45758))))
                           _hd3395733985_
                           _hd3395433975_)
                          (let ()
                            (declare (not safe))
                            (_g3394933964_ _g3395033968_)))))
                  (let ()
                    (declare (not safe))
                    (_g3394933964_ _g3395033968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3394933964_
                                                     _g3395033968_)))))
                                           (__tmp45768
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate133454_
                                                     _L33931_
                                                     _L33929_
                                                     _E33810_))
                                                  (let ((__tmp45769
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L33932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses33453_
                                                     _L33858_
                                                     __tmp45769)))))
                                      (declare (not safe))
                                      (_g3394834009_ __tmp45768))
                                    (let* ((_g3401334021_
                                            (lambda (_g3401434017_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3401434017_)))
                                           (_g3401234039_
                                            (lambda (_g3401434025_)
                                              ((lambda (_L34028_)
                                                 (let ()
                                                   (let ((__tmp45784
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45770
                                                          (let ((__tmp45772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45773
                                (let ((__tmp45774
                                       (let ((__tmp45775
                                              (let ((__tmp45783
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp45776
                                                     (let ((__tmp45782
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp45777
                                                            (let ((__tmp45778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45781 (gx#datum->syntax '#f 'lambda))
                                 (__tmp45779
                                  (let ((__tmp45780
                                         (let ()
                                           (declare (not safe))
                                           (cons _L33929_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp45780))))
                             (declare (not safe))
                             (cons __tmp45781 __tmp45779))))
                      (declare (not safe))
                      (cons __tmp45778 '()))))
               (declare (not safe))
               (cons __tmp45782 __tmp45777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45783 __tmp45776))))
                                         (declare (not safe))
                                         (cons __tmp45775 '()))))
                                  (declare (not safe))
                                  (cons _L33932_ __tmp45774))))
                           (declare (not safe))
                           (cons __tmp45773 '())))
                        (__tmp45771
                         (let () (declare (not safe)) (cons _L34028_ '()))))
                    (declare (not safe))
                    (cons __tmp45772 __tmp45771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45784
                                                           __tmp45770))))
                                               _g3401434025_)))
                                           (__tmp45785
                                            (let ((__tmp45786
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L33932_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses33453_
                                               _L33858_
                                               __tmp45786))))
                                      (declare (not safe))
                                      (_g3401234039_ __tmp45785))))
                              _hd3388533923_
                              _hd3388233913_
                              _hd3387933903_)
                             (let ()
                               (declare (not safe))
                               (_g3387333892_ _g3387433896_)))))
                     (let ()
                       (declare (not safe))
                       (_g3387333892_ _g3387433896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3387333892_
                                                        _g3387433896_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3387333892_
                                                _g3387433896_))))))
                                 (declare (not safe))
                                 (_g3387234043_ _L33860_))))
                            (___kont4464144642_
                             (lambda ()
                               (let ((__tmp45787
                                      (let ((__tmp45788
                                             (let ()
                                               (declare (not safe))
                                               (cons _E33810_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp45788))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp45787)))))
                        (if (gx#stx-pair? ___stx4463444635_)
                            (let ((_e3381734054_
                                   (gx#syntax-e ___stx4463444635_)))
                              (let ((_tl3381934061_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3381734054_)))
                                    (_hd3381834058_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3381734054_))))
                                (if (gx#stx-null? _tl3381934061_)
                                    (___kont4463744638_ _hd3381834058_)
                                    (___kont4463944640_
                                     _tl3381934061_
                                     _hd3381834058_))))
                            (___kont4464144642_))))))
                 (_generate133454_
                  (lambda (_clause33456_ _body33458_ _E33459_)
                    (let* ((_g3346133485_
                            (lambda (_g3346233481_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3346233481_)))
                           (_g3346033804_
                            (lambda (_g3346233489_)
                              (if (gx#stx-pair? _g3346233489_)
                                  (let ((_e3346533492_
                                         (gx#syntax-e _g3346233489_)))
                                    (let ((_hd3346633496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3346533492_)))
                                          (_tl3346733499_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3346533492_))))
                                      (if (gx#stx-pair? _tl3346733499_)
                                          (let ((_e3346833502_
                                                 (gx#syntax-e _tl3346733499_)))
                                            (let ((_hd3346933506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3346833502_)))
                                                  (_tl3347033509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3346833502_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3346933506_)
                                                  (let ((_g45789_
                                                         (gx#syntax-split-splice
                                                          _hd3346933506_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45790_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45789_)
                           (##vector-length _g45789_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45790_ 2)))
                    (error "Context expects 2 values" _g45790_)))
              (let ((_target3347133512_
                     (let () (declare (not safe)) (##vector-ref _g45789_ 0)))
                    (_tl3347333515_
                     (let () (declare (not safe)) (##vector-ref _g45789_ 1))))
                (if (gx#stx-null? _tl3347333515_)
                    (letrec ((_loop3347433518_
                              (lambda (_hd3347233522_ _var3347833525_)
                                (if (gx#stx-pair? _hd3347233522_)
                                    (let ((_e3347533528_
                                           (gx#syntax-e _hd3347233522_)))
                                      (let ((_lp-hd3347633532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3347533528_)))
                                            (_lp-tl3347733535_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3347533528_))))
                                        (let ((__tmp45791
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd3347633532_
                                                       _var3347833525_))))
                                          (declare (not safe))
                                          (_loop3347433518_
                                           _lp-tl3347733535_
                                           __tmp45791))))
                                    (let ((_var3347933538_
                                           (reverse _var3347833525_)))
                                      (if (gx#stx-null? _tl3347033509_)
                                          ((lambda (_L33542_ _L33544_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g3356533568_
                                                                _g3356633571_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g3356533568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3356633571_)))
               '()
               _L33542_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx33445_)
                                               (let* ((_g3357433582_
                                                       (lambda (_g3357533578_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3357533578_)))
                                                      (_g3357333676_
                                                       (lambda (_g3357533586_)
                                                         ((lambda (_L33589_)
                                                            (let ()
                                                              (let* ((_g3360233610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3360333606_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3360333606_)))
                             (_g3360133672_
                              (lambda (_g3360333614_)
                                ((lambda (_L33617_)
                                   (let ()
                                     (let* ((_g3363033638_
                                             (lambda (_g3363133634_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3363133634_)))
                                            (_g3362933660_
                                             (lambda (_g3363133642_)
                                               ((lambda (_L33645_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp45796
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp45792
                                                              (let ((__tmp45794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45795
                                    (let ()
                                      (declare (not safe))
                                      (cons _L33645_ '()))))
                               (declare (not safe))
                               (cons _L33544_ __tmp45795)))
                            (__tmp45793
                             (let ()
                               (declare (not safe))
                               (cons _L33589_ '()))))
                        (declare (not safe))
                        (cons __tmp45794 __tmp45793))))
                 (declare (not safe))
                 (cons __tmp45796 __tmp45792))
               (gx#stx-source _stx33445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3363133642_)))
                                            (__tmp45797
                                             (gx#stx-wrap-source
                                              (let ((__tmp45801
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp45798
                                                     (let ((__tmp45800
                                                            (foldr (lambda (_g3366333666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3366433669_)
                             (let ()
                               (declare (not safe))
                               (cons _g3366333666_ _g3366433669_)))
                           '()
                           _L33542_))
                   (__tmp45799
                    (let () (declare (not safe)) (cons _L33617_ '()))))
               (declare (not safe))
               (cons __tmp45800 __tmp45799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45801 __tmp45798))
                                              (gx#stx-source _stx33445_))))
                                       (declare (not safe))
                                       (_g3362933660_ __tmp45797))))
                                 _g3360333614_))))
                        (declare (not safe))
                        (_g3360133672_ _body33458_))))
                  _g3357533586_)))
              (__tmp45802
               (let _recur33680_ ((_rest33683_ _clause33456_)
                                  (_rest-targets33685_ _tgt-lst33447_))
                 (let* ((___stx4466044661_ _rest33683_)
                        (_g3368833700_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4466044661_))))
                   (let ((___kont4466344664_
                          (lambda (_L33736_ _L33738_)
                            (let* ((_g3375333765_
                                    (lambda (_g3375433761_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3375433761_)))
                                   (_g3375233796_
                                    (lambda (_g3375433769_)
                                      (if (gx#stx-pair? _g3375433769_)
                                          (let ((_e3375733772_
                                                 (gx#syntax-e _g3375433769_)))
                                            (let ((_hd3375833776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3375733772_)))
                                                  (_tl3375933779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3375733772_))))
                                              ((lambda (_L33782_ _L33784_)
                                                 (let ((__tmp45803
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur33680_
                                                           _L33736_
                                                           _L33782_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx33445_
                                                    _L33784_
                                                    _L33738_
                                                    __tmp45803
                                                    _E33459_)))
                                               _tl3375933779_
                                               _hd3375833776_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3375333765_ _g3375433769_))))))
                              (declare (not safe))
                              (_g3375233796_ _rest-targets33685_))))
                         (___kont4466544666_
                          (lambda ()
                            (let ((__tmp45804
                                   (foldr (lambda (_g3371033713_ _g3371133716_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3371033713_
                                                    _g3371133716_)))
                                          '()
                                          _L33542_)))
                              (declare (not safe))
                              (cons _L33544_ __tmp45804)))))
                     (if (gx#stx-pair? ___stx4466044661_)
                         (let ((_e3369233726_ (gx#syntax-e ___stx4466044661_)))
                           (let ((_tl3369433733_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3369233726_)))
                                 (_hd3369333730_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3369233726_))))
                             (___kont4466344664_
                              _tl3369433733_
                              _hd3369333730_)))
                         (___kont4466544666_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3357333676_ __tmp45802))))
                                           _var3347933538_
                                           _hd3346633496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3346133485_
                                             _g3346233489_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3347433518_ _target3347133512_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3346133485_ _g3346233489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3346133485_
                                                     _g3346233489_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3346133485_ _g3346233489_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3346133485_ _g3346233489_)))))
                           (__tmp45805
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause33456_)))))
                      (declare (not safe))
                      (_g3346033804_ __tmp45805)))))
          (let ((__tmp45806
                 (let ((__tmp45807 (gx#stx-length _tgt-lst33447_)))
                   (declare (not safe))
                   (_parse-body33450_ __tmp45807))))
            (declare (not safe))
            (_generate-body33452_ __tmp45806)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx33347_ _tgt33349_ _clauses33350_)
        (letrec ((_reclause33352_
                  (lambda (_clause33355_)
                    (let* ((___stx4467644677_ _clause33355_)
                           (_g3336033375_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4467644677_))))
                      (let ((___kont4467944680_ (lambda () _clause33355_))
                            (___kont4468144682_
                             (lambda (_L33403_ _L33405_)
                               (gx#stx-wrap-source
                                (let ((__tmp45808
                                       (let ()
                                         (declare (not safe))
                                         (cons _L33405_ '()))))
                                  (declare (not safe))
                                  (cons __tmp45808 _L33403_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4468344684_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx33347_
                                _clause33355_))))
                        (if (gx#stx-pair? ___stx4467644677_)
                            (let ((_e3336233427_
                                   (gx#syntax-e ___stx4467644677_)))
                              (let ((_tl3336433434_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3336233427_)))
                                    (_hd3336333431_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3336233427_))))
                                (if (gx#identifier? _hd3336333431_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45809_|
                                         _hd3336333431_)
                                        (___kont4467944680_)
                                        (___kont4468144682_
                                         _tl3336433434_
                                         _hd3336333431_))
                                    (___kont4468144682_
                                     _tl3336433434_
                                     _hd3336333431_))))
                            (___kont4468344684_)))))))
          (let ((__tmp45811
                 (let () (declare (not safe)) (cons _tgt33349_ '())))
                (__tmp45810 (gx#stx-map _reclause33352_ _clauses33350_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx33347_
             __tmp45811
             __tmp45810)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx40577_)
        (let* ((___stx4470444705_ _stx40577_)
               (_g4058240611_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4470444705_))))
          (let ((___kont4470744708_
                 (lambda (_L40851_)
                   (let* ((_g4086440872_
                           (lambda (_g4086540868_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4086540868_)))
                          (_g4086340925_
                           (lambda (_g4086540876_)
                             ((lambda (_L40879_)
                                (let ()
                                  (let* ((_g4089140899_
                                          (lambda (_g4089240895_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4089240895_)))
                                         (_g4089040921_
                                          (lambda (_g4089240903_)
                                            ((lambda (_L40906_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45815
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45812
                                                          (let ((__tmp45814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40879_ '())))
                        (__tmp45813
                         (let () (declare (not safe)) (cons _L40906_ '()))))
                    (declare (not safe))
                    (cons __tmp45814 __tmp45813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45815
                                                           __tmp45812)))))
                                             _g4089240903_))))
                                    (_g4089040921_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45817
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45816
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40879_ _L40851_))))
                                        (declare (not safe))
                                        (cons __tmp45817 __tmp45816))
                                      (gx#stx-source _stx40577_))))))
                              _g4086540876_))))
                     (_g4086340925_ (gx#genident 'e)))))
                (___kont4470944710_
                 (lambda (_L40746_)
                   (let* ((_g4075940767_
                           (lambda (_g4076040763_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4076040763_)))
                          (_g4075840820_
                           (lambda (_g4076040771_)
                             ((lambda (_L40774_)
                                (let ()
                                  (let* ((_g4078640794_
                                          (lambda (_g4078740790_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4078740790_)))
                                         (_g4078540816_
                                          (lambda (_g4078740798_)
                                            ((lambda (_L40801_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45820
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45818
                                                          (let ((__tmp45819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40801_ '()))))
                    (declare (not safe))
                    (cons _L40774_ __tmp45819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45820
                                                           __tmp45818)))))
                                             _g4078740798_))))
                                    (_g4078540816_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45822
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45821
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40774_ _L40746_))))
                                        (declare (not safe))
                                        (cons __tmp45822 __tmp45821))
                                      (gx#stx-source _stx40577_))))))
                              _g4076040771_))))
                     (_g4075840820_ (gx#genident 'args)))))
                (___kont4471144712_
                 (lambda (_L40638_ _L40640_)
                   (let* ((_g4065440662_
                           (lambda (_g4065540658_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4065540658_)))
                          (_g4065340715_
                           (lambda (_g4065540666_)
                             ((lambda (_L40669_)
                                (let ()
                                  (let* ((_g4068140689_
                                          (lambda (_g4068240685_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4068240685_)))
                                         (_g4068040711_
                                          (lambda (_g4068240693_)
                                            ((lambda (_L40696_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45828
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45823
                                                          (let ((__tmp45825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45826
                                (let ((__tmp45827
                                       (let ()
                                         (declare (not safe))
                                         (cons _L40640_ '()))))
                                  (declare (not safe))
                                  (cons _L40669_ __tmp45827))))
                           (declare (not safe))
                           (cons __tmp45826 '())))
                        (__tmp45824
                         (let () (declare (not safe)) (cons _L40696_ '()))))
                    (declare (not safe))
                    (cons __tmp45825 __tmp45824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45828
                                                           __tmp45823)))))
                                             _g4068240693_))))
                                    (_g4068040711_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx40577_
                                        _L40669_
                                        _L40638_))))))
                              _g4065540666_))))
                     (_g4065340715_ (gx#genident _L40640_))))))
            (let* ((___match4475744758_
                    (lambda (_e4060040618_
                             _hd4060140622_
                             _tl4060240625_
                             _e4060340628_
                             _hd4060440632_
                             _tl4060540635_)
                      (let ((_L40638_ _tl4060540635_)
                            (_L40640_ _hd4060440632_))
                        (if (gx#stx-list? _L40638_)
                            (___kont4471144712_ _L40638_ _L40640_)
                            (let () (declare (not safe)) (_g4058240611_))))))
                   (___match4474544746_
                    (lambda (_e4059240726_
                             _hd4059340730_
                             _tl4059440733_
                             _e4059540736_
                             _hd4059640740_
                             _tl4059740743_)
                      (let ((_L40746_ _tl4059740743_))
                        (if (gx#stx-list? _L40746_)
                            (___kont4470944710_ _L40746_)
                            (___match4475744758_
                             _e4059240726_
                             _hd4059340730_
                             _tl4059440733_
                             _e4059540736_
                             _hd4059640740_
                             _tl4059740743_)))))
                   (___match4472944730_
                    (lambda (_e4058540831_
                             _hd4058640835_
                             _tl4058740838_
                             _e4058840841_
                             _hd4058940845_
                             _tl4059040848_)
                      (let ((_L40851_ _tl4059040848_))
                        (if (gx#stx-list? _L40851_)
                            (___kont4470744708_ _L40851_)
                            (___match4475744758_
                             _e4058540831_
                             _hd4058640835_
                             _tl4058740838_
                             _e4058840841_
                             _hd4058940845_
                             _tl4059040848_))))))
              (if (gx#stx-pair? ___stx4470444705_)
                  (let ((_e4058540831_ (gx#syntax-e ___stx4470444705_)))
                    (let ((_tl4058740838_
                           (let () (declare (not safe)) (##cdr _e4058540831_)))
                          (_hd4058640835_
                           (let ()
                             (declare (not safe))
                             (##car _e4058540831_))))
                      (if (gx#stx-pair? _tl4058740838_)
                          (let ((_e4058840841_ (gx#syntax-e _tl4058740838_)))
                            (let ((_tl4059040848_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4058840841_)))
                                  (_hd4058940845_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4058840841_))))
                              (if (gx#identifier? _hd4058940845_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45829_|
                                       _hd4058940845_)
                                      (___match4472944730_
                                       _e4058540831_
                                       _hd4058640835_
                                       _tl4058740838_
                                       _e4058840841_
                                       _hd4058940845_
                                       _tl4059040848_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45830_|
                                           _hd4058940845_)
                                          (___match4474544746_
                                           _e4058540831_
                                           _hd4058640835_
                                           _tl4058740838_
                                           _e4058840841_
                                           _hd4058940845_
                                           _tl4059040848_)
                                          (___match4475744758_
                                           _e4058540831_
                                           _hd4058640835_
                                           _tl4058740838_
                                           _e4058840841_
                                           _hd4058940845_
                                           _tl4059040848_)))
                                  (___match4475744758_
                                   _e4058540831_
                                   _hd4058640835_
                                   _tl4058740838_
                                   _e4058840841_
                                   _hd4058940845_
                                   _tl4059040848_))))
                          (let () (declare (not safe)) (_g4058240611_)))))
                  (let () (declare (not safe)) (_g4058240611_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx40933_)
        (let* ((_g4093640960_
                (lambda (_g4093740956_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4093740956_)))
               (_g4093541172_
                (lambda (_g4093740964_)
                  (if (gx#stx-pair? _g4093740964_)
                      (let ((_e4094040967_ (gx#syntax-e _g4093740964_)))
                        (let ((_hd4094140971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4094040967_)))
                              (_tl4094240974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4094040967_))))
                          (if (gx#stx-pair? _tl4094240974_)
                              (let ((_e4094340977_
                                     (gx#syntax-e _tl4094240974_)))
                                (let ((_hd4094440981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4094340977_)))
                                      (_tl4094540984_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4094340977_))))
                                  (if (gx#stx-pair/null? _hd4094440981_)
                                      (let ((_g45831_
                                             (gx#syntax-split-splice
                                              _hd4094440981_
                                              '0)))
                                        (begin
                                          (let ((_g45832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45831_)
                                                       (##vector-length
                                                        _g45831_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45832_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45832_)))
                                          (let ((_target4094640987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45831_ 0)))
                                                (_tl4094840990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45831_ 1))))
                                            (if (gx#stx-null? _tl4094840990_)
                                                (letrec ((_loop4094940993_
                                                          (lambda (_hd4094740997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e4095341000_)
                    (if (gx#stx-pair? _hd4094740997_)
                        (let ((_e4095041003_ (gx#syntax-e _hd4094740997_)))
                          (let ((_lp-hd4095141007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4095041003_)))
                                (_lp-tl4095241010_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4095041003_))))
                            (_loop4094940993_
                             _lp-tl4095241010_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd4095141007_ _e4095341000_)))))
                        (let ((_e4095441013_ (reverse _e4095341000_)))
                          ((lambda (_L41017_ _L41019_)
                             (if (gx#stx-list? _L41017_)
                                 (let* ((_g4103741054_
                                         (lambda (_g4103841050_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4103841050_)))
                                        (_g4103641160_
                                         (lambda (_g4103841058_)
                                           (if (gx#stx-pair/null?
                                                _g4103841058_)
                                               (let ((_g45833_
                                                      (gx#syntax-split-splice
                                                       _g4103841058_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45834_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45833_)
                        (##vector-length _g45833_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45834_ 2)))
                 (error "Context expects 2 values" _g45834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4104041061_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45833_
                                                             0)))
                                                         (_tl4104241064_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45833_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4104241064_)
                                                         (letrec ((_loop4104341067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4104141071_ _$e4104741074_)
                             (if (gx#stx-pair? _hd4104141071_)
                                 (let ((_e4104441077_
                                        (gx#syntax-e _hd4104141071_)))
                                   (let ((_lp-hd4104541081_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4104441077_)))
                                         (_lp-tl4104641084_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4104441077_))))
                                     (_loop4104341067_
                                      _lp-tl4104641084_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd4104541081_
                                              _$e4104741074_)))))
                                 (let ((_$e4104841087_
                                        (reverse _$e4104741074_)))
                                   ((lambda (_L41091_)
                                      (let ()
                                        (let* ((_g4110741115_
                                                (lambda (_g4110841111_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g4110841111_)))
                                               (_g4110641148_
                                                (lambda (_g4110841119_)
                                                  ((lambda (_L41122_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp45840
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp45835
                        (let ((__tmp45837
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L41019_
                                  _L41091_)
                                 (foldr (lambda (_g4113641140_
                                                 _g4113741143_
                                                 _g4113841145_)
                                          (let ((__tmp45838
                                                 (let ((__tmp45839
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4113641140_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4113741143_
                                                         __tmp45839))))
                                            (declare (not safe))
                                            (cons __tmp45838 _g4113841145_)))
                                        '()
                                        _L41019_
                                        _L41091_)))
                              (__tmp45836
                               (let ()
                                 (declare (not safe))
                                 (cons _L41122_ '()))))
                          (declare (not safe))
                          (cons __tmp45837 __tmp45836))))
                   (declare (not safe))
                   (cons __tmp45840 __tmp45835)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4110841119_))))
                                          (_g4110641148_
                                           (let ((__tmp45841
                                                  (foldr (lambda (_g4115141154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4115241157_)
                   (let ()
                     (declare (not safe))
                     (cons _g4115141154_ _g4115241157_)))
                 '()
                 _L41091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx40933_
                                              __tmp45841
                                              _L41017_))))))
                                    _$e4104841087_))))))
                   (_loop4104341067_ _target4104041061_ '()))
                 (_g4103741054_ _g4103841058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4103741054_
                                                _g4103841058_)))))
                                   (_g4103641160_
                                    (gx#gentemps
                                     (foldr (lambda (_g4116341166_
                                                     _g4116441169_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4116341166_
                                                      _g4116441169_)))
                                            '()
                                            _L41019_))))
                                 (_g4093640960_ _g4093740964_)))
                           _tl4094540984_
                           _e4095441013_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4094940993_
                                                   _target4094640987_
                                                   '()))
                                                (_g4093640960_
                                                 _g4093740964_)))))
                                      (_g4093640960_ _g4093740964_))))
                              (_g4093640960_ _g4093740964_))))
                      (_g4093640960_ _g4093740964_)))))
          (_g4093541172_ _stx40933_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx41178_)
        (let* ((___stx4476044761_ _$stx41178_)
               (_g4118441267_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4476044761_))))
          (let ((___kont4476344764_
                 (lambda (_L41597_)
                   (let ((__tmp45844 (gx#datum->syntax '#f 'let))
                         (__tmp45842
                          (let ((__tmp45843
                                 (foldr (lambda (_g4161341616_ _g4161441619_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4161341616_
                                                  _g4161441619_)))
                                        '()
                                        _L41597_)))
                            (declare (not safe))
                            (cons '() __tmp45843))))
                     (declare (not safe))
                     (cons __tmp45844 __tmp45842))))
                (___kont4476744768_
                 (lambda (_L41505_ _L41507_ _L41508_ _L41509_)
                   (let ((__tmp45845
                          (let ((__tmp45847
                                 (let ((__tmp45848
                                        (let ((__tmp45849
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41507_ '()))))
                                          (declare (not safe))
                                          (cons _L41508_ __tmp45849))))
                                   (declare (not safe))
                                   (cons __tmp45848 '())))
                                (__tmp45846
                                 (foldr (lambda (_g4153141534_ _g4153241537_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4153141534_
                                                  _g4153241537_)))
                                        '()
                                        _L41505_)))
                            (declare (not safe))
                            (cons __tmp45847 __tmp45846))))
                     (declare (not safe))
                     (cons _L41509_ __tmp45845))))
                (___kont4477144772_
                 (lambda (_L41378_ _L41380_ _L41381_)
                   (let ((__tmp45856 (gx#datum->syntax '#f 'match*))
                         (__tmp45850
                          (let ((__tmp45855
                                 (foldr (lambda (_g4140341410_ _g4140441413_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4140341410_
                                                  _g4140441413_)))
                                        '()
                                        _L41380_))
                                (__tmp45851
                                 (let ((__tmp45852
                                        (let ((__tmp45854
                                               (foldr (lambda (_g4140541416_
                                                               _g4140641419_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4140541416_
                                                                _g4140641419_)))
                                                      '()
                                                      _L41381_))
                                              (__tmp45853
                                               (foldr (lambda (_g4140741422_
                                                               _g4140841425_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4140741422_
                                                                _g4140841425_)))
                                                      '()
                                                      _L41378_)))
                                          (declare (not safe))
                                          (cons __tmp45854 __tmp45853))))
                                   (declare (not safe))
                                   (cons __tmp45852 '()))))
                            (declare (not safe))
                            (cons __tmp45855 __tmp45851))))
                     (declare (not safe))
                     (cons __tmp45856 __tmp45850)))))
            (let* ((___match4485344854_
                    (lambda (_e4123041274_
                             _hd4123141278_
                             _tl4123241281_
                             _e4123341284_
                             _hd4123441288_
                             _tl4123541291_
                             ___splice4477344774_
                             _target4123641294_
                             _tl4123841297_)
                      (letrec ((_loop4123941300_
                                (lambda (_hd4123741304_
                                         _expr4124341307_
                                         _hd4124441309_)
                                  (if (gx#stx-pair? _hd4123741304_)
                                      (let ((_e4124041312_
                                             (gx#syntax-e _hd4123741304_)))
                                        (let ((_lp-tl4124241319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4124041312_)))
                                              (_lp-hd4124141316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4124041312_))))
                                          (if (gx#stx-pair? _lp-hd4124141316_)
                                              (let ((_e4124741322_
                                                     (gx#syntax-e
                                                      _lp-hd4124141316_)))
                                                (let ((_tl4124941329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4124741322_)))
                                                      (_hd4124841326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4124741322_))))
                                                  (if (gx#stx-pair?
                                                       _tl4124941329_)
                                                      (let ((_e4125041332_
                                                             (gx#syntax-e
                                                              _tl4124941329_)))
                                                        (let ((_tl4125241339_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4125041332_)))
                      (_hd4125141336_
                       (let () (declare (not safe)) (##car _e4125041332_))))
                  (if (gx#stx-null? _tl4125241339_)
                      (_loop4123941300_
                       _lp-tl4124241319_
                       (let ()
                         (declare (not safe))
                         (cons _hd4125141336_ _expr4124341307_))
                       (let ()
                         (declare (not safe))
                         (cons _hd4124841326_ _hd4124441309_)))
                      (let () (declare (not safe)) (_g4118441267_)))))
              (let () (declare (not safe)) (_g4118441267_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4118441267_)))))
                                      (let ((_hd4124641345_
                                             (reverse _hd4124441309_))
                                            (_expr4124541342_
                                             (reverse _expr4124341307_)))
                                        (if (gx#stx-pair/null? _tl4123541291_)
                                            (let ((___splice4477544776_
                                                   (gx#syntax-split-splice
                                                    _tl4123541291_
                                                    '0)))
                                              (let ((_tl4125541351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4477544776_
                                                        '1)))
                                                    (_target4125341348_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4477544776_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4125541351_)
                                                    (letrec ((_loop4125641354_
                                                              (lambda (_hd4125441358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4126041361_)
                        (if (gx#stx-pair? _hd4125441358_)
                            (let ((_e4125741364_ (gx#syntax-e _hd4125441358_)))
                              (let ((_lp-tl4125941371_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4125741364_)))
                                    (_lp-hd4125841368_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4125741364_))))
                                (_loop4125641354_
                                 _lp-tl4125941371_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4125841368_
                                         _body4126041361_)))))
                            (let ((_body4126141374_
                                   (reverse _body4126041361_)))
                              (___kont4477144772_
                               _body4126141374_
                               _expr4124541342_
                               _hd4124641345_))))))
              (_loop4125641354_ _target4125341348_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4118441267_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4118441267_))))))))
                        (_loop4123941300_ _target4123641294_ '() '()))))
                   (___match4484544846_
                    (lambda (_e4123041274_
                             _hd4123141278_
                             _tl4123241281_
                             _e4123341284_
                             _hd4123441288_
                             _tl4123541291_)
                      (if (gx#stx-pair/null? _hd4123441288_)
                          (let ((___splice4477344774_
                                 (gx#syntax-split-splice _hd4123441288_ '0)))
                            (let ((_tl4123841297_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4477344774_ '1)))
                                  (_target4123641294_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4477344774_ '0))))
                              (if (gx#stx-null? _tl4123841297_)
                                  (___match4485344854_
                                   _e4123041274_
                                   _hd4123141278_
                                   _tl4123241281_
                                   _e4123341284_
                                   _hd4123441288_
                                   _tl4123541291_
                                   ___splice4477344774_
                                   _target4123641294_
                                   _tl4123841297_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4118441267_)))))
                          (let () (declare (not safe)) (_g4118441267_)))))
                   (___match4483344834_
                    (lambda (_e4120641435_
                             _hd4120741439_
                             _tl4120841442_
                             _e4120941445_
                             _hd4121041449_
                             _tl4121141452_
                             _e4121241455_
                             _hd4121341459_
                             _tl4121441462_
                             _e4121541465_
                             _hd4121641469_
                             _tl4121741472_
                             ___splice4476944770_
                             _target4121841475_
                             _tl4122041478_)
                      (letrec ((_loop4122141481_
                                (lambda (_hd4121941485_ _body4122541488_)
                                  (if (gx#stx-pair? _hd4121941485_)
                                      (let ((_e4122241491_
                                             (gx#syntax-e _hd4121941485_)))
                                        (let ((_lp-tl4122441498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4122241491_)))
                                              (_lp-hd4122341495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4122241491_))))
                                          (_loop4122141481_
                                           _lp-tl4122441498_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4122341495_
                                                   _body4122541488_)))))
                                      (let ((_body4122641501_
                                             (reverse _body4122541488_)))
                                        (let ((_L41505_ _body4122641501_)
                                              (_L41507_ _hd4121641469_)
                                              (_L41508_ _hd4121341459_)
                                              (_L41509_ _hd4120741439_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L41508_))
                                              (___kont4476744768_
                                               _L41505_
                                               _L41507_
                                               _L41508_
                                               _L41509_)
                                              (___match4484544846_
                                               _e4120641435_
                                               _hd4120741439_
                                               _tl4120841442_
                                               _e4120941445_
                                               _hd4121041449_
                                               _tl4121141452_))))))))
                        (_loop4122141481_ _target4121841475_ '()))))
                   (___match4479944800_
                    (lambda (_e4118741547_
                             _hd4118841551_
                             _tl4118941554_
                             _e4119041557_
                             _hd4119141561_
                             _tl4119241564_
                             ___splice4476544766_
                             _target4119341567_
                             _tl4119541570_)
                      (letrec ((_loop4119641573_
                                (lambda (_hd4119441577_ _body4120041580_)
                                  (if (gx#stx-pair? _hd4119441577_)
                                      (let ((_e4119741583_
                                             (gx#syntax-e _hd4119441577_)))
                                        (let ((_lp-tl4119941590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4119741583_)))
                                              (_lp-hd4119841587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4119741583_))))
                                          (_loop4119641573_
                                           _lp-tl4119941590_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4119841587_
                                                   _body4120041580_)))))
                                      (let ((_body4120141593_
                                             (reverse _body4120041580_)))
                                        (___kont4476344764_
                                         _body4120141593_))))))
                        (_loop4119641573_ _target4119341567_ '())))))
              (if (gx#stx-pair? ___stx4476044761_)
                  (let ((_e4118741547_ (gx#syntax-e ___stx4476044761_)))
                    (let ((_tl4118941554_
                           (let () (declare (not safe)) (##cdr _e4118741547_)))
                          (_hd4118841551_
                           (let ()
                             (declare (not safe))
                             (##car _e4118741547_))))
                      (if (gx#stx-pair? _tl4118941554_)
                          (let ((_e4119041557_ (gx#syntax-e _tl4118941554_)))
                            (let ((_tl4119241564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4119041557_)))
                                  (_hd4119141561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4119041557_))))
                              (if (gx#stx-null? _hd4119141561_)
                                  (if (gx#stx-pair/null? _tl4119241564_)
                                      (let ((___splice4476544766_
                                             (gx#syntax-split-splice
                                              _tl4119241564_
                                              '0)))
                                        (let ((_tl4119541570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4476544766_
                                                  '1)))
                                              (_target4119341567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4476544766_
                                                  '0))))
                                          (if (gx#stx-null? _tl4119541570_)
                                              (___match4479944800_
                                               _e4118741547_
                                               _hd4118841551_
                                               _tl4118941554_
                                               _e4119041557_
                                               _hd4119141561_
                                               _tl4119241564_
                                               ___splice4476544766_
                                               _target4119341567_
                                               _tl4119541570_)
                                              (if (gx#stx-pair/null?
                                                   _hd4119141561_)
                                                  (let ((___splice4477344774_
                                                         (gx#syntax-split-splice
                                                          _hd4119141561_
                                                          '0)))
                                                    (let ((_tl4123841297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4477344774_
                                                              '1)))
                                                          (_target4123641294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4477344774_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4123841297_)
                                                          (___match4485344854_
                                                           _e4118741547_
                                                           _hd4118841551_
                                                           _tl4118941554_
                                                           _e4119041557_
                                                           _hd4119141561_
                                                           _tl4119241564_
                                                           ___splice4477344774_
                                                           _target4123641294_
                                                           _tl4123841297_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4118441267_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4118441267_))))))
                                      (if (gx#stx-pair/null? _hd4119141561_)
                                          (let ((___splice4477344774_
                                                 (gx#syntax-split-splice
                                                  _hd4119141561_
                                                  '0)))
                                            (let ((_tl4123841297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4477344774_
                                                      '1)))
                                                  (_target4123641294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4477344774_
                                                      '0))))
                                              (if (gx#stx-null? _tl4123841297_)
                                                  (___match4485344854_
                                                   _e4118741547_
                                                   _hd4118841551_
                                                   _tl4118941554_
                                                   _e4119041557_
                                                   _hd4119141561_
                                                   _tl4119241564_
                                                   ___splice4477344774_
                                                   _target4123641294_
                                                   _tl4123841297_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4118441267_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4118441267_))))
                                  (if (gx#stx-pair? _hd4119141561_)
                                      (let ((_e4121241455_
                                             (gx#syntax-e _hd4119141561_)))
                                        (let ((_tl4121441462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4121241455_)))
                                              (_hd4121341459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4121241455_))))
                                          (if (gx#stx-pair? _tl4121441462_)
                                              (let ((_e4121541465_
                                                     (gx#syntax-e
                                                      _tl4121441462_)))
                                                (let ((_tl4121741472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4121541465_)))
                                                      (_hd4121641469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4121541465_))))
                                                  (if (gx#stx-null?
                                                       _tl4121741472_)
                                                      (if (gx#stx-pair/null?
                                                           _tl4119241564_)
                                                          (let ((___splice4476944770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl4119241564_ '0)))
                    (let ((_tl4122041478_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4476944770_ '1)))
                          (_target4121841475_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4476944770_ '0))))
                      (if (gx#stx-null? _tl4122041478_)
                          (___match4483344834_
                           _e4118741547_
                           _hd4118841551_
                           _tl4118941554_
                           _e4119041557_
                           _hd4119141561_
                           _tl4119241564_
                           _e4121241455_
                           _hd4121341459_
                           _tl4121441462_
                           _e4121541465_
                           _hd4121641469_
                           _tl4121741472_
                           ___splice4476944770_
                           _target4121841475_
                           _tl4122041478_)
                          (if (gx#stx-pair/null? _hd4119141561_)
                              (let ((___splice4477344774_
                                     (gx#syntax-split-splice
                                      _hd4119141561_
                                      '0)))
                                (let ((_tl4123841297_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4477344774_
                                          '1)))
                                      (_target4123641294_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4477344774_
                                          '0))))
                                  (if (gx#stx-null? _tl4123841297_)
                                      (___match4485344854_
                                       _e4118741547_
                                       _hd4118841551_
                                       _tl4118941554_
                                       _e4119041557_
                                       _hd4119141561_
                                       _tl4119241564_
                                       ___splice4477344774_
                                       _target4123641294_
                                       _tl4123841297_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4118441267_)))))
                              (let () (declare (not safe)) (_g4118441267_))))))
                  (if (gx#stx-pair/null? _hd4119141561_)
                      (let ((___splice4477344774_
                             (gx#syntax-split-splice _hd4119141561_ '0)))
                        (let ((_tl4123841297_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4477344774_ '1)))
                              (_target4123641294_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4477344774_ '0))))
                          (if (gx#stx-null? _tl4123841297_)
                              (___match4485344854_
                               _e4118741547_
                               _hd4118841551_
                               _tl4118941554_
                               _e4119041557_
                               _hd4119141561_
                               _tl4119241564_
                               ___splice4477344774_
                               _target4123641294_
                               _tl4123841297_)
                              (let () (declare (not safe)) (_g4118441267_)))))
                      (let () (declare (not safe)) (_g4118441267_))))
              (if (gx#stx-pair/null? _hd4119141561_)
                  (let ((___splice4477344774_
                         (gx#syntax-split-splice _hd4119141561_ '0)))
                    (let ((_tl4123841297_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4477344774_ '1)))
                          (_target4123641294_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4477344774_ '0))))
                      (if (gx#stx-null? _tl4123841297_)
                          (___match4485344854_
                           _e4118741547_
                           _hd4118841551_
                           _tl4118941554_
                           _e4119041557_
                           _hd4119141561_
                           _tl4119241564_
                           ___splice4477344774_
                           _target4123641294_
                           _tl4123841297_)
                          (let () (declare (not safe)) (_g4118441267_)))))
                  (let () (declare (not safe)) (_g4118441267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4119141561_)
                                                  (let ((___splice4477344774_
                                                         (gx#syntax-split-splice
                                                          _hd4119141561_
                                                          '0)))
                                                    (let ((_tl4123841297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4477344774_
                                                              '1)))
                                                          (_target4123641294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4477344774_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4123841297_)
                                                          (___match4485344854_
                                                           _e4118741547_
                                                           _hd4118841551_
                                                           _tl4118941554_
                                                           _e4119041557_
                                                           _hd4119141561_
                                                           _tl4119241564_
                                                           ___splice4477344774_
                                                           _target4123641294_
                                                           _tl4123841297_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4118441267_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4118441267_))))))
                                      (if (gx#stx-pair/null? _hd4119141561_)
                                          (let ((___splice4477344774_
                                                 (gx#syntax-split-splice
                                                  _hd4119141561_
                                                  '0)))
                                            (let ((_tl4123841297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4477344774_
                                                      '1)))
                                                  (_target4123641294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4477344774_
                                                      '0))))
                                              (if (gx#stx-null? _tl4123841297_)
                                                  (___match4485344854_
                                                   _e4118741547_
                                                   _hd4118841551_
                                                   _tl4118941554_
                                                   _e4119041557_
                                                   _hd4119141561_
                                                   _tl4119241564_
                                                   ___splice4477344774_
                                                   _target4123641294_
                                                   _tl4123841297_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4118441267_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4118441267_)))))))
                          (let () (declare (not safe)) (_g4118441267_)))))
                  (let () (declare (not safe)) (_g4118441267_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx41630_)
        (let* ((___stx4485644857_ _$stx41630_)
               (_g4163541687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4485644857_))))
          (let ((___kont4485944860_
                 (lambda (_L41857_ _L41859_ _L41860_ _L41861_ _L41862_)
                   (let ((__tmp45865 (gx#datum->syntax '#f 'with))
                         (__tmp45857
                          (let ((__tmp45862
                                 (let ((__tmp45863
                                        (let ((__tmp45864
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41860_ '()))))
                                          (declare (not safe))
                                          (cons _L41861_ __tmp45864))))
                                   (declare (not safe))
                                   (cons __tmp45863 '())))
                                (__tmp45858
                                 (let ((__tmp45859
                                        (let ((__tmp45860
                                               (let ((__tmp45861
                                                      (foldr (lambda (_g4188741890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4188841893_)
                       (let ()
                         (declare (not safe))
                         (cons _g4188741890_ _g4188841893_)))
                     '()
                     _L41857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L41859_ __tmp45861))))
                                          (declare (not safe))
                                          (cons _L41862_ __tmp45860))))
                                   (declare (not safe))
                                   (cons __tmp45859 '()))))
                            (declare (not safe))
                            (cons __tmp45862 __tmp45858))))
                     (declare (not safe))
                     (cons __tmp45865 __tmp45857))))
                (___kont4486344864_
                 (lambda (_L41744_)
                   (let ((__tmp45868 (gx#datum->syntax '#f 'let))
                         (__tmp45866
                          (let ((__tmp45867
                                 (foldr (lambda (_g4176141764_ _g4176241767_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4176141764_
                                                  _g4176241767_)))
                                        '()
                                        _L41744_)))
                            (declare (not safe))
                            (cons '() __tmp45867))))
                     (declare (not safe))
                     (cons __tmp45868 __tmp45866)))))
            (let* ((___match4492944930_
                    (lambda (_e4166741694_
                             _hd4166841698_
                             _tl4166941701_
                             _e4167041704_
                             _hd4167141708_
                             _tl4167241711_
                             ___splice4486544866_
                             _target4167341714_
                             _tl4167541717_)
                      (letrec ((_loop4167641720_
                                (lambda (_hd4167441724_ _body4168041727_)
                                  (if (gx#stx-pair? _hd4167441724_)
                                      (let ((_e4167741730_
                                             (gx#syntax-e _hd4167441724_)))
                                        (let ((_lp-tl4167941737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4167741730_)))
                                              (_lp-hd4167841734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4167741730_))))
                                          (_loop4167641720_
                                           _lp-tl4167941737_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4167841734_
                                                   _body4168041727_)))))
                                      (let ((_body4168141740_
                                             (reverse _body4168041727_)))
                                        (___kont4486344864_
                                         _body4168141740_))))))
                        (_loop4167641720_ _target4167341714_ '()))))
                   (___match4490744908_
                    (lambda (_e4164241777_
                             _hd4164341781_
                             _tl4164441784_
                             _e4164541787_
                             _hd4164641791_
                             _tl4164741794_
                             _e4164841797_
                             _hd4164941801_
                             _tl4165041804_
                             _e4165141807_
                             _hd4165241811_
                             _tl4165341814_
                             _e4165441817_
                             _hd4165541821_
                             _tl4165641824_
                             ___splice4486144862_
                             _target4165741827_
                             _tl4165941830_)
                      (letrec ((_loop4166041833_
                                (lambda (_hd4165841837_ _body4166441840_)
                                  (if (gx#stx-pair? _hd4165841837_)
                                      (let ((_e4166141843_
                                             (gx#syntax-e _hd4165841837_)))
                                        (let ((_lp-tl4166341850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4166141843_)))
                                              (_lp-hd4166241847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4166141843_))))
                                          (_loop4166041833_
                                           _lp-tl4166341850_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4166241847_
                                                   _body4166441840_)))))
                                      (let ((_body4166541853_
                                             (reverse _body4166441840_)))
                                        (___kont4485944860_
                                         _body4166541853_
                                         _tl4165041804_
                                         _hd4165541821_
                                         _hd4165241811_
                                         _hd4164341781_))))))
                        (_loop4166041833_ _target4165741827_ '())))))
              (if (gx#stx-pair? ___stx4485644857_)
                  (let ((_e4164241777_ (gx#syntax-e ___stx4485644857_)))
                    (let ((_tl4164441784_
                           (let () (declare (not safe)) (##cdr _e4164241777_)))
                          (_hd4164341781_
                           (let ()
                             (declare (not safe))
                             (##car _e4164241777_))))
                      (if (gx#stx-pair? _tl4164441784_)
                          (let ((_e4164541787_ (gx#syntax-e _tl4164441784_)))
                            (let ((_tl4164741794_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4164541787_)))
                                  (_hd4164641791_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4164541787_))))
                              (if (gx#stx-pair? _hd4164641791_)
                                  (let ((_e4164841797_
                                         (gx#syntax-e _hd4164641791_)))
                                    (let ((_tl4165041804_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4164841797_)))
                                          (_hd4164941801_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4164841797_))))
                                      (if (gx#stx-pair? _hd4164941801_)
                                          (let ((_e4165141807_
                                                 (gx#syntax-e _hd4164941801_)))
                                            (let ((_tl4165341814_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4165141807_)))
                                                  (_hd4165241811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4165141807_))))
                                              (if (gx#stx-pair? _tl4165341814_)
                                                  (let ((_e4165441817_
                                                         (gx#syntax-e
                                                          _tl4165341814_)))
                                                    (let ((_tl4165641824_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4165441817_)))
                                                          (_hd4165541821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4165441817_))))
                                                      (if (gx#stx-null?
                                                           _tl4165641824_)
                                                          (if (gx#stx-pair/null?
                                                               _tl4164741794_)
                                                              (let ((___splice4486144862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl4164741794_ '0)))
                        (let ((_tl4165941830_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4486144862_ '1)))
                              (_target4165741827_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4486144862_ '0))))
                          (if (gx#stx-null? _tl4165941830_)
                              (___match4490744908_
                               _e4164241777_
                               _hd4164341781_
                               _tl4164441784_
                               _e4164541787_
                               _hd4164641791_
                               _tl4164741794_
                               _e4164841797_
                               _hd4164941801_
                               _tl4165041804_
                               _e4165141807_
                               _hd4165241811_
                               _tl4165341814_
                               _e4165441817_
                               _hd4165541821_
                               _tl4165641824_
                               ___splice4486144862_
                               _target4165741827_
                               _tl4165941830_)
                              (let () (declare (not safe)) (_g4163541687_)))))
                      (let () (declare (not safe)) (_g4163541687_)))
                  (let () (declare (not safe)) (_g4163541687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4163541687_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4163541687_)))))
                                  (if (gx#stx-null? _hd4164641791_)
                                      (if (gx#stx-pair/null? _tl4164741794_)
                                          (let ((___splice4486544866_
                                                 (gx#syntax-split-splice
                                                  _tl4164741794_
                                                  '0)))
                                            (let ((_tl4167541717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4486544866_
                                                      '1)))
                                                  (_target4167341714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4486544866_
                                                      '0))))
                                              (if (gx#stx-null? _tl4167541717_)
                                                  (___match4492944930_
                                                   _e4164241777_
                                                   _hd4164341781_
                                                   _tl4164441784_
                                                   _e4164541787_
                                                   _hd4164641791_
                                                   _tl4164741794_
                                                   ___splice4486544866_
                                                   _target4167341714_
                                                   _tl4167541717_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4163541687_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4163541687_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4163541687_))))))
                          (let () (declare (not safe)) (_g4163541687_)))))
                  (let () (declare (not safe)) (_g4163541687_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx41902_)
        (let* ((___stx4493244933_ _$stx41902_)
               (_g4191342059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4493244933_))))
          (let ((___kont4493544936_
                 (lambda (_L42663_ _L42665_ _L42666_)
                   (let ((__tmp45873 (gx#datum->syntax '#f 'and))
                         (__tmp45869
                          (foldr (lambda (_g4268742690_ _g4268842693_)
                                   (let ((__tmp45870
                                          (let ((__tmp45871
                                                 (let ((__tmp45872
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42663_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4268742690_
                                                         __tmp45872))))
                                            (declare (not safe))
                                            (cons _L42666_ __tmp45871))))
                                     (declare (not safe))
                                     (cons __tmp45870 _g4268842693_)))
                                 '()
                                 _L42665_)))
                     (declare (not safe))
                     (cons __tmp45873 __tmp45869))))
                (___kont4493944940_
                 (lambda (_L42553_ _L42555_ _L42556_)
                   (let ((__tmp45878 (gx#datum->syntax '#f 'or))
                         (__tmp45874
                          (foldr (lambda (_g4257742580_ _g4257842583_)
                                   (let ((__tmp45875
                                          (let ((__tmp45876
                                                 (let ((__tmp45877
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42553_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4257742580_
                                                         __tmp45877))))
                                            (declare (not safe))
                                            (cons _L42556_ __tmp45876))))
                                     (declare (not safe))
                                     (cons __tmp45875 _g4257842583_)))
                                 '()
                                 _L42555_)))
                     (declare (not safe))
                     (cons __tmp45878 __tmp45874))))
                (___kont4494344944_
                 (lambda (_L42453_ _L42455_ _L42456_)
                   (let ((__tmp45883 (gx#datum->syntax '#f 'not))
                         (__tmp45879
                          (let ((__tmp45880
                                 (let ((__tmp45881
                                        (let ((__tmp45882
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L42453_ '()))))
                                          (declare (not safe))
                                          (cons _L42455_ __tmp45882))))
                                   (declare (not safe))
                                   (cons _L42456_ __tmp45881))))
                            (declare (not safe))
                            (cons __tmp45880 '()))))
                     (declare (not safe))
                     (cons __tmp45883 __tmp45879))))
                (___kont4494544946_
                 (lambda (_L42379_ _L42381_)
                   (let ((__tmp45884
                          (let () (declare (not safe)) (cons _L42379_ '()))))
                     (declare (not safe))
                     (cons _L42381_ __tmp45884))))
                (___kont4494744948_
                 (lambda (_L42327_ _L42329_)
                   (let ((__tmp45893 (gx#datum->syntax '#f 'lambda))
                         (__tmp45885
                          (let ((__tmp45891
                                 (let ((__tmp45892
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45892 '())))
                                (__tmp45886
                                 (let ((__tmp45887
                                        (let ((__tmp45888
                                               (let ((__tmp45889
                                                      (let ((__tmp45890
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp45890
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L42327_ __tmp45889))))
                                          (declare (not safe))
                                          (cons _L42329_ __tmp45888))))
                                   (declare (not safe))
                                   (cons __tmp45887 '()))))
                            (declare (not safe))
                            (cons __tmp45891 __tmp45886))))
                     (declare (not safe))
                     (cons __tmp45893 __tmp45885))))
                (___kont4494944950_
                 (lambda (_L42279_ _L42281_ _L42282_)
                   (let ((__tmp45912 (gx#datum->syntax '#f 'lambda))
                         (__tmp45894
                          (let ((__tmp45910
                                 (let ((__tmp45911
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45911 '())))
                                (__tmp45895
                                 (let ((__tmp45896
                                        (let ((__tmp45909
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp45897
                                               (let ((__tmp45902
                                                      (let ((__tmp45908
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp45903
                                                             (let ((__tmp45904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45905
                                   (let ((__tmp45906
                                          (let ((__tmp45907
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45907 '()))))
                                     (declare (not safe))
                                     (cons _L42281_ __tmp45906))))
                              (declare (not safe))
                              (cons _L42282_ __tmp45905))))
                       (declare (not safe))
                       (cons __tmp45904 '()))))
                (declare (not safe))
                (cons __tmp45908 __tmp45903)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45898
                                                      (let ((__tmp45899
                                                             (let ((__tmp45900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45901 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp45901 '()))))
                       (declare (not safe))
                       (cons _L42279_ __tmp45900))))
                (declare (not safe))
                (cons __tmp45899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45902
                                                       __tmp45898))))
                                          (declare (not safe))
                                          (cons __tmp45909 __tmp45897))))
                                   (declare (not safe))
                                   (cons __tmp45896 '()))))
                            (declare (not safe))
                            (cons __tmp45910 __tmp45895))))
                     (declare (not safe))
                     (cons __tmp45912 __tmp45894))))
                (___kont4495144952_
                 (lambda (_L42210_ _L42212_ _L42213_)
                   (let ((__tmp45928 (gx#datum->syntax '#f 'lambda))
                         (__tmp45913
                          (let ((__tmp45926
                                 (let ((__tmp45927
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45927 '())))
                                (__tmp45914
                                 (let ((__tmp45915
                                        (let ((__tmp45925
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45916
                                               (let ((__tmp45921
                                                      (let ((__tmp45922
                                                             (let ((__tmp45923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45924 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45924 '()))))
                       (declare (not safe))
                       (cons _L42212_ __tmp45923))))
                (declare (not safe))
                (cons _L42213_ __tmp45922)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45917
                                                      (let ((__tmp45918
                                                             (let ((__tmp45919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45920 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45920 '()))))
                       (declare (not safe))
                       (cons _L42210_ __tmp45919))))
                (declare (not safe))
                (cons __tmp45918 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45921
                                                       __tmp45917))))
                                          (declare (not safe))
                                          (cons __tmp45925 __tmp45916))))
                                   (declare (not safe))
                                   (cons __tmp45915 '()))))
                            (declare (not safe))
                            (cons __tmp45926 __tmp45914))))
                     (declare (not safe))
                     (cons __tmp45928 __tmp45913))))
                (___kont4495344954_
                 (lambda (_L42130_ _L42132_ _L42133_ _L42134_)
                   (let ((__tmp45946 (gx#datum->syntax '#f 'lambda))
                         (__tmp45929
                          (let ((__tmp45944
                                 (let ((__tmp45945
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45945 '())))
                                (__tmp45930
                                 (let ((__tmp45931
                                        (let ((__tmp45943
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45932
                                               (let ((__tmp45939
                                                      (let ((__tmp45940
                                                             (let ((__tmp45941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45942 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45942 '()))))
                       (declare (not safe))
                       (cons _L42133_ __tmp45941))))
                (declare (not safe))
                (cons _L42134_ __tmp45940)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45933
                                                      (let ((__tmp45934
                                                             (let ((__tmp45935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45936
                                   (let ((__tmp45937
                                          (let ((__tmp45938
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45938 '()))))
                                     (declare (not safe))
                                     (cons _L42132_ __tmp45937))))
                              (declare (not safe))
                              (cons __tmp45936 '()))))
                       (declare (not safe))
                       (cons _L42130_ __tmp45935))))
                (declare (not safe))
                (cons __tmp45934 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45939
                                                       __tmp45933))))
                                          (declare (not safe))
                                          (cons __tmp45943 __tmp45932))))
                                   (declare (not safe))
                                   (cons __tmp45931 '()))))
                            (declare (not safe))
                            (cons __tmp45944 __tmp45930))))
                     (declare (not safe))
                     (cons __tmp45946 __tmp45929)))))
            (let* ((___match4510545106_
                    (lambda (_e4200342239_
                             _hd4200442243_
                             _tl4200542246_
                             _e4200642249_
                             _hd4200742253_
                             _tl4200842256_
                             _e4200942259_
                             _hd4201042263_
                             _tl4201142266_)
                      (if (gx#identifier? _hd4201042263_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45947_|
                               _hd4201042263_)
                              (if (gx#stx-pair? _tl4201142266_)
                                  (let ((_e4201242269_
                                         (gx#syntax-e _tl4201142266_)))
                                    (let ((_tl4201442276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4201242269_)))
                                          (_hd4201342273_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4201242269_))))
                                      (if (gx#stx-null? _tl4201442276_)
                                          (___kont4494944950_
                                           _hd4201342273_
                                           _hd4200742253_
                                           _hd4200442243_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))
                              (let () (declare (not safe)) (_g4191342059_)))
                          (if (gx#stx-datum? _hd4201042263_)
                              (let ((_e4202742196_ (gx#stx-e _hd4201042263_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4202742196_ '::))
                                    (if (gx#stx-pair? _tl4201142266_)
                                        (let ((_e4202842200_
                                               (gx#syntax-e _tl4201142266_)))
                                          (let ((_tl4203042207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4202842200_)))
                                                (_hd4202942204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4202842200_))))
                                            (if (gx#stx-null? _tl4203042207_)
                                                (___kont4495144952_
                                                 _hd4202942204_
                                                 _hd4200742253_
                                                 _hd4200442243_)
                                                (if (gx#stx-pair?
                                                     _tl4203042207_)
                                                    (let ((_e4204842110_
                                                           (gx#syntax-e
                                                            _tl4203042207_)))
                                                      (let ((_tl4205042117_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4204842110_)))
                    (_hd4204942114_
                     (let () (declare (not safe)) (##car _e4204842110_))))
                (if (gx#identifier? _hd4204942114_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45948_|
                         _hd4204942114_)
                        (if (gx#stx-pair? _tl4205042117_)
                            (let ((_e4205142120_ (gx#syntax-e _tl4205042117_)))
                              (let ((_tl4205342127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4205142120_)))
                                    (_hd4205242124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4205142120_))))
                                (if (gx#stx-null? _tl4205342127_)
                                    (___kont4495344954_
                                     _hd4205242124_
                                     _hd4202942204_
                                     _hd4200742253_
                                     _hd4200442243_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))))
                            (let () (declare (not safe)) (_g4191342059_)))
                        (let () (declare (not safe)) (_g4191342059_)))
                    (let () (declare (not safe)) (_g4191342059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_))))
                              (let () (declare (not safe)) (_g4191342059_))))))
                   (___match4508545086_
                    (lambda (_e4199442307_
                             _hd4199542311_
                             _tl4199642314_
                             _e4199742317_
                             _hd4199842321_
                             _tl4199942324_)
                      (if (gx#stx-null? _tl4199942324_)
                          (___kont4494744948_ _hd4199842321_ _hd4199542311_)
                          (if (gx#stx-pair? _tl4199942324_)
                              (let ((_e4200942259_
                                     (gx#syntax-e _tl4199942324_)))
                                (let ((_tl4201142266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4200942259_)))
                                      (_hd4201042263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4200942259_))))
                                  (if (gx#identifier? _hd4201042263_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45947_|
                                           _hd4201042263_)
                                          (if (gx#stx-pair? _tl4201142266_)
                                              (let ((_e4201242269_
                                                     (gx#syntax-e
                                                      _tl4201142266_)))
                                                (let ((_tl4201442276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4201242269_)))
                                                      (_hd4201342273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4201242269_))))
                                                  (if (gx#stx-null?
                                                       _tl4201442276_)
                                                      (___kont4494944950_
                                                       _hd4201342273_
                                                       _hd4199842321_
                                                       _hd4199542311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4191342059_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))
                                      (if (gx#stx-datum? _hd4201042263_)
                                          (let ((_e4202742196_
                                                 (gx#stx-e _hd4201042263_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4202742196_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4201142266_)
                                                    (let ((_e4202842200_
                                                           (gx#syntax-e
                                                            _tl4201142266_)))
                                                      (let ((_tl4203042207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4202842200_)))
                    (_hd4202942204_
                     (let () (declare (not safe)) (##car _e4202842200_))))
                (if (gx#stx-null? _tl4203042207_)
                    (___kont4495144952_
                     _hd4202942204_
                     _hd4199842321_
                     _hd4199542311_)
                    (if (gx#stx-pair? _tl4203042207_)
                        (let ((_e4204842110_ (gx#syntax-e _tl4203042207_)))
                          (let ((_tl4205042117_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4204842110_)))
                                (_hd4204942114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4204842110_))))
                            (if (gx#identifier? _hd4204942114_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45948_|
                                     _hd4204942114_)
                                    (if (gx#stx-pair? _tl4205042117_)
                                        (let ((_e4205142120_
                                               (gx#syntax-e _tl4205042117_)))
                                          (let ((_tl4205342127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4205142120_)))
                                                (_hd4205242124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4205142120_))))
                                            (if (gx#stx-null? _tl4205342127_)
                                                (___kont4495344954_
                                                 _hd4205242124_
                                                 _hd4202942204_
                                                 _hd4199842321_
                                                 _hd4199542311_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4191342059_)))))
                        (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_))))))
                              (let () (declare (not safe)) (_g4191342059_))))))
                   (___match4501545016_
                    (lambda (_e4194242483_
                             _hd4194342487_
                             _tl4194442490_
                             _e4194542493_
                             _hd4194642497_
                             _tl4194742500_
                             _e4194842503_
                             _hd4194942507_
                             _tl4195042510_
                             ___splice4494144942_
                             _target4195142513_
                             _tl4195342516_)
                      (letrec ((_loop4195442519_
                                (lambda (_hd4195242523_ _pred4195842526_)
                                  (if (gx#stx-pair? _hd4195242523_)
                                      (let ((_e4195542529_
                                             (gx#syntax-e _hd4195242523_)))
                                        (let ((_lp-tl4195742536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4195542529_)))
                                              (_lp-hd4195642533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4195542529_))))
                                          (_loop4195442519_
                                           _lp-tl4195742536_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4195642533_
                                                   _pred4195842526_)))))
                                      (let ((_pred4195942539_
                                             (reverse _pred4195842526_)))
                                        (if (gx#stx-pair? _tl4194742500_)
                                            (let ((_e4196042543_
                                                   (gx#syntax-e
                                                    _tl4194742500_)))
                                              (let ((_tl4196242550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4196042543_)))
                                                    (_hd4196142547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4196042543_))))
                                                (if (gx#stx-null?
                                                     _tl4196242550_)
                                                    (___kont4493944940_
                                                     _hd4196142547_
                                                     _pred4195942539_
                                                     _hd4194342487_)
                                                    (___match4510545106_
                                                     _e4194242483_
                                                     _hd4194342487_
                                                     _tl4194442490_
                                                     _e4194542493_
                                                     _hd4194642497_
                                                     _tl4194742500_
                                                     _e4196042543_
                                                     _hd4196142547_
                                                     _tl4196242550_))))
                                            (___match4508545086_
                                             _e4194242483_
                                             _hd4194342487_
                                             _tl4194442490_
                                             _e4194542493_
                                             _hd4194642497_
                                             _tl4194742500_)))))))
                        (_loop4195442519_ _target4195142513_ '()))))
                   (___match4498544986_
                    (lambda (_e4191842593_
                             _hd4191942597_
                             _tl4192042600_
                             _e4192142603_
                             _hd4192242607_
                             _tl4192342610_
                             _e4192442613_
                             _hd4192542617_
                             _tl4192642620_
                             ___splice4493744938_
                             _target4192742623_
                             _tl4192942626_)
                      (letrec ((_loop4193042629_
                                (lambda (_hd4192842633_ _pred4193442636_)
                                  (if (gx#stx-pair? _hd4192842633_)
                                      (let ((_e4193142639_
                                             (gx#syntax-e _hd4192842633_)))
                                        (let ((_lp-tl4193342646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4193142639_)))
                                              (_lp-hd4193242643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4193142639_))))
                                          (_loop4193042629_
                                           _lp-tl4193342646_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4193242643_
                                                   _pred4193442636_)))))
                                      (let ((_pred4193542649_
                                             (reverse _pred4193442636_)))
                                        (if (gx#stx-pair? _tl4192342610_)
                                            (let ((_e4193642653_
                                                   (gx#syntax-e
                                                    _tl4192342610_)))
                                              (let ((_tl4193842660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4193642653_)))
                                                    (_hd4193742657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4193642653_))))
                                                (if (gx#stx-null?
                                                     _tl4193842660_)
                                                    (___kont4493544936_
                                                     _hd4193742657_
                                                     _pred4193542649_
                                                     _hd4191942597_)
                                                    (___match4510545106_
                                                     _e4191842593_
                                                     _hd4191942597_
                                                     _tl4192042600_
                                                     _e4192142603_
                                                     _hd4192242607_
                                                     _tl4192342610_
                                                     _e4193642653_
                                                     _hd4193742657_
                                                     _tl4193842660_))))
                                            (___match4508545086_
                                             _e4191842593_
                                             _hd4191942597_
                                             _tl4192042600_
                                             _e4192142603_
                                             _hd4192242607_
                                             _tl4192342610_)))))))
                        (_loop4193042629_ _target4192742623_ '())))))
              (if (gx#stx-pair? ___stx4493244933_)
                  (let ((_e4191842593_ (gx#syntax-e ___stx4493244933_)))
                    (let ((_tl4192042600_
                           (let () (declare (not safe)) (##cdr _e4191842593_)))
                          (_hd4191942597_
                           (let ()
                             (declare (not safe))
                             (##car _e4191842593_))))
                      (if (gx#stx-pair? _tl4192042600_)
                          (let ((_e4192142603_ (gx#syntax-e _tl4192042600_)))
                            (let ((_tl4192342610_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4192142603_)))
                                  (_hd4192242607_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4192142603_))))
                              (if (gx#stx-pair? _hd4192242607_)
                                  (let ((_e4192442613_
                                         (gx#syntax-e _hd4192242607_)))
                                    (let ((_tl4192642620_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4192442613_)))
                                          (_hd4192542617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4192442613_))))
                                      (if (gx#identifier? _hd4192542617_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45949_|
                                               _hd4192542617_)
                                              (if (gx#stx-pair/null?
                                                   _tl4192642620_)
                                                  (let ((___splice4493744938_
                                                         (gx#syntax-split-splice
                                                          _tl4192642620_
                                                          '0)))
                                                    (let ((_tl4192942626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4493744938_
                                                              '1)))
                                                          (_target4192742623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4493744938_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4192942626_)
                                                          (___match4498544986_
                                                           _e4191842593_
                                                           _hd4191942597_
                                                           _tl4192042600_
                                                           _e4192142603_
                                                           _hd4192242607_
                                                           _tl4192342610_
                                                           _e4192442613_
                                                           _hd4192542617_
                                                           _tl4192642620_
                                                           ___splice4493744938_
                                                           _target4192742623_
                                                           _tl4192942626_)
                                                          (if (gx#stx-pair?
                                                               _tl4192342610_)
                                                              (let ((_e4198942369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl4192342610_)))
                        (let ((_tl4199142376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4198942369_)))
                              (_hd4199042373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4198942369_))))
                          (if (gx#stx-null? _tl4199142376_)
                              (___kont4494544946_
                               _hd4199042373_
                               _hd4192242607_)
                              (if (gx#identifier? _hd4199042373_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45947_|
                                       _hd4199042373_)
                                      (if (gx#stx-pair? _tl4199142376_)
                                          (let ((_e4201242269_
                                                 (gx#syntax-e _tl4199142376_)))
                                            (let ((_tl4201442276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4201242269_)))
                                                  (_hd4201342273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4201242269_))))
                                              (if (gx#stx-null? _tl4201442276_)
                                                  (___kont4494944950_
                                                   _hd4201342273_
                                                   _hd4192242607_
                                                   _hd4191942597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4191342059_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))
                                  (if (gx#stx-datum? _hd4199042373_)
                                      (let ((_e4202742196_
                                             (gx#stx-e _hd4199042373_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4202742196_ '::))
                                            (if (gx#stx-pair? _tl4199142376_)
                                                (let ((_e4202842200_
                                                       (gx#syntax-e
                                                        _tl4199142376_)))
                                                  (let ((_tl4203042207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4202842200_)))
                                                        (_hd4202942204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4202842200_))))
                                                    (if (gx#stx-null?
                                                         _tl4203042207_)
                                                        (___kont4495144952_
                                                         _hd4202942204_
                                                         _hd4192242607_
                                                         _hd4191942597_)
                                                        (if (gx#stx-pair?
                                                             _tl4203042207_)
                                                            (let ((_e4204842110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4203042207_)))
                      (let ((_tl4205042117_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4204842110_)))
                            (_hd4204942114_
                             (let ()
                               (declare (not safe))
                               (##car _e4204842110_))))
                        (if (gx#identifier? _hd4204942114_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45948_|
                                 _hd4204942114_)
                                (if (gx#stx-pair? _tl4205042117_)
                                    (let ((_e4205142120_
                                           (gx#syntax-e _tl4205042117_)))
                                      (let ((_tl4205342127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4205142120_)))
                                            (_hd4205242124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4205142120_))))
                                        (if (gx#stx-null? _tl4205342127_)
                                            (___kont4495344954_
                                             _hd4205242124_
                                             _hd4202942204_
                                             _hd4192242607_
                                             _hd4191942597_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))
                                (let () (declare (not safe)) (_g4191342059_)))
                            (let () (declare (not safe)) (_g4191342059_)))))
                    (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))))))
                      (if (gx#stx-null? _tl4192342610_)
                          (___kont4494744948_ _hd4192242607_ _hd4191942597_)
                          (let () (declare (not safe)) (_g4191342059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4192342610_)
                                                      (let ((_e4198942369_
                                                             (gx#syntax-e
                                                              _tl4192342610_)))
                                                        (let ((_tl4199142376_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4198942369_)))
                      (_hd4199042373_
                       (let () (declare (not safe)) (##car _e4198942369_))))
                  (if (gx#stx-null? _tl4199142376_)
                      (___kont4494544946_ _hd4199042373_ _hd4192242607_)
                      (if (gx#identifier? _hd4199042373_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45947_|
                               _hd4199042373_)
                              (if (gx#stx-pair? _tl4199142376_)
                                  (let ((_e4201242269_
                                         (gx#syntax-e _tl4199142376_)))
                                    (let ((_tl4201442276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4201242269_)))
                                          (_hd4201342273_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4201242269_))))
                                      (if (gx#stx-null? _tl4201442276_)
                                          (___kont4494944950_
                                           _hd4201342273_
                                           _hd4192242607_
                                           _hd4191942597_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))
                              (let () (declare (not safe)) (_g4191342059_)))
                          (if (gx#stx-datum? _hd4199042373_)
                              (let ((_e4202742196_ (gx#stx-e _hd4199042373_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4202742196_ '::))
                                    (if (gx#stx-pair? _tl4199142376_)
                                        (let ((_e4202842200_
                                               (gx#syntax-e _tl4199142376_)))
                                          (let ((_tl4203042207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4202842200_)))
                                                (_hd4202942204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4202842200_))))
                                            (if (gx#stx-null? _tl4203042207_)
                                                (___kont4495144952_
                                                 _hd4202942204_
                                                 _hd4192242607_
                                                 _hd4191942597_)
                                                (if (gx#stx-pair?
                                                     _tl4203042207_)
                                                    (let ((_e4204842110_
                                                           (gx#syntax-e
                                                            _tl4203042207_)))
                                                      (let ((_tl4205042117_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4204842110_)))
                    (_hd4204942114_
                     (let () (declare (not safe)) (##car _e4204842110_))))
                (if (gx#identifier? _hd4204942114_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45948_|
                         _hd4204942114_)
                        (if (gx#stx-pair? _tl4205042117_)
                            (let ((_e4205142120_ (gx#syntax-e _tl4205042117_)))
                              (let ((_tl4205342127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4205142120_)))
                                    (_hd4205242124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4205142120_))))
                                (if (gx#stx-null? _tl4205342127_)
                                    (___kont4495344954_
                                     _hd4205242124_
                                     _hd4202942204_
                                     _hd4192242607_
                                     _hd4191942597_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))))
                            (let () (declare (not safe)) (_g4191342059_)))
                        (let () (declare (not safe)) (_g4191342059_)))
                    (let () (declare (not safe)) (_g4191342059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_))))
                              (let ()
                                (declare (not safe))
                                (_g4191342059_)))))))
              (if (gx#stx-null? _tl4192342610_)
                  (___kont4494744948_ _hd4192242607_ _hd4191942597_)
                  (let () (declare (not safe)) (_g4191342059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45950_|
                                                   _hd4192542617_)
                                                  (if (gx#stx-pair/null?
                                                       _tl4192642620_)
                                                      (let ((___splice4494144942_
                                                             (gx#syntax-split-splice
                                                              _tl4192642620_
                                                              '0)))
                                                        (let ((_tl4195342516_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4494144942_ '1)))
                      (_target4195142513_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4494144942_ '0))))
                  (if (gx#stx-null? _tl4195342516_)
                      (___match4501545016_
                       _e4191842593_
                       _hd4191942597_
                       _tl4192042600_
                       _e4192142603_
                       _hd4192242607_
                       _tl4192342610_
                       _e4192442613_
                       _hd4192542617_
                       _tl4192642620_
                       ___splice4494144942_
                       _target4195142513_
                       _tl4195342516_)
                      (if (gx#stx-pair? _tl4192342610_)
                          (let ((_e4198942369_ (gx#syntax-e _tl4192342610_)))
                            (let ((_tl4199142376_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4198942369_)))
                                  (_hd4199042373_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4198942369_))))
                              (if (gx#stx-null? _tl4199142376_)
                                  (___kont4494544946_
                                   _hd4199042373_
                                   _hd4192242607_)
                                  (if (gx#identifier? _hd4199042373_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45947_|
                                           _hd4199042373_)
                                          (if (gx#stx-pair? _tl4199142376_)
                                              (let ((_e4201242269_
                                                     (gx#syntax-e
                                                      _tl4199142376_)))
                                                (let ((_tl4201442276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4201242269_)))
                                                      (_hd4201342273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4201242269_))))
                                                  (if (gx#stx-null?
                                                       _tl4201442276_)
                                                      (___kont4494944950_
                                                       _hd4201342273_
                                                       _hd4192242607_
                                                       _hd4191942597_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4191342059_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))
                                      (if (gx#stx-datum? _hd4199042373_)
                                          (let ((_e4202742196_
                                                 (gx#stx-e _hd4199042373_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4202742196_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4199142376_)
                                                    (let ((_e4202842200_
                                                           (gx#syntax-e
                                                            _tl4199142376_)))
                                                      (let ((_tl4203042207_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4202842200_)))
                    (_hd4202942204_
                     (let () (declare (not safe)) (##car _e4202842200_))))
                (if (gx#stx-null? _tl4203042207_)
                    (___kont4495144952_
                     _hd4202942204_
                     _hd4192242607_
                     _hd4191942597_)
                    (if (gx#stx-pair? _tl4203042207_)
                        (let ((_e4204842110_ (gx#syntax-e _tl4203042207_)))
                          (let ((_tl4205042117_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4204842110_)))
                                (_hd4204942114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4204842110_))))
                            (if (gx#identifier? _hd4204942114_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45948_|
                                     _hd4204942114_)
                                    (if (gx#stx-pair? _tl4205042117_)
                                        (let ((_e4205142120_
                                               (gx#syntax-e _tl4205042117_)))
                                          (let ((_tl4205342127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4205142120_)))
                                                (_hd4205242124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4205142120_))))
                                            (if (gx#stx-null? _tl4205342127_)
                                                (___kont4495344954_
                                                 _hd4205242124_
                                                 _hd4202942204_
                                                 _hd4192242607_
                                                 _hd4191942597_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4191342059_)))))
                        (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))))))
                          (if (gx#stx-null? _tl4192342610_)
                              (___kont4494744948_
                               _hd4192242607_
                               _hd4191942597_)
                              (let ()
                                (declare (not safe))
                                (_g4191342059_)))))))
              (if (gx#stx-pair? _tl4192342610_)
                  (let ((_e4198942369_ (gx#syntax-e _tl4192342610_)))
                    (let ((_tl4199142376_
                           (let () (declare (not safe)) (##cdr _e4198942369_)))
                          (_hd4199042373_
                           (let ()
                             (declare (not safe))
                             (##car _e4198942369_))))
                      (if (gx#stx-null? _tl4199142376_)
                          (___kont4494544946_ _hd4199042373_ _hd4192242607_)
                          (if (gx#identifier? _hd4199042373_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45947_|
                                   _hd4199042373_)
                                  (if (gx#stx-pair? _tl4199142376_)
                                      (let ((_e4201242269_
                                             (gx#syntax-e _tl4199142376_)))
                                        (let ((_tl4201442276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4201242269_)))
                                              (_hd4201342273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4201242269_))))
                                          (if (gx#stx-null? _tl4201442276_)
                                              (___kont4494944950_
                                               _hd4201342273_
                                               _hd4192242607_
                                               _hd4191942597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))
                              (if (gx#stx-datum? _hd4199042373_)
                                  (let ((_e4202742196_
                                         (gx#stx-e _hd4199042373_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4202742196_ '::))
                                        (if (gx#stx-pair? _tl4199142376_)
                                            (let ((_e4202842200_
                                                   (gx#syntax-e
                                                    _tl4199142376_)))
                                              (let ((_tl4203042207_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4202842200_)))
                                                    (_hd4202942204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4202842200_))))
                                                (if (gx#stx-null?
                                                     _tl4203042207_)
                                                    (___kont4495144952_
                                                     _hd4202942204_
                                                     _hd4192242607_
                                                     _hd4191942597_)
                                                    (if (gx#stx-pair?
                                                         _tl4203042207_)
                                                        (let ((_e4204842110_
                                                               (gx#syntax-e
                                                                _tl4203042207_)))
                                                          (let ((_tl4205042117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4204842110_)))
                        (_hd4204942114_
                         (let () (declare (not safe)) (##car _e4204842110_))))
                    (if (gx#identifier? _hd4204942114_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45948_|
                             _hd4204942114_)
                            (if (gx#stx-pair? _tl4205042117_)
                                (let ((_e4205142120_
                                       (gx#syntax-e _tl4205042117_)))
                                  (let ((_tl4205342127_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4205142120_)))
                                        (_hd4205242124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4205142120_))))
                                    (if (gx#stx-null? _tl4205342127_)
                                        (___kont4495344954_
                                         _hd4205242124_
                                         _hd4202942204_
                                         _hd4192242607_
                                         _hd4191942597_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))))
                                (let () (declare (not safe)) (_g4191342059_)))
                            (let () (declare (not safe)) (_g4191342059_)))
                        (let () (declare (not safe)) (_g4191342059_)))))
                (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))))))
                  (if (gx#stx-null? _tl4192342610_)
                      (___kont4494744948_ _hd4192242607_ _hd4191942597_)
                      (let () (declare (not safe)) (_g4191342059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45951_|
                                                       _hd4192542617_)
                                                      (if (gx#stx-pair?
                                                           _tl4192642620_)
                                                          (let ((_e4197542433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4192642620_)))
                    (let ((_tl4197742440_
                           (let () (declare (not safe)) (##cdr _e4197542433_)))
                          (_hd4197642437_
                           (let ()
                             (declare (not safe))
                             (##car _e4197542433_))))
                      (if (gx#stx-null? _tl4197742440_)
                          (if (gx#stx-pair? _tl4192342610_)
                              (let ((_e4197842443_
                                     (gx#syntax-e _tl4192342610_)))
                                (let ((_tl4198042450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4197842443_)))
                                      (_hd4197942447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4197842443_))))
                                  (if (gx#stx-null? _tl4198042450_)
                                      (___kont4494344944_
                                       _hd4197942447_
                                       _hd4197642437_
                                       _hd4191942597_)
                                      (if (gx#identifier? _hd4197942447_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45947_|
                                               _hd4197942447_)
                                              (if (gx#stx-pair? _tl4198042450_)
                                                  (let ((_e4201242269_
                                                         (gx#syntax-e
                                                          _tl4198042450_)))
                                                    (let ((_tl4201442276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4201242269_)))
                                                          (_hd4201342273_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4201242269_))))
                                                      (if (gx#stx-null?
                                                           _tl4201442276_)
                                                          (___kont4494944950_
                                                           _hd4201342273_
                                                           _hd4192242607_
                                                           _hd4191942597_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4191342059_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4191342059_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))
                                          (if (gx#stx-datum? _hd4197942447_)
                                              (let ((_e4202742196_
                                                     (gx#stx-e
                                                      _hd4197942447_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4202742196_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4198042450_)
                                                        (let ((_e4202842200_
                                                               (gx#syntax-e
                                                                _tl4198042450_)))
                                                          (let ((_tl4203042207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4202842200_)))
                        (_hd4202942204_
                         (let () (declare (not safe)) (##car _e4202842200_))))
                    (if (gx#stx-null? _tl4203042207_)
                        (___kont4495144952_
                         _hd4202942204_
                         _hd4192242607_
                         _hd4191942597_)
                        (if (gx#stx-pair? _tl4203042207_)
                            (let ((_e4204842110_ (gx#syntax-e _tl4203042207_)))
                              (let ((_tl4205042117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4204842110_)))
                                    (_hd4204942114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4204842110_))))
                                (if (gx#identifier? _hd4204942114_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45948_|
                                         _hd4204942114_)
                                        (if (gx#stx-pair? _tl4205042117_)
                                            (let ((_e4205142120_
                                                   (gx#syntax-e
                                                    _tl4205042117_)))
                                              (let ((_tl4205342127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4205142120_)))
                                                    (_hd4205242124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4205142120_))))
                                                (if (gx#stx-null?
                                                     _tl4205342127_)
                                                    (___kont4495344954_
                                                     _hd4205242124_
                                                     _hd4202942204_
                                                     _hd4192242607_
                                                     _hd4191942597_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))))
                            (let () (declare (not safe)) (_g4191342059_))))))
                (let () (declare (not safe)) (_g4191342059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))))))
                              (if (gx#stx-null? _tl4192342610_)
                                  (___kont4494744948_
                                   _hd4192242607_
                                   _hd4191942597_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_))))
                          (if (gx#stx-pair? _tl4192342610_)
                              (let ((_e4198942369_
                                     (gx#syntax-e _tl4192342610_)))
                                (let ((_tl4199142376_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4198942369_)))
                                      (_hd4199042373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4198942369_))))
                                  (if (gx#stx-null? _tl4199142376_)
                                      (___kont4494544946_
                                       _hd4199042373_
                                       _hd4192242607_)
                                      (if (gx#identifier? _hd4199042373_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45947_|
                                               _hd4199042373_)
                                              (if (gx#stx-pair? _tl4199142376_)
                                                  (let ((_e4201242269_
                                                         (gx#syntax-e
                                                          _tl4199142376_)))
                                                    (let ((_tl4201442276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4201242269_)))
                                                          (_hd4201342273_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4201242269_))))
                                                      (if (gx#stx-null?
                                                           _tl4201442276_)
                                                          (___kont4494944950_
                                                           _hd4201342273_
                                                           _hd4192242607_
                                                           _hd4191942597_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4191342059_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4191342059_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))
                                          (if (gx#stx-datum? _hd4199042373_)
                                              (let ((_e4202742196_
                                                     (gx#stx-e
                                                      _hd4199042373_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4202742196_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4199142376_)
                                                        (let ((_e4202842200_
                                                               (gx#syntax-e
                                                                _tl4199142376_)))
                                                          (let ((_tl4203042207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4202842200_)))
                        (_hd4202942204_
                         (let () (declare (not safe)) (##car _e4202842200_))))
                    (if (gx#stx-null? _tl4203042207_)
                        (___kont4495144952_
                         _hd4202942204_
                         _hd4192242607_
                         _hd4191942597_)
                        (if (gx#stx-pair? _tl4203042207_)
                            (let ((_e4204842110_ (gx#syntax-e _tl4203042207_)))
                              (let ((_tl4205042117_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4204842110_)))
                                    (_hd4204942114_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4204842110_))))
                                (if (gx#identifier? _hd4204942114_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45948_|
                                         _hd4204942114_)
                                        (if (gx#stx-pair? _tl4205042117_)
                                            (let ((_e4205142120_
                                                   (gx#syntax-e
                                                    _tl4205042117_)))
                                              (let ((_tl4205342127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4205142120_)))
                                                    (_hd4205242124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4205142120_))))
                                                (if (gx#stx-null?
                                                     _tl4205342127_)
                                                    (___kont4495344954_
                                                     _hd4205242124_
                                                     _hd4202942204_
                                                     _hd4192242607_
                                                     _hd4191942597_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))))
                            (let () (declare (not safe)) (_g4191342059_))))))
                (let () (declare (not safe)) (_g4191342059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))))))
                              (if (gx#stx-null? _tl4192342610_)
                                  (___kont4494744948_
                                   _hd4192242607_
                                   _hd4191942597_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))))))
                  (if (gx#stx-pair? _tl4192342610_)
                      (let ((_e4198942369_ (gx#syntax-e _tl4192342610_)))
                        (let ((_tl4199142376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4198942369_)))
                              (_hd4199042373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4198942369_))))
                          (if (gx#stx-null? _tl4199142376_)
                              (___kont4494544946_
                               _hd4199042373_
                               _hd4192242607_)
                              (if (gx#identifier? _hd4199042373_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45947_|
                                       _hd4199042373_)
                                      (if (gx#stx-pair? _tl4199142376_)
                                          (let ((_e4201242269_
                                                 (gx#syntax-e _tl4199142376_)))
                                            (let ((_tl4201442276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4201242269_)))
                                                  (_hd4201342273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4201242269_))))
                                              (if (gx#stx-null? _tl4201442276_)
                                                  (___kont4494944950_
                                                   _hd4201342273_
                                                   _hd4192242607_
                                                   _hd4191942597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4191342059_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))
                                  (if (gx#stx-datum? _hd4199042373_)
                                      (let ((_e4202742196_
                                             (gx#stx-e _hd4199042373_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4202742196_ '::))
                                            (if (gx#stx-pair? _tl4199142376_)
                                                (let ((_e4202842200_
                                                       (gx#syntax-e
                                                        _tl4199142376_)))
                                                  (let ((_tl4203042207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4202842200_)))
                                                        (_hd4202942204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4202842200_))))
                                                    (if (gx#stx-null?
                                                         _tl4203042207_)
                                                        (___kont4495144952_
                                                         _hd4202942204_
                                                         _hd4192242607_
                                                         _hd4191942597_)
                                                        (if (gx#stx-pair?
                                                             _tl4203042207_)
                                                            (let ((_e4204842110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4203042207_)))
                      (let ((_tl4205042117_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4204842110_)))
                            (_hd4204942114_
                             (let ()
                               (declare (not safe))
                               (##car _e4204842110_))))
                        (if (gx#identifier? _hd4204942114_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45948_|
                                 _hd4204942114_)
                                (if (gx#stx-pair? _tl4205042117_)
                                    (let ((_e4205142120_
                                           (gx#syntax-e _tl4205042117_)))
                                      (let ((_tl4205342127_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4205142120_)))
                                            (_hd4205242124_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4205142120_))))
                                        (if (gx#stx-null? _tl4205342127_)
                                            (___kont4495344954_
                                             _hd4205242124_
                                             _hd4202942204_
                                             _hd4192242607_
                                             _hd4191942597_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_)))
                                (let () (declare (not safe)) (_g4191342059_)))
                            (let () (declare (not safe)) (_g4191342059_)))))
                    (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))))))
                      (if (gx#stx-null? _tl4192342610_)
                          (___kont4494744948_ _hd4192242607_ _hd4191942597_)
                          (let () (declare (not safe)) (_g4191342059_)))))
              (if (gx#stx-pair? _tl4192342610_)
                  (let ((_e4198942369_ (gx#syntax-e _tl4192342610_)))
                    (let ((_tl4199142376_
                           (let () (declare (not safe)) (##cdr _e4198942369_)))
                          (_hd4199042373_
                           (let ()
                             (declare (not safe))
                             (##car _e4198942369_))))
                      (if (gx#stx-null? _tl4199142376_)
                          (___kont4494544946_ _hd4199042373_ _hd4192242607_)
                          (if (gx#identifier? _hd4199042373_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45947_|
                                   _hd4199042373_)
                                  (if (gx#stx-pair? _tl4199142376_)
                                      (let ((_e4201242269_
                                             (gx#syntax-e _tl4199142376_)))
                                        (let ((_tl4201442276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4201242269_)))
                                              (_hd4201342273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4201242269_))))
                                          (if (gx#stx-null? _tl4201442276_)
                                              (___kont4494944950_
                                               _hd4201342273_
                                               _hd4192242607_
                                               _hd4191942597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4191342059_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4191342059_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))
                              (if (gx#stx-datum? _hd4199042373_)
                                  (let ((_e4202742196_
                                         (gx#stx-e _hd4199042373_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4202742196_ '::))
                                        (if (gx#stx-pair? _tl4199142376_)
                                            (let ((_e4202842200_
                                                   (gx#syntax-e
                                                    _tl4199142376_)))
                                              (let ((_tl4203042207_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4202842200_)))
                                                    (_hd4202942204_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4202842200_))))
                                                (if (gx#stx-null?
                                                     _tl4203042207_)
                                                    (___kont4495144952_
                                                     _hd4202942204_
                                                     _hd4192242607_
                                                     _hd4191942597_)
                                                    (if (gx#stx-pair?
                                                         _tl4203042207_)
                                                        (let ((_e4204842110_
                                                               (gx#syntax-e
                                                                _tl4203042207_)))
                                                          (let ((_tl4205042117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4204842110_)))
                        (_hd4204942114_
                         (let () (declare (not safe)) (##car _e4204842110_))))
                    (if (gx#identifier? _hd4204942114_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45948_|
                             _hd4204942114_)
                            (if (gx#stx-pair? _tl4205042117_)
                                (let ((_e4205142120_
                                       (gx#syntax-e _tl4205042117_)))
                                  (let ((_tl4205342127_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4205142120_)))
                                        (_hd4205242124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4205142120_))))
                                    (if (gx#stx-null? _tl4205342127_)
                                        (___kont4495344954_
                                         _hd4205242124_
                                         _hd4202942204_
                                         _hd4192242607_
                                         _hd4191942597_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_)))))
                                (let () (declare (not safe)) (_g4191342059_)))
                            (let () (declare (not safe)) (_g4191342059_)))
                        (let () (declare (not safe)) (_g4191342059_)))))
                (let () (declare (not safe)) (_g4191342059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4191342059_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))))))
                  (if (gx#stx-null? _tl4192342610_)
                      (___kont4494744948_ _hd4192242607_ _hd4191942597_)
                      (let () (declare (not safe)) (_g4191342059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4192342610_)
                                              (let ((_e4198942369_
                                                     (gx#syntax-e
                                                      _tl4192342610_)))
                                                (let ((_tl4199142376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4198942369_)))
                                                      (_hd4199042373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4198942369_))))
                                                  (if (gx#stx-null?
                                                       _tl4199142376_)
                                                      (___kont4494544946_
                                                       _hd4199042373_
                                                       _hd4192242607_)
                                                      (if (gx#identifier?
                                                           _hd4199042373_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g45947_|
                                                               _hd4199042373_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4199142376_)
                          (let ((_e4201242269_ (gx#syntax-e _tl4199142376_)))
                            (let ((_tl4201442276_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4201242269_)))
                                  (_hd4201342273_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4201242269_))))
                              (if (gx#stx-null? _tl4201442276_)
                                  (___kont4494944950_
                                   _hd4201342273_
                                   _hd4192242607_
                                   _hd4191942597_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4191342059_)))))
                          (let () (declare (not safe)) (_g4191342059_)))
                      (let () (declare (not safe)) (_g4191342059_)))
                  (if (gx#stx-datum? _hd4199042373_)
                      (let ((_e4202742196_ (gx#stx-e _hd4199042373_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e4202742196_ '::))
                            (if (gx#stx-pair? _tl4199142376_)
                                (let ((_e4202842200_
                                       (gx#syntax-e _tl4199142376_)))
                                  (let ((_tl4203042207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4202842200_)))
                                        (_hd4202942204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4202842200_))))
                                    (if (gx#stx-null? _tl4203042207_)
                                        (___kont4495144952_
                                         _hd4202942204_
                                         _hd4192242607_
                                         _hd4191942597_)
                                        (if (gx#stx-pair? _tl4203042207_)
                                            (let ((_e4204842110_
                                                   (gx#syntax-e
                                                    _tl4203042207_)))
                                              (let ((_tl4205042117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4204842110_)))
                                                    (_hd4204942114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4204842110_))))
                                                (if (gx#identifier?
                                                     _hd4204942114_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g45948_|
                                                         _hd4204942114_)
                                                        (if (gx#stx-pair?
                                                             _tl4205042117_)
                                                            (let ((_e4205142120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4205042117_)))
                      (let ((_tl4205342127_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4205142120_)))
                            (_hd4205242124_
                             (let ()
                               (declare (not safe))
                               (##car _e4205142120_))))
                        (if (gx#stx-null? _tl4205342127_)
                            (___kont4495344954_
                             _hd4205242124_
                             _hd4202942204_
                             _hd4192242607_
                             _hd4191942597_)
                            (let () (declare (not safe)) (_g4191342059_)))))
                    (let () (declare (not safe)) (_g4191342059_)))
                (let () (declare (not safe)) (_g4191342059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_))))))
                                (let () (declare (not safe)) (_g4191342059_)))
                            (let () (declare (not safe)) (_g4191342059_))))
                      (let () (declare (not safe)) (_g4191342059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl4192342610_)
                                                  (___kont4494744948_
                                                   _hd4192242607_
                                                   _hd4191942597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4191342059_)))))))
                                  (if (gx#stx-pair? _tl4192342610_)
                                      (let ((_e4198942369_
                                             (gx#syntax-e _tl4192342610_)))
                                        (let ((_tl4199142376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4198942369_)))
                                              (_hd4199042373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4198942369_))))
                                          (if (gx#stx-null? _tl4199142376_)
                                              (___kont4494544946_
                                               _hd4199042373_
                                               _hd4192242607_)
                                              (if (gx#identifier?
                                                   _hd4199042373_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45947_|
                                                       _hd4199042373_)
                                                      (if (gx#stx-pair?
                                                           _tl4199142376_)
                                                          (let ((_e4201242269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4199142376_)))
                    (let ((_tl4201442276_
                           (let () (declare (not safe)) (##cdr _e4201242269_)))
                          (_hd4201342273_
                           (let ()
                             (declare (not safe))
                             (##car _e4201242269_))))
                      (if (gx#stx-null? _tl4201442276_)
                          (___kont4494944950_
                           _hd4201342273_
                           _hd4192242607_
                           _hd4191942597_)
                          (let () (declare (not safe)) (_g4191342059_)))))
                  (let () (declare (not safe)) (_g4191342059_)))
              (let () (declare (not safe)) (_g4191342059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd4199042373_)
                                                      (let ((_e4202742196_
                                                             (gx#stx-e
                                                              _hd4199042373_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e4202742196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl4199142376_)
                        (let ((_e4202842200_ (gx#syntax-e _tl4199142376_)))
                          (let ((_tl4203042207_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4202842200_)))
                                (_hd4202942204_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4202842200_))))
                            (if (gx#stx-null? _tl4203042207_)
                                (___kont4495144952_
                                 _hd4202942204_
                                 _hd4192242607_
                                 _hd4191942597_)
                                (if (gx#stx-pair? _tl4203042207_)
                                    (let ((_e4204842110_
                                           (gx#syntax-e _tl4203042207_)))
                                      (let ((_tl4205042117_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4204842110_)))
                                            (_hd4204942114_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4204842110_))))
                                        (if (gx#identifier? _hd4204942114_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45948_|
                                                 _hd4204942114_)
                                                (if (gx#stx-pair?
                                                     _tl4205042117_)
                                                    (let ((_e4205142120_
                                                           (gx#syntax-e
                                                            _tl4205042117_)))
                                                      (let ((_tl4205342127_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4205142120_)))
                    (_hd4205242124_
                     (let () (declare (not safe)) (##car _e4205142120_))))
                (if (gx#stx-null? _tl4205342127_)
                    (___kont4495344954_
                     _hd4205242124_
                     _hd4202942204_
                     _hd4192242607_
                     _hd4191942597_)
                    (let () (declare (not safe)) (_g4191342059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4191342059_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4191342059_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4191342059_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4191342059_))))))
                        (let () (declare (not safe)) (_g4191342059_)))
                    (let () (declare (not safe)) (_g4191342059_))))
              (let () (declare (not safe)) (_g4191342059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl4192342610_)
                                          (___kont4494744948_
                                           _hd4192242607_
                                           _hd4191942597_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4191342059_)))))))
                          (let () (declare (not safe)) (_g4191342059_)))))
                  (let () (declare (not safe)) (_g4191342059_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx42702_)
        (let* ((___stx4520045201_ _$stx42702_)
               (_g4270742741_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4520045201_))))
          (let ((___kont4520345204_
                 (lambda (_L42845_ _L42847_ _L42848_)
                   (let ((__tmp46013 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp45952
                          (let ((__tmp45953
                                 (let ((__tmp45954
                                        (let ((__tmp46012
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp45955
                                               (let ((__tmp45956
                                                      (let ((__tmp45957
                                                             (let ((__tmp46011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp45958
                            (let ((__tmp46003
                                   (let ((__tmp46008
                                          (let ((__tmp46010
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp46009
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L42847_ '()))))
                                            (declare (not safe))
                                            (cons __tmp46010 __tmp46009)))
                                         (__tmp46004
                                          (let ((__tmp46005
                                                 (let ((__tmp46007
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp46006
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42845_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp46007
                                                         __tmp46006))))
                                            (declare (not safe))
                                            (cons __tmp46005 '()))))
                                     (declare (not safe))
                                     (cons __tmp46008 __tmp46004)))
                                  (__tmp45959
                                   (let ((__tmp45960
                                          (let ((__tmp46002
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45961
                                                 (let ((__tmp46000
                                                        (let ((__tmp46001
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp46001
                                                                '())))
                                                       (__tmp45962
                                                        (let ((__tmp45963
                                                               (let ((__tmp45999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp45964
                              (let ((__tmp45998 (gx#datum->syntax '#f '$stx))
                                    (__tmp45965
                                     (let ((__tmp45966
                                            (let ((__tmp45977
                                                   (let ((__tmp45996
                                                          (let ((__tmp45997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp45997)))
                 (__tmp45978
                  (let ((__tmp45979
                         (let ((__tmp45995
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp45980
                                (let ((__tmp45994
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp45981
                                       (let ((__tmp45982
                                              (let ((__tmp45993
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp45983
                                                     (let ((__tmp45989
                                                            (let ((__tmp45992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp45990
                           (let ((__tmp45991 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp45991 '()))))
                      (declare (not safe))
                      (cons __tmp45992 __tmp45990)))
                   (__tmp45984
                    (let ((__tmp45985
                           (let ((__tmp45988
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp45986
                                  (let ((__tmp45987
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp45987 '()))))
                             (declare (not safe))
                             (cons __tmp45988 __tmp45986))))
                      (declare (not safe))
                      (cons __tmp45985 '()))))
               (declare (not safe))
               (cons __tmp45989 __tmp45984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45993 __tmp45983))))
                                         (declare (not safe))
                                         (cons __tmp45982 '()))))
                                  (declare (not safe))
                                  (cons __tmp45994 __tmp45981))))
                           (declare (not safe))
                           (cons __tmp45995 __tmp45980))))
                    (declare (not safe))
                    (cons __tmp45979 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45996
                                                           __tmp45978)))
                                                  (__tmp45967
                                                   (let ((__tmp45968
                                                          (let ((__tmp45976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp45969
                         (let ((__tmp45970
                                (let ((__tmp45975
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp45971
                                       (let ((__tmp45974
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp45972
                                              (let ((__tmp45973
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp45973 '()))))
                                         (declare (not safe))
                                         (cons __tmp45974 __tmp45972))))
                                  (declare (not safe))
                                  (cons __tmp45975 __tmp45971))))
                           (declare (not safe))
                           (cons __tmp45970 '()))))
                    (declare (not safe))
                    (cons __tmp45976 __tmp45969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45968 '()))))
                                              (declare (not safe))
                                              (cons __tmp45977 __tmp45967))))
                                       (declare (not safe))
                                       (cons '() __tmp45966))))
                                (declare (not safe))
                                (cons __tmp45998 __tmp45965))))
                         (declare (not safe))
                         (cons __tmp45999 __tmp45964))))
                  (declare (not safe))
                  (cons __tmp45963 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46000
                                                         __tmp45962))))
                                            (declare (not safe))
                                            (cons __tmp46002 __tmp45961))))
                                     (declare (not safe))
                                     (cons __tmp45960 '()))))
                              (declare (not safe))
                              (cons __tmp46003 __tmp45959))))
                       (declare (not safe))
                       (cons __tmp46011 __tmp45958))))
                (declare (not safe))
                (cons __tmp45957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp45956))))
                                          (declare (not safe))
                                          (cons __tmp46012 __tmp45955))))
                                   (declare (not safe))
                                   (cons __tmp45954 '()))))
                            (declare (not safe))
                            (cons _L42848_ __tmp45953))))
                     (declare (not safe))
                     (cons __tmp46013 __tmp45952))))
                (___kont4520545206_
                 (lambda (_L42778_ _L42780_ _L42781_)
                   (let ((__tmp46014
                          (let ((__tmp46015
                                 (let ((__tmp46016
                                        (let ((__tmp46017
                                               (let ((__tmp46028
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp46018
                                                      (let ((__tmp46026
                                                             (let ((__tmp46027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp46027 '())))
                    (__tmp46019
                     (let ((__tmp46020
                            (let ((__tmp46025
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp46021
                                   (let ((__tmp46022
                                          (let ((__tmp46023
                                                 (let ((__tmp46024
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp46024 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp46023))))
                                     (declare (not safe))
                                     (cons '#f __tmp46022))))
                              (declare (not safe))
                              (cons __tmp46025 __tmp46021))))
                       (declare (not safe))
                       (cons __tmp46020 '()))))
                (declare (not safe))
                (cons __tmp46026 __tmp46019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46028
                                                       __tmp46018))))
                                          (declare (not safe))
                                          (cons __tmp46017 '()))))
                                   (declare (not safe))
                                   (cons _L42778_ __tmp46016))))
                            (declare (not safe))
                            (cons _L42780_ __tmp46015))))
                     (declare (not safe))
                     (cons _L42781_ __tmp46014)))))
            (let ((___match4523345234_
                   (lambda (_e4271242805_
                            _hd4271342809_
                            _tl4271442812_
                            _e4271542815_
                            _hd4271642819_
                            _tl4271742822_
                            _e4271842825_
                            _hd4271942829_
                            _tl4272042832_
                            _e4272142835_
                            _hd4272242839_
                            _tl4272342842_)
                     (let ((_L42845_ _hd4272242839_)
                           (_L42847_ _hd4271942829_)
                           (_L42848_ _hd4271642819_))
                       (if (gx#identifier? _L42848_)
                           (___kont4520345204_ _L42845_ _L42847_ _L42848_)
                           (let () (declare (not safe)) (_g4270742741_)))))))
              (if (gx#stx-pair? ___stx4520045201_)
                  (let ((_e4271242805_ (gx#syntax-e ___stx4520045201_)))
                    (let ((_tl4271442812_
                           (let () (declare (not safe)) (##cdr _e4271242805_)))
                          (_hd4271342809_
                           (let ()
                             (declare (not safe))
                             (##car _e4271242805_))))
                      (if (gx#stx-pair? _tl4271442812_)
                          (let ((_e4271542815_ (gx#syntax-e _tl4271442812_)))
                            (let ((_tl4271742822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4271542815_)))
                                  (_hd4271642819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4271542815_))))
                              (if (gx#stx-pair? _tl4271742822_)
                                  (let ((_e4271842825_
                                         (gx#syntax-e _tl4271742822_)))
                                    (let ((_tl4272042832_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4271842825_)))
                                          (_hd4271942829_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4271842825_))))
                                      (if (gx#stx-pair? _tl4272042832_)
                                          (let ((_e4272142835_
                                                 (gx#syntax-e _tl4272042832_)))
                                            (let ((_tl4272342842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4272142835_)))
                                                  (_hd4272242839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4272142835_))))
                                              (if (gx#stx-null? _tl4272342842_)
                                                  (___match4523345234_
                                                   _e4271242805_
                                                   _hd4271342809_
                                                   _tl4271442812_
                                                   _e4271542815_
                                                   _hd4271642819_
                                                   _tl4271742822_
                                                   _e4271842825_
                                                   _hd4271942829_
                                                   _tl4272042832_
                                                   _e4272142835_
                                                   _hd4272242839_
                                                   _tl4272342842_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4270742741_)))))
                                          (if (gx#stx-null? _tl4272042832_)
                                              (___kont4520545206_
                                               _hd4271942829_
                                               _hd4271642819_
                                               _hd4271342809_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4270742741_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4270742741_)))))
                          (let () (declare (not safe)) (_g4270742741_)))))
                  (let () (declare (not safe)) (_g4270742741_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx42870_)
        (let* ((_g4287442889_
                (lambda (_g4287542885_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4287542885_)))
               (_g4287342932_
                (lambda (_g4287542893_)
                  (if (gx#stx-pair? _g4287542893_)
                      (let ((_e4287842896_ (gx#syntax-e _g4287542893_)))
                        (let ((_hd4287942900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4287842896_)))
                              (_tl4288042903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4287842896_))))
                          (if (gx#stx-pair? _tl4288042903_)
                              (let ((_e4288142906_
                                     (gx#syntax-e _tl4288042903_)))
                                (let ((_hd4288242910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4288142906_)))
                                      (_tl4288342913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4288142906_))))
                                  ((lambda (_L42916_ _L42918_)
                                     (let ((__tmp46033
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp46029
                                            (let ((__tmp46030
                                                   (let ((__tmp46031
                                                          (let ((__tmp46032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp46032 _L42916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46031 '()))))
                                              (declare (not safe))
                                              (cons _L42918_ __tmp46030))))
                                       (declare (not safe))
                                       (cons __tmp46033 __tmp46029)))
                                   _tl4288342913_
                                   _hd4288242910_)))
                              (_g4287442889_ _g4287542893_))))
                      (_g4287442889_ _g4287542893_)))))
          (_g4287342932_ _$stx42870_))))))
