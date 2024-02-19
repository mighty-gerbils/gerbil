(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49364_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49365_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49421_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49422_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49423_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49425_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49426_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49427_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49428_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49429_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49430_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49431_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49432_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49433_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49434_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49814_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49894_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49914_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49915_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50032_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50033_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50034_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50035_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50036_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core$<macro-object>#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30641_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30641_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (make-class-slot-accessor
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core$<match>[1]#match-macro::t| 'macro))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core$<match>[1]#match-macro::t|
       'macro))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30638_)
        (if (gx#identifier? _stx30638_)
            (let ((__tmp49349 (gx#syntax-local-value _stx30638_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49349))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28944_ _match-stx28946_)
        (letrec ((_parse128948_
                  (lambda (_hd29301_)
                    (let* ((___stx4429544296_ _hd29301_)
                           (_g2932729469_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4429544296_))))
                      (let ((___kont4429844299_
                             (lambda (_L30401_ _L30403_)
                               (let* ((___stx4421544216_ _L30401_)
                                      (_g3042030453_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4421544216_))))
                                 (let ((___kont4421844219_
                                        (lambda ()
                                          (let ((__tmp49350
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30403_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49350))))
                                       (___kont4422044221_
                                        (lambda (_L30594_)
                                          (let ((__tmp49351
                                                 (let ((__tmp49352
                                                        (let ((__tmp49353
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128948_ _L30594_))))
                  (declare (not safe))
                  (cons __tmp49353 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49352))))
                                            (declare (not safe))
                                            (cons '?: __tmp49351))))
                                       (___kont4422244223_
                                        (lambda (_L30564_)
                                          (let ((__tmp49354
                                                 (let ((__tmp49355
                                                        (let ((__tmp49356
                                                               (let ((__tmp49357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128948_ _L30564_))))
                         (declare (not safe))
                         (cons __tmp49357 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49355))))
                                            (declare (not safe))
                                            (cons '?: __tmp49354))))
                                       (___kont4422444225_
                                        (lambda (_L30515_ _L30517_)
                                          (let ((__tmp49358
                                                 (let ((__tmp49359
                                                        (let ((__tmp49360
                                                               (let ((__tmp49361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49362
                                     (let ((__tmp49363
                                            (let ()
                                              (declare (not safe))
                                              (_parse128948_ _L30515_))))
                                       (declare (not safe))
                                       (cons __tmp49363 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49362))))
                         (declare (not safe))
                         (cons _L30517_ __tmp49361))))
                  (declare (not safe))
                  (cons ':: __tmp49360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30403_
                                                         __tmp49359))))
                                            (declare (not safe))
                                            (cons '?: __tmp49358))))
                                       (___kont4422644227_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28955_ _hd29301_)))))
                                   (let ((_g3041630605_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4421544216_)
                                                (let ((_e3042530584_
                                                       (gx#syntax-e
                                                        ___stx4421544216_)))
                                                  (let ((_tl3042330591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3042530584_)))
                                                        (_hd3042430588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3042530584_))))
                                                    (if (gx#stx-null?
                                                         _tl3042330591_)
                                                        (___kont4422044221_
                                                         _hd3042430588_)
                                                        (if (gx#identifier?
                                                             _hd3042430588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49365_|
                         _hd3042430588_)
                        (if (gx#stx-pair? _tl3042330591_)
                            (let ((_e3043230554_ (gx#syntax-e _tl3042330591_)))
                              (let ((_tl3043030561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3043230554_)))
                                    (_hd3043130558_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3043230554_))))
                                (if (gx#stx-null? _tl3043030561_)
                                    (___kont4422244223_ _hd3043130558_)
                                    (___kont4422644227_))))
                            (___kont4422644227_))
                        (___kont4422644227_))
                    (if (gx#stx-datum? _hd3042430588_)
                        (let ((_e3043830481_ (gx#stx-e _hd3042430588_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3043830481_ '::))
                              (if (gx#stx-pair? _tl3042330591_)
                                  (let ((_e3044130485_
                                         (gx#syntax-e _tl3042330591_)))
                                    (let ((_tl3043930492_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3044130485_)))
                                          (_hd3044030489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3044130485_))))
                                      (if (gx#stx-pair? _tl3043930492_)
                                          (let ((_e3044430495_
                                                 (gx#syntax-e _tl3043930492_)))
                                            (let ((_tl3044230502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3044430495_)))
                                                  (_hd3044330499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3044430495_))))
                                              (if (gx#identifier?
                                                   _hd3044330499_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49364_|
                                                       _hd3044330499_)
                                                      (if (gx#stx-pair?
                                                           _tl3044230502_)
                                                          (let ((_e3044730505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3044230502_)))
                    (let ((_tl3044530512_
                           (let () (declare (not safe)) (##cdr _e3044730505_)))
                          (_hd3044630509_
                           (let ()
                             (declare (not safe))
                             (##car _e3044730505_))))
                      (if (gx#stx-null? _tl3044530512_)
                          (___kont4422444225_ _hd3044630509_ _hd3044030489_)
                          (___kont4422644227_))))
                  (___kont4422644227_))
              (___kont4422644227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422644227_))))
                                          (___kont4422644227_))))
                                  (___kont4422644227_))
                              (___kont4422644227_)))
                        (___kont4422644227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4422644227_)))))
                                     (if (gx#stx-null? ___stx4421544216_)
                                         (___kont4421844219_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3041630605_))))))))
                            (___kont4430044301_
                             (lambda (_L30306_)
                               (let* ((___stx4419744198_ _L30306_)
                                      (_g3031830329_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4419744198_))))
                                 (let ((___kont4420044201_
                                        (lambda (_L30357_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30357_))))
                                       (___kont4420244203_
                                        (lambda ()
                                          (let ((__tmp49366
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30306_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49366)))))
                                   (if (gx#stx-pair? ___stx4419744198_)
                                       (let ((_e3032330347_
                                              (gx#syntax-e ___stx4419744198_)))
                                         (let ((_tl3032130354_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3032330347_)))
                                               (_hd3032230351_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3032330347_))))
                                           (if (gx#stx-null? _tl3032130354_)
                                               (___kont4420044201_
                                                _hd3032230351_)
                                               (___kont4420244203_))))
                                       (___kont4420244203_))))))
                            (___kont4430244303_
                             (lambda (_L30221_)
                               (let* ((___stx4417944180_ _L30221_)
                                      (_g3023330244_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4417944180_))))
                                 (let ((___kont4418244183_
                                        (lambda (_L30272_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128948_ _L30272_))))
                                       (___kont4418444185_
                                        (lambda ()
                                          (let ((__tmp49367
                                                 (gx#stx-map
                                                  _parse128948_
                                                  _L30221_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49367)))))
                                   (if (gx#stx-pair? ___stx4417944180_)
                                       (let ((_e3023830262_
                                              (gx#syntax-e ___stx4417944180_)))
                                         (let ((_tl3023630269_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3023830262_)))
                                               (_hd3023730266_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3023830262_))))
                                           (if (gx#stx-null? _tl3023630269_)
                                               (___kont4418244183_
                                                _hd3023730266_)
                                               (___kont4418444185_))))
                                       (___kont4418444185_))))))
                            (___kont4430444305_
                             (lambda (_L30191_)
                               (let ((__tmp49368
                                      (let ((__tmp49369
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30191_))))
                                        (declare (not safe))
                                        (cons __tmp49369 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49368))))
                            (___kont4430644307_
                             (lambda (_L30147_ _L30149_)
                               (let ((__tmp49370
                                      (let ((__tmp49373
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30149_)))
                                            (__tmp49371
                                             (let ((__tmp49372
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L30147_))))
                                               (declare (not safe))
                                               (cons __tmp49372 '()))))
                                        (declare (not safe))
                                        (cons __tmp49373 __tmp49371))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49370))))
                            (___kont4430844309_
                             (lambda (_L30091_ _L30093_ _L30094_)
                               (if (gx#stx-null? _L30091_)
                                   (let ((__tmp49381
                                          (let ((__tmp49384
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49382
                                                 (let ((__tmp49383
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128948_
                                                           _L30093_))))
                                                   (declare (not safe))
                                                   (cons __tmp49383 '()))))
                                            (declare (not safe))
                                            (cons __tmp49384 __tmp49382))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49381))
                                   (let ((__tmp49374
                                          (let ((__tmp49380
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128948_ _L30094_)))
                                                (__tmp49375
                                                 (let ((__tmp49376
                                                        (let ((__tmp49377
                                                               (let ((__tmp49379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49378
                              (let ()
                                (declare (not safe))
                                (cons _L30093_ _L30091_))))
                         (declare (not safe))
                         (cons __tmp49379 __tmp49378))))
                  (declare (not safe))
                  (_parse128948_ __tmp49377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49376 '()))))
                                            (declare (not safe))
                                            (cons __tmp49380 __tmp49375))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49374)))))
                            (___kont4431044311_
                             (lambda (_L30043_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28950_ _L30043_))))
                            (___kont4431244313_
                             (lambda (_L30013_)
                               (let ((__tmp49385
                                      (let ((__tmp49386
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L30013_))))
                                        (declare (not safe))
                                        (cons __tmp49386 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49385))))
                            (___kont4431444315_
                             (lambda (_L29976_)
                               (let ((__tmp49387
                                      (let ((__tmp49388
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29976_))))
                                        (declare (not safe))
                                        (cons __tmp49388 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49387))))
                            (___kont4431644317_
                             (lambda (_L29952_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29952_))))
                            (___kont4431844319_
                             (lambda (_L29914_)
                               (let ((__tmp49389
                                      (let ((__tmp49390
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29914_))))
                                        (declare (not safe))
                                        (cons __tmp49390 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49389))))
                            (___kont4432044321_
                             (lambda (_L29886_)
                               (let ((__tmp49391
                                      (let ((__tmp49392
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                _L29886_))))
                                        (declare (not safe))
                                        (cons __tmp49392 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49391))))
                            (___kont4432244323_
                             (lambda (_L29847_)
                               (let ((__tmp49393
                                      (let ((__tmp49394
                                             (let ((__tmp49395
                                                    (foldr (lambda (_g2986029863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2986129866_)
                     (let ()
                       (declare (not safe))
                       (cons _g2986029863_ _g2986129866_)))
                   '()
                   _L29847_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28951_
                                                __tmp49395))))
                                        (declare (not safe))
                                        (cons __tmp49394 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49393))))
                            (___kont4432644327_
                             (lambda (_L29793_ _L29795_)
                               (let ((__tmp49396
                                      (let ((__tmp49399
                                             (gx#syntax-local-value _L29795_))
                                            (__tmp49397
                                             (let ((__tmp49398
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28951_
                                                       _L29793_))))
                                               (declare (not safe))
                                               (cons __tmp49398 '()))))
                                        (declare (not safe))
                                        (cons __tmp49399 __tmp49397))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49396))))
                            (___kont4432844329_
                             (lambda (_L29763_ _L29765_)
                               (let ((__tmp49400
                                      (let ((__tmp49403
                                             (gx#syntax-local-value _L29765_))
                                            (__tmp49401
                                             (let ((__tmp49402
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28953_
                                                       _L29763_))))
                                               (declare (not safe))
                                               (cons __tmp49402 '()))))
                                        (declare (not safe))
                                        (cons __tmp49403 __tmp49401))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49400))))
                            (___kont4433044331_
                             (lambda (_L29723_ _L29725_)
                               (let ((__tmp49404
                                      (let ((__tmp49405
                                             (let ((__tmp49410
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49406
                                                    (let ((__tmp49407
                                                           (let ((__tmp49409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49408
                          (let () (declare (not safe)) (cons _L29723_ '()))))
                     (declare (not safe))
                     (cons __tmp49409 __tmp49408))))
              (declare (not safe))
              (cons _L29725_ __tmp49407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49410 __tmp49406))))
                                        (declare (not safe))
                                        (cons __tmp49405 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49404))))
                            (___kont4433244333_
                             (lambda (_L29683_)
                               (let ((__tmp49411
                                      (let ((__tmp49412 (gx#stx-e _L29683_)))
                                        (declare (not safe))
                                        (cons __tmp49412 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49411))))
                            (___kont4433444335_
                             (lambda (_L29643_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28954_ _L29643_))))
                            (___kont4433644337_
                             (lambda (_L29599_ _L29601_)
                               (let ((__tmp49413
                                      (let ((__tmp49414
                                             (let ((__tmp49415
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128948_
                                                       _L29599_))))
                                               (declare (not safe))
                                               (cons __tmp49415 '()))))
                                        (declare (not safe))
                                        (cons _L29601_ __tmp49414))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49413))))
                            (___kont4433844339_
                             (lambda (_L29547_)
                               (let ((__tmp49416
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29547_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29301_))
                                        (let ((_$e29558_
                                               (gx#stx-source _hd29301_)))
                                          (if _$e29558_
                                              _$e29558_
                                              (gx#stx-source _stx28944_)))))))
                                 (declare (not safe))
                                 (_parse128948_ __tmp49416))))
                            (___kont4434044341_
                             (lambda (_L29521_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4434244343_
                             (lambda (_L29505_)
                               (let ((__tmp49417
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29505_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49417))))
                            (___kont4434444345_
                             (lambda (_L29487_)
                               (let ((__tmp49418
                                      (let ((__tmp49419 (gx#stx-e _L29487_)))
                                        (declare (not safe))
                                        (cons __tmp49419 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49418))))
                            (___kont4434644347_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28955_ _hd29301_)))))
                        (let* ((_g2932529498_
                                (lambda ()
                                  (let ((_L29487_ ___stx4429544296_))
                                    (if (gx#stx-datum? _L29487_)
                                        (___kont4434444345_ _L29487_)
                                        (___kont4434644347_)))))
                               (_g2932429514_
                                (lambda ()
                                  (let ((_L29505_ ___stx4429544296_))
                                    (if (and (gx#identifier? _L29505_)
                                             (let ((__tmp49420
                                                    (gx#ellipsis? _L29505_)))
                                               (declare (not safe))
                                               (not __tmp49420)))
                                        (___kont4434244343_ _L29505_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932529498_))))))
                               (_g2932329530_
                                (lambda ()
                                  (let ((_L29521_ ___stx4429544296_))
                                    (if (gx#underscore? _L29521_)
                                        (___kont4434044341_ _L29521_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932429514_))))))
                               (___match4462244623_
                                (lambda (_e2946029537_
                                         _hd2945929541_
                                         _tl2945829544_)
                                  (let ((_L29547_ _hd2945929541_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29547_))
                                        (___kont4433844339_ _L29547_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2932329530_))))))
                               (___match4455644557_
                                (lambda (_e2942829703_
                                         _hd2942729707_
                                         _tl2942629710_
                                         _e2943129713_
                                         _hd2943029717_
                                         _tl2942929720_)
                                  (let ((_L29723_ _hd2943029717_)
                                        (_L29725_ _hd2942729707_))
                                    (if (and (gx#identifier? _L29725_)
                                             (or (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29725_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4433044331_ _L29723_ _L29725_)
                                        (if (gx#identifier? _hd2942729707_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49422_|
                                                 _hd2942729707_)
                                                (___kont4433244333_
                                                 _hd2943029717_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49421_|
                                                     _hd2942729707_)
                                                    (___kont4433444335_
                                                     _hd2943029717_)
                                                    (___match4462244623_
                                                     _e2942829703_
                                                     _hd2942729707_
                                                     _tl2942629710_)))
                                            (___match4462244623_
                                             _e2942829703_
                                             _hd2942729707_
                                             _tl2942629710_))))))
                               (___match4454244543_
                                (lambda (_e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_)
                                  (let ((_L29763_ _tl2942129760_)
                                        (_L29765_ _hd2942229757_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29765_))
                                        (___kont4432844329_ _L29763_ _L29765_)
                                        (if (gx#stx-pair? _tl2942129760_)
                                            (let ((_e2943129713_
                                                   (gx#syntax-e
                                                    _tl2942129760_)))
                                              (let ((_tl2942929720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2943129713_)))
                                                    (_hd2943029717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2943129713_))))
                                                (if (gx#stx-null?
                                                     _tl2942929720_)
                                                    (___match4455644557_
                                                     _e2942329753_
                                                     _hd2942229757_
                                                     _tl2942129760_
                                                     _e2943129713_
                                                     _hd2943029717_
                                                     _tl2942929720_)
                                                    (if (gx#identifier?
                                                         _hd2942229757_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49422_|
                                                             _hd2942229757_)
                                                            (___match4462244623_
                                                             _e2942329753_
                                                             _hd2942229757_
                                                             _tl2942129760_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49421_|
                         _hd2942229757_)
                        (___match4462244623_
                         _e2942329753_
                         _hd2942229757_
                         _tl2942129760_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49423_|
                             _hd2942229757_)
                            (if (gx#stx-pair? _tl2942929720_)
                                (let ((_e2945629589_
                                       (gx#syntax-e _tl2942929720_)))
                                  (let ((_tl2945429596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2945629589_)))
                                        (_hd2945529593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2945629589_))))
                                    (if (gx#stx-null? _tl2945429596_)
                                        (___kont4433644337_
                                         _hd2945529593_
                                         _hd2943029717_)
                                        (___match4462244623_
                                         _e2942329753_
                                         _hd2942229757_
                                         _tl2942129760_))))
                                (___match4462244623_
                                 _e2942329753_
                                 _hd2942229757_
                                 _tl2942129760_))
                            (___match4462244623_
                             _e2942329753_
                             _hd2942229757_
                             _tl2942129760_))))
                (___match4462244623_
                 _e2942329753_
                 _hd2942229757_
                 _tl2942129760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4462244623_
                                             _e2942329753_
                                             _hd2942229757_
                                             _tl2942129760_))))))
                               (___match4453644537_
                                (lambda (_e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)
                                  (let ((_L29793_ _tl2941629790_)
                                        (_L29795_ _hd2941729787_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29795_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4432644327_ _L29793_ _L29795_)
                                        (___match4454244543_
                                         _e2941829783_
                                         _hd2941729787_
                                         _tl2941629790_)))))
                               (___match4453044531_
                                (lambda (_e2940429813_
                                         ___splice4432444325_
                                         _target2940529817_
                                         _tl2940729820_)
                                  (letrec ((_loop2940829823_
                                            (lambda (_hd2940629827_
                                                     _body2941229830_)
                                              (if (gx#stx-pair? _hd2940629827_)
                                                  (let ((_e2940929833_
                                                         (gx#syntax-e
                                                          _hd2940629827_)))
                                                    (let ((_lp-tl2941129840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2940929833_)))
                                                          (_lp-hd2941029837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2940929833_))))
                                                      (let ((__tmp49424
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2941029837_ _body2941229830_))))
                (declare (not safe))
                (_loop2940829823_ _lp-tl2941129840_ __tmp49424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2941329843_
                                                         (reverse _body2941229830_)))
                                                    (___kont4432244323_
                                                     _body2941329843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2940829823_
                                       _target2940529817_
                                       '())))))
                               (_g2931529869_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4429544296_)
                                      (let ((_e2940429813_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4429544296_))))
                                        (if (gx#stx-pair/null? _e2940429813_)
                                            (let ((___splice4432444325_
                                                   (gx#syntax-split-splice
                                                    _e2940429813_
                                                    '0)))
                                              (let ((_tl2940729820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4432444325_
                                                        '1)))
                                                    (_target2940529817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4432444325_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2940729820_)
                                                    (___match4453044531_
                                                     _e2940429813_
                                                     ___splice4432444325_
                                                     _target2940529817_
                                                     _tl2940729820_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2932329530_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2932329530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2932329530_)))))
                               (_g2931129986_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4429544296_)
                                      (let ((_e2938729972_
                                             (unbox (gx#syntax-e
                                                     ___stx4429544296_))))
                                        (___kont4431444315_ _e2938729972_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2931529869_)))))
                               (___match4438444385_
                                (lambda (_e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)
                                  (let ((_L30221_ _tl2934230218_))
                                    (if (gx#stx-list? _L30221_)
                                        (___kont4430244303_ _L30221_)
                                        (___match4453644537_
                                         _e2934430211_
                                         _hd2934330215_
                                         _tl2934230218_)))))
                               (___match4437444375_
                                (lambda (_e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_)
                                  (let ((_L30306_ _tl2933830303_))
                                    (if (gx#stx-list? _L30306_)
                                        (___kont4430044301_ _L30306_)
                                        (___match4453644537_
                                         _e2934030296_
                                         _hd2933930300_
                                         _tl2933830303_))))))
                          (if (gx#stx-pair? ___stx4429544296_)
                              (let ((_e2933330381_
                                     (gx#syntax-e ___stx4429544296_)))
                                (let ((_tl2933130388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2933330381_)))
                                      (_hd2933230385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2933330381_))))
                                  (if (gx#identifier? _hd2933230385_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49434_|
                                           _hd2933230385_)
                                          (if (gx#stx-pair? _tl2933130388_)
                                              (let ((_e2933630391_
                                                     (gx#syntax-e
                                                      _tl2933130388_)))
                                                (let ((_tl2933430398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2933630391_)))
                                                      (_hd2933530395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2933630391_))))
                                                  (___kont4429844299_
                                                   _tl2933430398_
                                                   _hd2933530395_)))
                                              (___match4453644537_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49433_|
                                               _hd2933230385_)
                                              (___match4437444375_
                                               _e2933330381_
                                               _hd2933230385_
                                               _tl2933130388_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49432_|
                                                   _hd2933230385_)
                                                  (___match4438444385_
                                                   _e2933330381_
                                                   _hd2933230385_
                                                   _tl2933130388_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49431_|
                                                       _hd2933230385_)
                                                      (if (gx#stx-pair?
                                                           _tl2933130388_)
                                                          (let ((_e2935130181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2933130388_)))
                    (let ((_tl2934930188_
                           (let () (declare (not safe)) (##cdr _e2935130181_)))
                          (_hd2935030185_
                           (let ()
                             (declare (not safe))
                             (##car _e2935130181_))))
                      (if (gx#stx-null? _tl2934930188_)
                          (___kont4430444305_ _hd2935030185_)
                          (___match4453644537_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))))
                  (___match4453644537_
                   _e2933330381_
                   _hd2933230385_
                   _tl2933130388_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49430_|
                   _hd2933230385_)
                  (if (gx#stx-pair? _tl2933130388_)
                      (let ((_e2935930127_ (gx#syntax-e _tl2933130388_)))
                        (let ((_tl2935730134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2935930127_)))
                              (_hd2935830131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2935930127_))))
                          (if (gx#stx-pair? _tl2935730134_)
                              (let ((_e2936230137_
                                     (gx#syntax-e _tl2935730134_)))
                                (let ((_tl2936030144_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2936230137_)))
                                      (_hd2936130141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2936230137_))))
                                  (if (gx#stx-null? _tl2936030144_)
                                      (___kont4430644307_
                                       _hd2936130141_
                                       _hd2935830131_)
                                      (___match4453644537_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (___match4453644537_
                               _e2933330381_
                               _hd2933230385_
                               _tl2933130388_))))
                      (___match4453644537_
                       _e2933330381_
                       _hd2933230385_
                       _tl2933130388_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49429_|
                       _hd2933230385_)
                      (if (gx#stx-pair? _tl2933130388_)
                          (let ((_e2937130071_ (gx#syntax-e _tl2933130388_)))
                            (let ((_tl2936930078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2937130071_)))
                                  (_hd2937030075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2937130071_))))
                              (if (gx#stx-pair? _tl2936930078_)
                                  (let ((_e2937430081_
                                         (gx#syntax-e _tl2936930078_)))
                                    (let ((_tl2937230088_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2937430081_)))
                                          (_hd2937330085_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2937430081_))))
                                      (___kont4430844309_
                                       _tl2937230088_
                                       _hd2937330085_
                                       _hd2937030075_)))
                                  (___match4453644537_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))))
                          (___match4453644537_
                           _e2933330381_
                           _hd2933230385_
                           _tl2933130388_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49428_|
                           _hd2933230385_)
                          (___kont4431044311_ _tl2933130388_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49427_|
                               _hd2933230385_)
                              (if (gx#stx-pair? _tl2933130388_)
                                  (let ((_e2938530003_
                                         (gx#syntax-e _tl2933130388_)))
                                    (let ((_tl2938330010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2938530003_)))
                                          (_hd2938430007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2938530003_))))
                                      (if (gx#stx-null? _tl2938330010_)
                                          (___kont4431244313_ _hd2938430007_)
                                          (___match4453644537_
                                           _e2933330381_
                                           _hd2933230385_
                                           _tl2933130388_))))
                                  (___match4453644537_
                                   _e2933330381_
                                   _hd2933230385_
                                   _tl2933130388_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49426_|
                                   _hd2933230385_)
                                  (if (gx#stx-pair? _tl2933130388_)
                                      (let ((_e2939429942_
                                             (gx#syntax-e _tl2933130388_)))
                                        (let ((_tl2939229949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2939429942_)))
                                              (_hd2939329946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2939429942_))))
                                          (if (gx#stx-null? _tl2939229949_)
                                              (___kont4431644317_
                                               _hd2939329946_)
                                              (___kont4431844319_
                                               _tl2933130388_))))
                                      (___kont4431844319_ _tl2933130388_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49425_|
                                       _hd2933230385_)
                                      (___kont4432044321_ _tl2933130388_)
                                      (___match4453644537_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4453644537_
                                       _e2933330381_
                                       _hd2933230385_
                                       _tl2933130388_))))
                              (let ()
                                (declare (not safe))
                                (_g2931129986_))))))))
                 (_parse-list28950_
                  (lambda (_body29130_)
                    (let* ((___stx4462544626_ _body29130_)
                           (_g2913629165_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4462544626_))))
                      (let ((___kont4462844629_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128948_ _L29283_))))
                            (___kont4463044631_
                             (lambda (_L29235_ _L29237_ _L29238_)
                               (let ((__tmp49435
                                      (let ((__tmp49438
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29238_)))
                                            (__tmp49436
                                             (let ((__tmp49437
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29235_))))
                                               (declare (not safe))
                                               (cons __tmp49437 '()))))
                                        (declare (not safe))
                                        (cons __tmp49438 __tmp49436))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49435))))
                            (___kont4463244633_
                             (lambda (_L29193_ _L29195_)
                               (let ((__tmp49439
                                      (let ((__tmp49442
                                             (let ()
                                               (declare (not safe))
                                               (_parse128948_ _L29195_)))
                                            (__tmp49440
                                             (let ((__tmp49441
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28950_
                                                       _L29193_))))
                                               (declare (not safe))
                                               (cons __tmp49441 '()))))
                                        (declare (not safe))
                                        (cons __tmp49442 __tmp49440))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49439))))
                            (___kont4463444635_
                             (lambda ()
                               (if (gx#stx-null? _body29130_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49443
                                              (gx#stx-pair? _body29130_)))
                                         (declare (not safe))
                                         (not __tmp49443))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128948_ _body29130_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28955_ _body29130_)))))))
                        (let* ((___match4467444675_
                                (lambda (_e2915929183_
                                         _hd2915829187_
                                         _tl2915729190_)
                                  (let ((_L29193_ _tl2915729190_)
                                        (_L29195_ _hd2915829187_))
                                    (if (let ((__tmp49444
                                               (gx#ellipsis? _L29195_)))
                                          (declare (not safe))
                                          (not __tmp49444))
                                        (___kont4463244633_ _L29193_ _L29195_)
                                        (___kont4463444635_)))))
                               (___match4466844669_
                                (lambda (_e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_
                                         _e2915429225_
                                         _hd2915329229_
                                         _tl2915229232_)
                                  (let ((_L29235_ _tl2915229232_)
                                        (_L29237_ _hd2915329229_)
                                        (_L29238_ _hd2915029219_))
                                    (if (gx#ellipsis? _L29237_)
                                        (___kont4463044631_
                                         _L29235_
                                         _L29237_
                                         _L29238_)
                                        (___match4467444675_
                                         _e2915129215_
                                         _hd2915029219_
                                         _tl2914929222_))))))
                          (if (gx#stx-pair? ___stx4462544626_)
                              (let ((_e2914129259_
                                     (gx#syntax-e ___stx4462544626_)))
                                (let ((_tl2913929266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2914129259_)))
                                      (_hd2914029263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2914129259_))))
                                  (if (gx#stx-datum? _hd2914029263_)
                                      (let ((_e2914229269_
                                             (gx#stx-e _hd2914029263_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2914229269_ '::))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2914529273_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2914329280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2914529273_)))
                                                        (_hd2914429277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2914529273_))))
                                                    (if (gx#stx-null?
                                                         _tl2914329280_)
                                                        (___kont4462844629_
                                                         _hd2914429277_)
                                                        (___match4466844669_
                                                         _e2914129259_
                                                         _hd2914029263_
                                                         _tl2913929266_
                                                         _e2914529273_
                                                         _hd2914429277_
                                                         _tl2914329280_))))
                                                (___match4467444675_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))
                                            (if (gx#stx-pair? _tl2913929266_)
                                                (let ((_e2915429225_
                                                       (gx#syntax-e
                                                        _tl2913929266_)))
                                                  (let ((_tl2915229232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2915429225_)))
                                                        (_hd2915329229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2915429225_))))
                                                    (___match4466844669_
                                                     _e2914129259_
                                                     _hd2914029263_
                                                     _tl2913929266_
                                                     _e2915429225_
                                                     _hd2915329229_
                                                     _tl2915229232_)))
                                                (___match4467444675_
                                                 _e2914129259_
                                                 _hd2914029263_
                                                 _tl2913929266_))))
                                      (if (gx#stx-pair? _tl2913929266_)
                                          (let ((_e2915429225_
                                                 (gx#syntax-e _tl2913929266_)))
                                            (let ((_tl2915229232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2915429225_)))
                                                  (_hd2915329229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2915429225_))))
                                              (___match4466844669_
                                               _e2914129259_
                                               _hd2914029263_
                                               _tl2913929266_
                                               _e2915429225_
                                               _hd2915329229_
                                               _tl2915229232_)))
                                          (___match4467444675_
                                           _e2914129259_
                                           _hd2914029263_
                                           _tl2913929266_)))))
                              (___kont4463444635_)))))))
                 (_parse-vector28951_
                  (lambda (_body29127_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28952_ _body29127_))
                        (let ((__tmp49447
                               (let ((__tmp49448
                                      (gx#stx-map _parse128948_ _body29127_)))
                                 (declare (not safe))
                                 (cons __tmp49448 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49447))
                        (let ((__tmp49445
                               (let ((__tmp49446
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28950_ _body29127_))))
                                 (declare (not safe))
                                 (cons __tmp49446 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49445)))))
                 (_simple-vector?28952_
                  (lambda (_body29064_)
                    (let* ((___stx4467744678_ _body29064_)
                           (_g2906829080_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4467744678_))))
                      (let ((___kont4468044681_
                             (lambda (_L29108_ _L29110_)
                               (if (let ((__tmp49449 (gx#ellipsis? _L29110_)))
                                     (declare (not safe))
                                     (not __tmp49449))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28952_ _L29108_))
                                   '#f)))
                            (___kont4468244683_
                             (lambda () (gx#stx-null? _body29064_))))
                        (if (gx#stx-pair? ___stx4467744678_)
                            (let ((_e2907429098_
                                   (gx#syntax-e ___stx4467744678_)))
                              (let ((_tl2907229105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2907429098_)))
                                    (_hd2907329102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2907429098_))))
                                (___kont4468044681_
                                 _tl2907229105_
                                 _hd2907329102_)))
                            (___kont4468244683_))))))
                 (_parse-class-body28953_
                  (lambda (_body28973_)
                    (let _recur28976_ ((_rest28979_ _body28973_))
                      (let* ((___stx4469344694_ _rest28979_)
                             (_g2898328999_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4469344694_))))
                        (let ((___kont4469644697_
                               (lambda (_L29037_ _L29039_ _L29040_)
                                 (let ((__tmp49450
                                        (let ((__tmp49452
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128948_ _L29039_)))
                                              (__tmp49451
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28976_ _L29037_))))
                                          (declare (not safe))
                                          (cons __tmp49452 __tmp49451))))
                                   (declare (not safe))
                                   (cons _L29040_ __tmp49450))))
                              (___kont4469844699_
                               (lambda ()
                                 (if (gx#stx-null? _rest28979_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28955_ _rest28979_))))))
                          (let ((___match4471244713_
                                 (lambda (_e2899029017_
                                          _hd2898929021_
                                          _tl2898829024_
                                          _e2899329027_
                                          _hd2899229031_
                                          _tl2899129034_)
                                   (let ((_L29037_ _tl2899129034_)
                                         (_L29039_ _hd2899229031_)
                                         (_L29040_ _hd2898929021_))
                                     (if (gx#stx-keyword? _L29040_)
                                         (___kont4469644697_
                                          _L29037_
                                          _L29039_
                                          _L29040_)
                                         (___kont4469844699_))))))
                            (if (gx#stx-pair? ___stx4469344694_)
                                (let ((_e2899029017_
                                       (gx#syntax-e ___stx4469344694_)))
                                  (let ((_tl2898829024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2899029017_)))
                                        (_hd2898929021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2899029017_))))
                                    (if (gx#stx-pair? _tl2898829024_)
                                        (let ((_e2899329027_
                                               (gx#syntax-e _tl2898829024_)))
                                          (let ((_tl2899129034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2899329027_)))
                                                (_hd2899229031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2899329027_))))
                                            (___match4471244713_
                                             _e2899029017_
                                             _hd2898929021_
                                             _tl2898829024_
                                             _e2899329027_
                                             _hd2899229031_
                                             _tl2899129034_)))
                                        (___kont4469844699_))))
                                (___kont4469844699_))))))))
                 (_parse-qq28954_
                  (lambda (_hd28960_)
                    (let ((_g2896228969_
                           (lambda (_g2896328965_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2896328965_))))
                      (declare (not safe))
                      (_g2896228969_ _hd28960_))))
                 (_parse-error28955_
                  (lambda (_hd28957_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28946_
                               (let ((__tmp49454
                                      (let ((__tmp49455
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28957_ '()))))
                                        (declare (not safe))
                                        (cons _stx28944_ __tmp49455))))
                                 (declare (not safe))
                                 (cons _match-stx28946_ __tmp49454))
                               (let ((__tmp49453
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28957_ '()))))
                                 (declare (not safe))
                                 (cons _stx28944_ __tmp49453)))))))
          (let () (declare (not safe)) (_parse128948_ _stx28944_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30628_)
        (let ((_match-stx30631_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30628_
           _match-stx30631_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49457_
        (let ((_g49456_ (let () (declare (not safe)) (##length _g49457_))))
          (cond ((let () (declare (not safe)) (##fx= _g49456_ 1))
                 (apply (lambda (_stx30628_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30628_)))
                        _g49457_))
                ((let () (declare (not safe)) (##fx= _g49456_ 2))
                 (apply (lambda (_stx30634_ _match-stx30636_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30634_
                             _match-stx30636_)))
                        _g49457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49457_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28928_)
        (call-with-current-continuation
         (lambda (_E28932_)
           (with-exception-handler
            (let ((_E!28935_ (current-exception-handler)))
              (lambda (_e28938_)
                (if (syntax-error? _e28938_)
                    (_E28932_ '#f)
                    (_E!28935_ _e28938_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28928_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27663_)
        (letrec ((_loop27666_
                  (lambda (_ptree27953_ _vars27955_ _K27956_)
                    (let* ((___stx4481144812_ _ptree27953_)
                           (_g2796928079_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4481144812_))))
                      (let ((___kont4481444815_
                             (lambda (_L28709_)
                               (let* ((___stx4473144732_ _L28709_)
                                      (_g2872628760_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4473144732_))))
                                 (let ((___kont4473444735_
                                        (lambda (_L28909_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28909_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4473644737_
                                        (lambda (_L28878_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28878_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4473844739_
                                        (lambda (_L28826_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28826_
                                             _vars27955_
                                             _K27956_))))
                                       (___kont4474044741_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4473144732_)
                                       (let ((_e2873128899_
                                              (gx#syntax-e ___stx4473144732_)))
                                         (let ((_tl2872928906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2873128899_)))
                                               (_hd2873028903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2873128899_))))
                                           (if (gx#stx-null? _tl2872928906_)
                                               (___kont4473444735_
                                                _hd2873028903_)
                                               (if (gx#stx-datum?
                                                    _hd2873028903_)
                                                   (let ((_e2873628864_
                                                          (gx#stx-e
                                                           _hd2873028903_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2873628864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2872928906_)
                     (let ((_e2873928868_ (gx#syntax-e _tl2872928906_)))
                       (let ((_tl2873728875_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2873928868_)))
                             (_hd2873828872_
                              (let ()
                                (declare (not safe))
                                (##car _e2873928868_))))
                         (if (gx#stx-null? _tl2873728875_)
                             (___kont4473644737_ _hd2873828872_)
                             (___kont4474044741_))))
                     (___kont4474044741_))
                 (if (let () (declare (not safe)) (equal? _e2873628864_ '::))
                     (if (gx#stx-pair? _tl2872928906_)
                         (let ((_e2874728792_ (gx#syntax-e _tl2872928906_)))
                           (let ((_tl2874528799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2874728792_)))
                                 (_hd2874628796_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2874728792_))))
                             (if (gx#stx-pair? _tl2874528799_)
                                 (let ((_e2875028802_
                                        (gx#syntax-e _tl2874528799_)))
                                   (let ((_tl2874828809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2875028802_)))
                                         (_hd2874928806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2875028802_))))
                                     (if (gx#stx-datum? _hd2874928806_)
                                         (let ((_e2875128812_
                                                (gx#stx-e _hd2874928806_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2875128812_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2874828809_)
                                                   (let ((_e2875428816_
                                                          (gx#syntax-e
                                                           _tl2874828809_)))
                                                     (let ((_tl2875228823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2875428816_)))
                                                           (_hd2875328820_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2875428816_))))
                                                       (if (gx#stx-null?
                                                            _tl2875228823_)
                                                           (___kont4473844739_
                                                            _hd2875328820_)
                                                           (___kont4474044741_))))
                                                   (___kont4474044741_))
                                               (___kont4474044741_)))
                                         (___kont4474044741_))))
                                 (___kont4474044741_))))
                         (___kont4474044741_))
                     (___kont4474044741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4474044741_)))))
                                       (___kont4474044741_))))))
                            (___kont4481644817_
                             (lambda (_L28596_ _L28598_)
                               (let* ((___stx4471544716_ _L28596_)
                                      (_g2861428626_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4471544716_))))
                                 (let ((___kont4471844719_
                                        (lambda (_L28654_ _L28656_)
                                          (let ((__tmp49458
                                                 (lambda (_g2866828670_)
                                                   (let ((__tmp49459
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27666_
                                                      __tmp49459
                                                      _g2866828670_
                                                      _K27956_)))))
                                            (declare (not safe))
                                            (_loop27666_
                                             _L28656_
                                             _vars27955_
                                             __tmp49458))))
                                       (___kont4472044721_
                                        (lambda () (_K27956_ _vars27955_))))
                                   (if (gx#stx-pair? ___stx4471544716_)
                                       (let ((_e2862028644_
                                              (gx#syntax-e ___stx4471544716_)))
                                         (let ((_tl2861828651_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2862028644_)))
                                               (_hd2861928648_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2862028644_))))
                                           (___kont4471844719_
                                            _tl2861828651_
                                            _hd2861928648_)))
                                       (___kont4472044721_))))))
                            (___kont4481844819_
                             (lambda (_L28565_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28565_ _vars27955_ _K27956_))))
                            (___kont4482044821_
                             (lambda (_L28511_ _L28513_)
                               (let ((__tmp49460
                                      (lambda (_g2852828530_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28511_
                                           _g2852828530_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28513_
                                  _vars27955_
                                  __tmp49460))))
                            (___kont4482244823_
                             (lambda (_L28447_ _L28449_)
                               (let ((__tmp49461
                                      (lambda (_g2846428466_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27666_
                                           _L28447_
                                           _g2846428466_
                                           _K27956_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L28449_
                                  _vars27955_
                                  __tmp49461))))
                            (___kont4482444825_
                             (lambda (_L28392_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28392_ _vars27955_ _K27956_))))
                            (___kont4482644827_
                             (lambda (_L28342_ _L28344_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28342_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4482844829_
                             (lambda (_L28299_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27668_
                                  _L28299_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4483044831_
                             (lambda (_L28242_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27670_
                                  _L28242_
                                  _vars27955_
                                  _K27956_))))
                            (___kont4483244833_
                             (lambda (_L28183_ _L28185_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_ _L28183_ _vars27955_ _K27956_))))
                            (___kont4483444835_
                             (lambda (_L28121_)
                               (if (find (lambda (_g2813628138_)
                                           (gx#bound-identifier=?
                                            _g2813628138_
                                            _L28121_))
                                         _vars27955_)
                                   (_K27956_ _vars27955_)
                                   (_K27956_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L28121_ _vars27955_))))))
                            (___kont4483644837_
                             (lambda () (_K27956_ _vars27955_))))
                        (let* ((___match4496844969_
                                (lambda (_e2802828322_
                                         _hd2802728326_
                                         _tl2802628329_
                                         _e2803128332_
                                         _hd2803028336_
                                         _tl2802928339_)
                                  (let ((_L28342_ _hd2803028336_)
                                        (_L28344_ _hd2802728326_))
                                    (if (or (gx#stx-eq? 'values: _L28344_)
                                            (gx#stx-eq? 'vector: _L28344_))
                                        (___kont4482644827_ _L28342_ _L28344_)
                                        (if (gx#stx-datum? _hd2802728326_)
                                            (let ((_e2803628275_
                                                   (gx#stx-e _hd2802728326_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2803628275_
                                                            'struct:))
                                                  (___kont4483644837_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2803628275_
                                                                'class:))
                                                      (___kont4483644837_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2803628275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4483644837_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2803628275_ 'var:))
                      (___kont4483444835_ _hd2803028336_)
                      (___kont4483644837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4483644837_))))))
                               (___match4486244863_
                                (lambda (_e2798328586_
                                         _hd2798228590_
                                         _tl2798128593_)
                                  (let ((_L28596_ _tl2798128593_)
                                        (_L28598_ _hd2798228590_))
                                    (if (or (gx#stx-eq? 'and: _L28598_)
                                            (gx#stx-eq? 'or: _L28598_))
                                        (___kont4481644817_ _L28596_ _L28598_)
                                        (if (gx#stx-datum? _hd2798228590_)
                                            (let ((_e2798828551_
                                                   (gx#stx-e _hd2798228590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2798828551_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2798128593_)
                                                      (let ((_e2799128555_
                                                             (gx#syntax-e
                                                              _tl2798128593_)))
                                                        (let ((_tl2798928562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2799128555_)))
                      (_hd2799028559_
                       (let () (declare (not safe)) (##car _e2799128555_))))
                  (if (gx#stx-null? _tl2798928562_)
                      (___kont4481844819_ _hd2799028559_)
                      (___kont4483644837_))))
              (___kont4483644837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2798828551_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2798128593_)
                                                          (let ((_e2800028491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2798128593_)))
                    (let ((_tl2799828498_
                           (let () (declare (not safe)) (##cdr _e2800028491_)))
                          (_hd2799928495_
                           (let ()
                             (declare (not safe))
                             (##car _e2800028491_))))
                      (if (gx#stx-pair? _tl2799828498_)
                          (let ((_e2800328501_ (gx#syntax-e _tl2799828498_)))
                            (let ((_tl2800128508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2800328501_)))
                                  (_hd2800228505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2800328501_))))
                              (if (gx#stx-null? _tl2800128508_)
                                  (___kont4482044821_
                                   _hd2800228505_
                                   _hd2799928495_)
                                  (___kont4483644837_))))
                          (if (gx#stx-null? _tl2799828498_)
                              (___match4496844969_
                               _e2798328586_
                               _hd2798228590_
                               _tl2798128593_
                               _e2800028491_
                               _hd2799928495_
                               _tl2799828498_)
                              (___kont4483644837_)))))
                  (___kont4483644837_))
              (if (let () (declare (not safe)) (equal? _e2798828551_ 'splice:))
                  (if (gx#stx-pair? _tl2798128593_)
                      (let ((_e2801228427_ (gx#syntax-e _tl2798128593_)))
                        (let ((_tl2801028434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2801228427_)))
                              (_hd2801128431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2801228427_))))
                          (if (gx#stx-pair? _tl2801028434_)
                              (let ((_e2801528437_
                                     (gx#syntax-e _tl2801028434_)))
                                (let ((_tl2801328444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2801528437_)))
                                      (_hd2801428441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2801528437_))))
                                  (if (gx#stx-null? _tl2801328444_)
                                      (___kont4482244823_
                                       _hd2801428441_
                                       _hd2801128431_)
                                      (___kont4483644837_))))
                              (if (gx#stx-null? _tl2801028434_)
                                  (___match4496844969_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2801228427_
                                   _hd2801128431_
                                   _tl2801028434_)
                                  (___kont4483644837_)))))
                      (___kont4483644837_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2798828551_ 'box:))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2802328382_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802128389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2802328382_)))
                                  (_hd2802228386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2802328382_))))
                              (if (gx#stx-null? _tl2802128389_)
                                  (___kont4482444825_ _hd2802228386_)
                                  (___kont4483644837_))))
                          (___kont4483644837_))
                      (if (gx#stx-pair? _tl2798128593_)
                          (let ((_e2803128332_ (gx#syntax-e _tl2798128593_)))
                            (let ((_tl2802928339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2803128332_)))
                                  (_hd2803028336_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2803128332_))))
                              (if (gx#stx-null? _tl2802928339_)
                                  (___match4496844969_
                                   _e2798328586_
                                   _hd2798228590_
                                   _tl2798128593_
                                   _e2803128332_
                                   _hd2803028336_
                                   _tl2802928339_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2798828551_ 'struct:))
                                      (if (gx#stx-pair? _tl2802928339_)
                                          (let ((_e2804228289_
                                                 (gx#syntax-e _tl2802928339_)))
                                            (let ((_tl2804028296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2804228289_)))
                                                  (_hd2804128293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2804228289_))))
                                              (if (gx#stx-null? _tl2804028296_)
                                                  (___kont4482844829_
                                                   _hd2804128293_)
                                                  (___kont4483644837_))))
                                          (___kont4483644837_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2798828551_ 'class:))
                                          (if (gx#stx-pair? _tl2802928339_)
                                              (let ((_e2805328232_
                                                     (gx#syntax-e
                                                      _tl2802928339_)))
                                                (let ((_tl2805128239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2805328232_)))
                                                      (_hd2805228236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2805328232_))))
                                                  (if (gx#stx-null?
                                                       _tl2805128239_)
                                                      (___kont4483044831_
                                                       _hd2805228236_)
                                                      (___kont4483644837_))))
                                              (___kont4483644837_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2798828551_ 'apply:))
                                              (if (gx#stx-pair? _tl2802928339_)
                                                  (let ((_e2806528173_
                                                         (gx#syntax-e
                                                          _tl2802928339_)))
                                                    (let ((_tl2806328180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2806528173_)))
                                                          (_hd2806428177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2806528173_))))
                                                      (if (gx#stx-null?
                                                           _tl2806328180_)
                                                          (___kont4483244833_
                                                           _hd2806428177_
                                                           _hd2803028336_)
                                                          (___kont4483644837_))))
                                                  (___kont4483644837_))
                                              (___kont4483644837_)))))))
                          (___kont4483644837_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2798128593_)
                                                (let ((_e2803128332_
                                                       (gx#syntax-e
                                                        _tl2798128593_)))
                                                  (let ((_tl2802928339_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2803128332_)))
                                                        (_hd2803028336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2803128332_))))
                                                    (if (gx#stx-null?
                                                         _tl2802928339_)
                                                        (___match4496844969_
                                                         _e2798328586_
                                                         _hd2798228590_
                                                         _tl2798128593_
                                                         _e2803128332_
                                                         _hd2803028336_
                                                         _tl2802928339_)
                                                        (___kont4483644837_))))
                                                (___kont4483644837_))))))))
                          (if (gx#stx-pair? ___stx4481144812_)
                              (let ((_e2797428685_
                                     (gx#syntax-e ___stx4481144812_)))
                                (let ((_tl2797228692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2797428685_)))
                                      (_hd2797328689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2797428685_))))
                                  (if (gx#stx-datum? _hd2797328689_)
                                      (let ((_e2797528695_
                                             (gx#stx-e _hd2797328689_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2797528695_ '?:))
                                            (if (gx#stx-pair? _tl2797228692_)
                                                (let ((_e2797828699_
                                                       (gx#syntax-e
                                                        _tl2797228692_)))
                                                  (let ((_tl2797628706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2797828699_)))
                                                        (_hd2797728703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2797828699_))))
                                                    (___kont4481444815_
                                                     _tl2797628706_)))
                                                (___match4486244863_
                                                 _e2797428685_
                                                 _hd2797328689_
                                                 _tl2797228692_))
                                            (___match4486244863_
                                             _e2797428685_
                                             _hd2797328689_
                                             _tl2797228692_)))
                                      (___match4486244863_
                                       _e2797428685_
                                       _hd2797328689_
                                       _tl2797228692_))))
                              (___kont4483644837_)))))))
                 (_loop-vector27668_
                  (lambda (_body27829_ _vars27831_ _K27832_)
                    (let* ((___stx4506945070_ _body27829_)
                           (_g2783527858_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4506945070_))))
                      (let ((___kont4507245073_
                             (lambda (_L27935_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27669_
                                  _L27935_
                                  _vars27831_
                                  _K27832_))))
                            (___kont4507445075_
                             (lambda (_L27889_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27889_
                                  _vars27831_
                                  _K27832_)))))
                        (if (gx#stx-pair? ___stx4506945070_)
                            (let ((_e2784027911_
                                   (gx#syntax-e ___stx4506945070_)))
                              (let ((_tl2783827918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2784027911_)))
                                    (_hd2783927915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2784027911_))))
                                (if (gx#stx-datum? _hd2783927915_)
                                    (let ((_e2784127921_
                                           (gx#stx-e _hd2783927915_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2784127921_ 'simple:))
                                          (if (gx#stx-pair? _tl2783827918_)
                                              (let ((_e2784427925_
                                                     (gx#syntax-e
                                                      _tl2783827918_)))
                                                (let ((_tl2784227932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2784427925_)))
                                                      (_hd2784327929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2784427925_))))
                                                  (if (gx#stx-null?
                                                       _tl2784227932_)
                                                      (___kont4507245073_
                                                       _hd2784327929_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2783527858_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2784127921_ 'list:))
                                              (if (gx#stx-pair? _tl2783827918_)
                                                  (let ((_e2785227879_
                                                         (gx#syntax-e
                                                          _tl2783827918_)))
                                                    (let ((_tl2785027886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2785227879_)))
                                                          (_hd2785127883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2785227879_))))
                                                      (if (gx#stx-null?
                                                           _tl2785027886_)
                                                          (___kont4507445075_
                                                           _hd2785127883_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2783527858_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2783527858_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2783527858_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2783527858_)))))
                            (let () (declare (not safe)) (_g2783527858_)))))))
                 (_loop-list27669_
                  (lambda (_rest27759_ _vars27761_ _K27762_)
                    (let* ((___stx4511945120_ _rest27759_)
                           (_g2776527777_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4511945120_))))
                      (let ((___kont4512245123_
                             (lambda (_L27805_ _L27807_)
                               (let ((__tmp49462
                                      (lambda (_g2781927821_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27669_
                                           _L27805_
                                           _g2781927821_
                                           _K27762_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27807_
                                  _vars27761_
                                  __tmp49462))))
                            (___kont4512445125_
                             (lambda () (_K27762_ _vars27761_))))
                        (if (gx#stx-pair? ___stx4511945120_)
                            (let ((_e2777127795_
                                   (gx#syntax-e ___stx4511945120_)))
                              (let ((_tl2776927802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2777127795_)))
                                    (_hd2777027799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2777127795_))))
                                (___kont4512245123_
                                 _tl2776927802_
                                 _hd2777027799_)))
                            (___kont4512445125_))))))
                 (_loop-class-list27670_
                  (lambda (_rest27672_ _vars27674_ _K27675_)
                    (let* ((___stx4513545136_ _rest27672_)
                           (_g2767827693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4513545136_))))
                      (let ((___kont4513845139_
                             (lambda (_L27731_ _L27733_)
                               (let ((__tmp49463
                                      (lambda (_g2774927751_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27670_
                                           _L27731_
                                           _g2774927751_
                                           _K27675_)))))
                                 (declare (not safe))
                                 (_loop27666_
                                  _L27733_
                                  _vars27674_
                                  __tmp49463))))
                            (___kont4514045141_
                             (lambda () (_K27675_ _vars27674_))))
                        (if (gx#stx-pair? ___stx4513545136_)
                            (let ((_e2768427711_
                                   (gx#syntax-e ___stx4513545136_)))
                              (let ((_tl2768227718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2768427711_)))
                                    (_hd2768327715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2768427711_))))
                                (if (gx#stx-pair? _tl2768227718_)
                                    (let ((_e2768727721_
                                           (gx#syntax-e _tl2768227718_)))
                                      (let ((_tl2768527728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2768727721_)))
                                            (_hd2768627725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2768727721_))))
                                        (___kont4513845139_
                                         _tl2768527728_
                                         _hd2768627725_)))
                                    (___kont4514045141_))))
                            (___kont4514045141_)))))))
          (let ()
            (declare (not safe))
            (_loop27666_ _ptree27663_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24624_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)
        (letrec ((_generate124631_
                  (lambda (_tgt25876_ _ptree25878_ _K25879_ _E25880_)
                    (let* ((_g2588225890_
                            (lambda (_g2588325886_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2588325886_)))
                           (_g2588127659_
                            (lambda (_g2588325894_)
                              ((lambda (_L25897_)
                                 (let ()
                                   (let* ((___stx4537145372_ _ptree25878_)
                                          (_g2592426066_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4537145372_))))
                                     (let ((___kont4537445375_
                                            (lambda (_L27374_ _L27376_)
                                              (let* ((___stx4528945290_
                                                      _L27374_)
                                                     (_g2739327428_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4528945290_))))
                                                (let ((___kont4529245293_
                                                       (lambda ()
                                                         (let ((__tmp49464
                                                                (let ((__tmp49467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49470 (gx#datum->syntax '#f '?))
                                     (__tmp49468
                                      (let ((__tmp49469
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49469))))
                                 (declare (not safe))
                                 (cons __tmp49470 __tmp49468)))
                              (__tmp49465
                               (let ((__tmp49466
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons _K25879_ __tmp49466))))
                          (declare (not safe))
                          (cons __tmp49467 __tmp49465))))
                   (declare (not safe))
                   (cons 'if __tmp49464))))
              (___kont4529445295_
               (lambda (_L27629_)
                 (let ((__tmp49471
                        (let ((__tmp49475
                               (let ((__tmp49478 (gx#datum->syntax '#f '?))
                                     (__tmp49476
                                      (let ((__tmp49477
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons _L27376_ __tmp49477))))
                                 (declare (not safe))
                                 (cons __tmp49478 __tmp49476)))
                              (__tmp49472
                               (let ((__tmp49474
                                      (let ()
                                        (declare (not safe))
                                        (_generate124631_
                                         _tgt25876_
                                         _L27629_
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49473
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49474 __tmp49473))))
                          (declare (not safe))
                          (cons __tmp49475 __tmp49472))))
                   (declare (not safe))
                   (cons 'if __tmp49471))))
              (___kont4529645297_
               (lambda (_L27567_)
                 (let* ((_g2758127589_
                         (lambda (_g2758227585_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2758227585_)))
                        (_g2758027608_
                         (lambda (_g2758227593_)
                           ((lambda (_L27596_)
                              (let ()
                                (let ((__tmp49479
                                       (let ((__tmp49486
                                              (let ((__tmp49487
                                                     (let ((__tmp49488
                                                            (let ((__tmp49489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49490
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L27376_ __tmp49490))))
                      (declare (not safe))
                      (cons __tmp49489 '()))))
               (declare (not safe))
               (cons _L27596_ __tmp49488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49487 '())))
                                             (__tmp49480
                                              (let ((__tmp49481
                                                     (let ((__tmp49482
                                                            (let ((__tmp49483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49485
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27596_
                                     _L27567_
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49484
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49485 __tmp49484))))
                      (declare (not safe))
                      (cons _L27596_ __tmp49483))))
               (declare (not safe))
               (cons 'if __tmp49482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49481 '()))))
                                         (declare (not safe))
                                         (cons __tmp49486 __tmp49480))))
                                  (declare (not safe))
                                  (cons 'let __tmp49479))))
                            _g2758227593_)))
                        (__tmp49491 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2758027608_ __tmp49491))))
              (___kont4529845299_
               (lambda (_L27483_ _L27485_)
                 (let* ((_g2750527513_
                         (lambda (_g2750627509_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2750627509_)))
                        (_g2750427532_
                         (lambda (_g2750627517_)
                           ((lambda (_L27520_)
                              (let ()
                                (let ((__tmp49492
                                       (let ((__tmp49504
                                              (let ((__tmp49507
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49505
                                                     (let ((__tmp49506
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27376_ __tmp49506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49507 __tmp49505)))
                                             (__tmp49493
                                              (let ((__tmp49495
                                                     (let ((__tmp49496
                                                            (let ((__tmp49499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49500
                                  (let ((__tmp49501
                                         (let ((__tmp49502
                                                (let ((__tmp49503
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25897_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27485_ __tmp49503))))
                                           (declare (not safe))
                                           (cons __tmp49502 '()))))
                                    (declare (not safe))
                                    (cons _L27520_ __tmp49501))))
                             (declare (not safe))
                             (cons __tmp49500 '())))
                          (__tmp49497
                           (let ((__tmp49498
                                  (let ()
                                    (declare (not safe))
                                    (_generate124631_
                                     _L27520_
                                     _L27483_
                                     _K25879_
                                     _E25880_))))
                             (declare (not safe))
                             (cons __tmp49498 '()))))
                      (declare (not safe))
                      (cons __tmp49499 __tmp49497))))
               (declare (not safe))
               (cons 'let __tmp49496)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49494
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49495 __tmp49494))))
                                         (declare (not safe))
                                         (cons __tmp49504 __tmp49493))))
                                  (declare (not safe))
                                  (cons 'if __tmp49492))))
                            _g2750627517_)))
                        (__tmp49508 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2750427532_ __tmp49508)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2739027640_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4528945290_)
                                                               (let ((_e2739827619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4528945290_)))
                         (let ((_tl2739627626_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2739827619_)))
                               (_hd2739727623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2739827619_))))
                           (if (gx#stx-null? _tl2739627626_)
                               (___kont4529445295_ _hd2739727623_)
                               (if (gx#stx-datum? _hd2739727623_)
                                   (let ((_e2740327553_
                                          (gx#stx-e _hd2739727623_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2740327553_ '=>:))
                                         (if (gx#stx-pair? _tl2739627626_)
                                             (let ((_e2740627557_
                                                    (gx#syntax-e
                                                     _tl2739627626_)))
                                               (let ((_tl2740427564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2740627557_)))
                                                     (_hd2740527561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2740627557_))))
                                                 (if (gx#stx-null?
                                                      _tl2740427564_)
                                                     (___kont4529645297_
                                                      _hd2740527561_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2739327428_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2740327553_ '::))
                                             (if (gx#stx-pair? _tl2739627626_)
                                                 (let ((_e2741527449_
                                                        (gx#syntax-e
                                                         _tl2739627626_)))
                                                   (let ((_tl2741327456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2741527449_)))
                                                         (_hd2741427453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2741527449_))))
                                                     (if (gx#stx-pair?
                                                          _tl2741327456_)
                                                         (let ((_e2741827459_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2741327456_)))
                   (let ((_tl2741627466_
                          (let () (declare (not safe)) (##cdr _e2741827459_)))
                         (_hd2741727463_
                          (let () (declare (not safe)) (##car _e2741827459_))))
                     (if (gx#stx-datum? _hd2741727463_)
                         (let ((_e2741927469_ (gx#stx-e _hd2741727463_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2741927469_ '=>:))
                               (if (gx#stx-pair? _tl2741627466_)
                                   (let ((_e2742227473_
                                          (gx#syntax-e _tl2741627466_)))
                                     (let ((_tl2742027480_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2742227473_)))
                                           (_hd2742127477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2742227473_))))
                                       (if (gx#stx-null? _tl2742027480_)
                                           (___kont4529845299_
                                            _hd2742127477_
                                            _hd2741427453_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_)))
                               (let () (declare (not safe)) (_g2739327428_))))
                         (let () (declare (not safe)) (_g2739327428_)))))
                 (let () (declare (not safe)) (_g2739327428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2739327428_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2739327428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2739327428_))))))
                       (let () (declare (not safe)) (_g2739327428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4528945290_)
                                                        (___kont4529245293_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2739027640_))))))))
                                           (___kont4537645377_
                                            (lambda (_L27271_)
                                              (let* ((___stx4527345274_
                                                      _L27271_)
                                                     (_g2728427296_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4527345274_))))
                                                (let ((___kont4527645277_
                                                       (lambda (_L27324_
                                                                _L27326_)
                                                         (let ((__tmp49509
                                                                (let ((__tmp49510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27324_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49510
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27326_
                    __tmp49509
                    _E25880_))))
              (___kont4527845279_ (lambda () _K25879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4527345274_)
                                                      (let ((_e2729027314_
                                                             (gx#syntax-e
                                                              ___stx4527345274_)))
                                                        (let ((_tl2728827321_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2729027314_)))
                      (_hd2728927318_
                       (let () (declare (not safe)) (##car _e2729027314_))))
                  (___kont4527645277_ _tl2728827321_ _hd2728927318_)))
              (___kont4527845279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4537845379_
                                            (lambda (_L27178_)
                                              (let* ((___stx4525745258_
                                                      _L27178_)
                                                     (_g2719127203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4525745258_))))
                                                (let ((___kont4526045261_
                                                       (lambda (_L27231_
                                                                _L27233_)
                                                         (let ((__tmp49511
                                                                (let ((__tmp49512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27231_))))
                          (declare (not safe))
                          (_generate124631_
                           _tgt25876_
                           __tmp49512
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_
                    _tgt25876_
                    _L27233_
                    _K25879_
                    __tmp49511))))
              (___kont4526245263_ (lambda () _E25880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4525745258_)
                                                      (let ((_e2719727221_
                                                             (gx#syntax-e
                                                              ___stx4525745258_)))
                                                        (let ((_tl2719527228_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2719727221_)))
                      (_hd2719627225_
                       (let () (declare (not safe)) (##car _e2719727221_))))
                  (___kont4526045261_ _tl2719527228_ _hd2719627225_)))
              (___kont4526245263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4538045381_
                                            (lambda (_L27143_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124631_
                                                 _tgt25876_
                                                 _L27143_
                                                 _E25880_
                                                 _K25879_))))
                                           (___kont4538245383_
                                            (lambda (_L27025_ _L27027_)
                                              (let* ((_g2704427059_
                                                      (lambda (_g2704527055_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2704527055_)))
                                                     (_g2704327108_
                                                      (lambda (_g2704527063_)
                                                        (if (gx#stx-pair?
                                                             _g2704527063_)
                                                            (let ((_e2705027066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2704527063_)))
                      (let ((_hd2704927070_
                             (let ()
                               (declare (not safe))
                               (##car _e2705027066_)))
                            (_tl2704827073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2705027066_))))
                        (if (gx#stx-pair? _tl2704827073_)
                            (let ((_e2705327076_ (gx#syntax-e _tl2704827073_)))
                              (let ((_hd2705227080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2705327076_)))
                                    (_tl2705127083_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2705327076_))))
                                (if (gx#stx-null? _tl2705127083_)
                                    ((lambda (_L27086_ _L27088_)
                                       (let ()
                                         (let ((__tmp49513
                                                (let ((__tmp49551
                                                       (let ((__tmp49553
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49552
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25897_ '()))))
                 (declare (not safe))
                 (cons __tmp49553 __tmp49552)))
              (__tmp49514
               (let ((__tmp49516
                      (let ((_hd-pat27104_ (gx#stx-e _L27027_))
                            (_tl-pat27106_ (gx#stx-e _L27025_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat27104_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat27106_ '(any:))))
                            _K25879_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat27106_ '(any:)))
                                (let ((__tmp49542
                                       (let ((__tmp49545
                                              (let ((__tmp49546
                                                     (let ((__tmp49547
                                                            (let ((__tmp49548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49550 (gx#datum->syntax '#f '##car))
                                 (__tmp49549
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons __tmp49550 __tmp49549))))
                      (declare (not safe))
                      (cons __tmp49548 '()))))
               (declare (not safe))
               (cons _L27088_ __tmp49547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49546 '())))
                                             (__tmp49543
                                              (let ((__tmp49544
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124631_
                                                        _L27088_
                                                        _L27027_
                                                        _K25879_
                                                        _E25880_))))
                                                (declare (not safe))
                                                (cons __tmp49544 '()))))
                                         (declare (not safe))
                                         (cons __tmp49545 __tmp49543))))
                                  (declare (not safe))
                                  (cons 'let __tmp49542))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat27104_ '(any:)))
                                    (let ((__tmp49533
                                           (let ((__tmp49536
                                                  (let ((__tmp49537
                                                         (let ((__tmp49538
                                                                (let ((__tmp49539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49541 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49540
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49541 __tmp49540))))
                          (declare (not safe))
                          (cons __tmp49539 '()))))
                   (declare (not safe))
                   (cons _L27086_ __tmp49538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49537 '())))
                                                 (__tmp49534
                                                  (let ((__tmp49535
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124631_
                                                            _L27086_
                                                            _L27025_
                                                            _K25879_
                                                            _E25880_))))
                                                    (declare (not safe))
                                                    (cons __tmp49535 '()))))
                                             (declare (not safe))
                                             (cons __tmp49536 __tmp49534))))
                                      (declare (not safe))
                                      (cons 'let __tmp49533))
                                    (let ((__tmp49517
                                           (let ((__tmp49521
                                                  (let ((__tmp49528
                                                         (let ((__tmp49529
                                                                (let ((__tmp49530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49532 (gx#datum->syntax '#f '##car))
                                     (__tmp49531
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49532 __tmp49531))))
                          (declare (not safe))
                          (cons __tmp49530 '()))))
                   (declare (not safe))
                   (cons _L27088_ __tmp49529)))
                (__tmp49522
                 (let ((__tmp49523
                        (let ((__tmp49524
                               (let ((__tmp49525
                                      (let ((__tmp49527
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49526
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25897_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49527 __tmp49526))))
                                 (declare (not safe))
                                 (cons __tmp49525 '()))))
                          (declare (not safe))
                          (cons _L27086_ __tmp49524))))
                   (declare (not safe))
                   (cons __tmp49523 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49528
                                                          __tmp49522)))
                                                 (__tmp49518
                                                  (let ((__tmp49519
                                                         (let ((__tmp49520
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124631_
                           _L27086_
                           _L27025_
                           _K25879_
                           _E25880_))))
                   (declare (not safe))
                   (_generate124631_ _L27088_ _L27027_ __tmp49520 _E25880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49519 '()))))
                                             (declare (not safe))
                                             (cons __tmp49521 __tmp49518))))
                                      (declare (not safe))
                                      (cons 'let __tmp49517)))))))
                     (__tmp49515
                      (let () (declare (not safe)) (cons _E25880_ '()))))
                 (declare (not safe))
                 (cons __tmp49516 __tmp49515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49551
                                                        __tmp49514))))
                                           (declare (not safe))
                                           (cons 'if __tmp49513))))
                                     _hd2705227080_
                                     _hd2704927070_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2704427059_ _g2704527063_)))))
                            (let ()
                              (declare (not safe))
                              (_g2704427059_ _g2704527063_)))))
                    (let ()
                      (declare (not safe))
                      (_g2704427059_ _g2704527063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49554
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2704327108_ __tmp49554))))
                                           (___kont4538445385_
                                            (lambda ()
                                              (let ((__tmp49555
                                                     (let ((__tmp49558
                                                            (let ((__tmp49560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49559
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49560 __tmp49559)))
                   (__tmp49556
                    (let ((__tmp49557
                           (let () (declare (not safe)) (cons _E25880_ '()))))
                      (declare (not safe))
                      (cons _K25879_ __tmp49557))))
               (declare (not safe))
               (cons __tmp49558 __tmp49556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49555))))
                                           (___kont4538645387_
                                            (lambda (_L26941_ _L26943_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24633_
                                                 _tgt25876_
                                                 _L26943_
                                                 _L26941_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4538845389_
                                            (lambda (_L26855_)
                                              (let* ((_g2686926877_
                                                      (lambda (_g2687026873_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2687026873_)))
                                                     (_g2686826896_
                                                      (lambda (_g2687026881_)
                                                        ((lambda (_L26884_)
                                                           (let ()
                                                             (let ((__tmp49561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49574
                                   (let ((__tmp49576
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49575
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25897_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49576 __tmp49575)))
                                  (__tmp49562
                                   (let ((__tmp49564
                                          (let ((__tmp49565
                                                 (let ((__tmp49568
                                                        (let ((__tmp49569
                                                               (let ((__tmp49570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49571
                                     (let ((__tmp49573
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49572
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25897_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49573 __tmp49572))))
                                (declare (not safe))
                                (cons __tmp49571 '()))))
                         (declare (not safe))
                         (cons _L26884_ __tmp49570))))
                  (declare (not safe))
                  (cons __tmp49569 '())))
               (__tmp49566
                (let ((__tmp49567
                       (let ()
                         (declare (not safe))
                         (_generate124631_
                          _L26884_
                          _L26855_
                          _K25879_
                          _E25880_))))
                  (declare (not safe))
                  (cons __tmp49567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49568
                                                         __tmp49566))))
                                            (declare (not safe))
                                            (cons 'let __tmp49565)))
                                         (__tmp49563
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49564 __tmp49563))))
                              (declare (not safe))
                              (cons __tmp49574 __tmp49562))))
                       (declare (not safe))
                       (cons 'if __tmp49561))))
                 _g2687026881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49577
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2686826896_ __tmp49577))))
                                           (___kont4539045391_
                                            (lambda (_L26660_)
                                              (let* ((___stx4520745208_
                                                      _L26660_)
                                                     (_g2667526698_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4520745208_))))
                                                (let ((___kont4521045211_
                                                       (lambda (_L26775_)
                                                         (let* ((_g2678926797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2679026793_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2679026793_)))
                        (_g2678826816_
                         (lambda (_g2679026801_)
                           ((lambda (_L26804_)
                              (let ()
                                (let ((__tmp49578
                                       (let ((__tmp49582
                                              (let ((__tmp49588
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49583
                                                     (let ((__tmp49585
                                                            (let ((__tmp49587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49586
                           (let () (declare (not safe)) (cons _L25897_ '()))))
                      (declare (not safe))
                      (cons __tmp49587 __tmp49586)))
                   (__tmp49584
                    (let () (declare (not safe)) (cons _L26804_ '()))))
               (declare (not safe))
               (cons __tmp49585 __tmp49584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49588 __tmp49583)))
                                             (__tmp49579
                                              (let ((__tmp49581
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24634_
                                                        _tgt25876_
                                                        _L26775_
                                                        '0
                                                        _K25879_
                                                        _E25880_)))
                                                    (__tmp49580
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49581 __tmp49580))))
                                         (declare (not safe))
                                         (cons __tmp49582 __tmp49579))))
                                  (declare (not safe))
                                  (cons 'if __tmp49578))))
                            _g2679026801_)))
                        (__tmp49589 (gx#stx-length _L26775_)))
                   (declare (not safe))
                   (_g2678826816_ __tmp49589))))
              (___kont4521245213_
               (lambda (_L26729_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24635_
                    _tgt25876_
                    _L26729_
                    'values->list
                    _K25879_
                    _E25880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4520745208_)
                                                      (let ((_e2668026751_
                                                             (gx#syntax-e
                                                              ___stx4520745208_)))
                                                        (let ((_tl2667826758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2668026751_)))
                      (_hd2667926755_
                       (let () (declare (not safe)) (##car _e2668026751_))))
                  (if (gx#stx-datum? _hd2667926755_)
                      (let ((_e2668126761_ (gx#stx-e _hd2667926755_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2668126761_ 'simple:))
                            (if (gx#stx-pair? _tl2667826758_)
                                (let ((_e2668426765_
                                       (gx#syntax-e _tl2667826758_)))
                                  (let ((_tl2668226772_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2668426765_)))
                                        (_hd2668326769_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2668426765_))))
                                    (if (gx#stx-null? _tl2668226772_)
                                        (___kont4521045211_ _hd2668326769_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2667526698_)))))
                                (let () (declare (not safe)) (_g2667526698_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2668126761_ 'list:))
                                (if (gx#stx-pair? _tl2667826758_)
                                    (let ((_e2669226719_
                                           (gx#syntax-e _tl2667826758_)))
                                      (let ((_tl2669026726_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2669226719_)))
                                            (_hd2669126723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2669226719_))))
                                        (if (gx#stx-null? _tl2669026726_)
                                            (___kont4521245213_ _hd2669126723_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2667526698_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2667526698_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2667526698_)))))
                      (let () (declare (not safe)) (_g2667526698_)))))
              (let () (declare (not safe)) (_g2667526698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4539245393_
                                            (lambda (_L26465_)
                                              (let* ((___stx4515745158_
                                                      _L26465_)
                                                     (_g2648026503_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4515745158_))))
                                                (let ((___kont4516045161_
                                                       (lambda (_L26580_)
                                                         (let* ((_g2659426602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2659526598_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2659526598_)))
                        (_g2659326621_
                         (lambda (_g2659526606_)
                           ((lambda (_L26609_)
                              (let ()
                                (let ((__tmp49590
                                       (let ((__tmp49605
                                              (let ((__tmp49607
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49606
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25897_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49607 __tmp49606)))
                                             (__tmp49591
                                              (let ((__tmp49593
                                                     (let ((__tmp49594
                                                            (let ((__tmp49598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49604 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49599
                                  (let ((__tmp49601
                                         (let ((__tmp49603
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49602
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25897_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49603 __tmp49602)))
                                        (__tmp49600
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49601 __tmp49600))))
                             (declare (not safe))
                             (cons __tmp49604 __tmp49599)))
                          (__tmp49595
                           (let ((__tmp49597
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24634_
                                     _tgt25876_
                                     _L26580_
                                     '0
                                     _K25879_
                                     _E25880_)))
                                 (__tmp49596
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25880_ '()))))
                             (declare (not safe))
                             (cons __tmp49597 __tmp49596))))
                      (declare (not safe))
                      (cons __tmp49598 __tmp49595))))
               (declare (not safe))
               (cons 'if __tmp49594)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49592
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25880_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49593 __tmp49592))))
                                         (declare (not safe))
                                         (cons __tmp49605 __tmp49591))))
                                  (declare (not safe))
                                  (cons 'if __tmp49590))))
                            _g2659526606_)))
                        (__tmp49608 (gx#stx-length _L26580_)))
                   (declare (not safe))
                   (_g2659326621_ __tmp49608))))
              (___kont4516245163_
               (lambda (_L26534_)
                 (let ((__tmp49609
                        (let ((__tmp49613
                               (let ((__tmp49615
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp49614
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25897_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49615 __tmp49614)))
                              (__tmp49610
                               (let ((__tmp49612
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24635_
                                         _tgt25876_
                                         _L26534_
                                         'vector->list
                                         _K25879_
                                         _E25880_)))
                                     (__tmp49611
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25880_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49612 __tmp49611))))
                          (declare (not safe))
                          (cons __tmp49613 __tmp49610))))
                   (declare (not safe))
                   (cons 'if __tmp49609)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4515745158_)
                                                      (let ((_e2648526556_
                                                             (gx#syntax-e
                                                              ___stx4515745158_)))
                                                        (let ((_tl2648326563_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2648526556_)))
                      (_hd2648426560_
                       (let () (declare (not safe)) (##car _e2648526556_))))
                  (if (gx#stx-datum? _hd2648426560_)
                      (let ((_e2648626566_ (gx#stx-e _hd2648426560_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2648626566_ 'simple:))
                            (if (gx#stx-pair? _tl2648326563_)
                                (let ((_e2648926570_
                                       (gx#syntax-e _tl2648326563_)))
                                  (let ((_tl2648726577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2648926570_)))
                                        (_hd2648826574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2648926570_))))
                                    (if (gx#stx-null? _tl2648726577_)
                                        (___kont4516045161_ _hd2648826574_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2648026503_)))))
                                (let () (declare (not safe)) (_g2648026503_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2648626566_ 'list:))
                                (if (gx#stx-pair? _tl2648326563_)
                                    (let ((_e2649726524_
                                           (gx#syntax-e _tl2648326563_)))
                                      (let ((_tl2649526531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2649726524_)))
                                            (_hd2649626528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2649726524_))))
                                        (if (gx#stx-null? _tl2649526531_)
                                            (___kont4516245163_ _hd2649626528_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2648026503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2648026503_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2648026503_)))))
                      (let () (declare (not safe)) (_g2648026503_)))))
              (let () (declare (not safe)) (_g2648026503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4539445395_
                                            (lambda (_L26416_ _L26418_)
                                              (let ((__tmp49616
                                                     (gx#stx-e _L26418_)))
                                                (declare (not safe))
                                                (_generate-struct24636_
                                                 __tmp49616
                                                 _tgt25876_
                                                 _L26416_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4539645397_
                                            (lambda (_L26357_ _L26359_)
                                              (let ((__tmp49617
                                                     (gx#stx-e _L26359_)))
                                                (declare (not safe))
                                                (_generate-class24639_
                                                 __tmp49617
                                                 _tgt25876_
                                                 _L26357_
                                                 _K25879_
                                                 _E25880_))))
                                           (___kont4539845399_
                                            (lambda (_L26260_)
                                              (let* ((_g2627426282_
                                                      (lambda (_g2627526278_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2627526278_)))
                                                     (_g2627326301_
                                                      (lambda (_g2627526286_)
                                                        ((lambda (_L26289_)
                                                           (let ()
                                                             (let ((__tmp49618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49621
                                   (let ((__tmp49622
                                          (let ((__tmp49623
                                                 (let ((__tmp49624
                                                        (let ((__tmp49626
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49625
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26260_ '()))))
                  (declare (not safe))
                  (cons __tmp49626 __tmp49625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49624 '()))))
                                            (declare (not safe))
                                            (cons _L25897_ __tmp49623))))
                                     (declare (not safe))
                                     (cons _L26289_ __tmp49622)))
                                  (__tmp49619
                                   (let ((__tmp49620
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25880_ '()))))
                                     (declare (not safe))
                                     (cons _K25879_ __tmp49620))))
                              (declare (not safe))
                              (cons __tmp49621 __tmp49619))))
                       (declare (not safe))
                       (cons 'if __tmp49618))))
                 _g2627526286_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49627
                                                      (let ((_e26305_
                                                             (gx#stx-e
                                                              _L26260_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26305_))
                        (keyword? _e26305_)
                        (let () (declare (not safe)) (immediate? _e26305_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26305_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2627326301_ __tmp49627))))
                                           (___kont4540045401_
                                            (lambda (_L26180_ _L26182_)
                                              (let* ((_g2619826206_
                                                      (lambda (_g2619926202_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2619926202_)))
                                                     (_g2619726225_
                                                      (lambda (_g2619926210_)
                                                        ((lambda (_L26213_)
                                                           (let ()
                                                             (let ((__tmp49628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49631
                                   (let ((__tmp49632
                                          (let ((__tmp49633
                                                 (let ((__tmp49634
                                                        (let ((__tmp49635
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25897_ '()))))
                  (declare (not safe))
                  (cons _L26182_ __tmp49635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49634 '()))))
                                            (declare (not safe))
                                            (cons _L26213_ __tmp49633))))
                                     (declare (not safe))
                                     (cons __tmp49632 '())))
                                  (__tmp49629
                                   (let ((__tmp49630
                                          (let ()
                                            (declare (not safe))
                                            (_generate124631_
                                             _L26213_
                                             _L26180_
                                             _K25879_
                                             _E25880_))))
                                     (declare (not safe))
                                     (cons __tmp49630 '()))))
                              (declare (not safe))
                              (cons __tmp49631 __tmp49629))))
                       (declare (not safe))
                       (cons 'let __tmp49628))))
                 _g2619926210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49636
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2619726225_ __tmp49636))))
                                           (___kont4540245403_
                                            (lambda (_L26122_)
                                              (let ((__tmp49637
                                                     (let ((__tmp49639
                                                            (let ((__tmp49640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49641
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25897_ '()))))
                             (declare (not safe))
                             (cons _L26122_ __tmp49641))))
                      (declare (not safe))
                      (cons __tmp49640 '())))
                   (__tmp49638
                    (let () (declare (not safe)) (cons _K25879_ '()))))
               (declare (not safe))
               (cons __tmp49639 __tmp49638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp49637))))
                                           (___kont4540445405_
                                            (lambda () _K25879_)))
                                       (if (gx#stx-pair? ___stx4537145372_)
                                           (let ((_e2593027350_
                                                  (gx#syntax-e
                                                   ___stx4537145372_)))
                                             (let ((_tl2592827357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2593027350_)))
                                                   (_hd2592927354_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2593027350_))))
                                               (if (gx#stx-datum?
                                                    _hd2592927354_)
                                                   (let ((_e2593127360_
                                                          (gx#stx-e
                                                           _hd2592927354_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2593427364_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2593227371_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2593427364_)))
                             (_hd2593327368_
                              (let ()
                                (declare (not safe))
                                (##car _e2593427364_))))
                         (___kont4537445375_ _tl2593227371_ _hd2593327368_)))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let () (declare (not safe)) (equal? _e2593127360_ 'and:))
                     (___kont4537645377_ _tl2592827357_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'or:))
                         (___kont4537845379_ _tl2592827357_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'not:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2595227133_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2595027140_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2595227133_)))
                                         (_hd2595127137_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2595227133_))))
                                     (if (gx#stx-null? _tl2595027140_)
                                         (___kont4538045381_ _hd2595127137_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'cons:))
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2596127005_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2595927012_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2596127005_)))
                                             (_hd2596027009_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2596127005_))))
                                         (if (gx#stx-pair? _tl2595927012_)
                                             (let ((_e2596427015_
                                                    (gx#syntax-e
                                                     _tl2595927012_)))
                                               (let ((_tl2596227022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2596427015_)))
                                                     (_hd2596327019_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2596427015_))))
                                                 (if (gx#stx-null?
                                                      _tl2596227022_)
                                                     (___kont4538245383_
                                                      _hd2596327019_
                                                      _hd2596027009_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'null:))
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4538445385_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2593127360_ 'splice:))
                                         (if (gx#stx-pair? _tl2592827357_)
                                             (let ((_e2597726921_
                                                    (gx#syntax-e
                                                     _tl2592827357_)))
                                               (let ((_tl2597526928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2597726921_)))
                                                     (_hd2597626925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2597726921_))))
                                                 (if (gx#stx-pair?
                                                      _tl2597526928_)
                                                     (let ((_e2598026931_
                                                            (gx#syntax-e
                                                             _tl2597526928_)))
                                                       (let ((_tl2597826938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2598026931_)))
                     (_hd2597926935_
                      (let () (declare (not safe)) (##car _e2598026931_))))
                 (if (gx#stx-null? _tl2597826938_)
                     (___kont4538645387_ _hd2597926935_ _hd2597626925_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2593127360_ 'box:))
                                             (if (gx#stx-pair? _tl2592827357_)
                                                 (let ((_e2598826845_
                                                        (gx#syntax-e
                                                         _tl2592827357_)))
                                                   (let ((_tl2598626852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2598826845_)))
                                                         (_hd2598726849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2598826845_))))
                                                     (if (gx#stx-null?
                                                          _tl2598626852_)
                                                         (___kont4538845389_
                                                          _hd2598726849_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2592426066_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2593127360_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2592827357_)
                                                     (let ((_e2599626650_
                                                            (gx#syntax-e
                                                             _tl2592827357_)))
                                                       (let ((_tl2599426657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2599626650_)))
                     (_hd2599526654_
                      (let () (declare (not safe)) (##car _e2599626650_))))
                 (if (gx#stx-null? _tl2599426657_)
                     (___kont4539045391_ _hd2599526654_)
                     (let () (declare (not safe)) (_g2592426066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2592426066_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2593127360_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2592827357_)
                                                         (let ((_e2600426455_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2592827357_)))
                   (let ((_tl2600226462_
                          (let () (declare (not safe)) (##cdr _e2600426455_)))
                         (_hd2600326459_
                          (let () (declare (not safe)) (##car _e2600426455_))))
                     (if (gx#stx-null? _tl2600226462_)
                         (___kont4539245393_ _hd2600326459_)
                         (let () (declare (not safe)) (_g2592426066_)))))
                 (let () (declare (not safe)) (_g2592426066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2593127360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2592827357_)
                     (let ((_e2601326396_ (gx#syntax-e _tl2592827357_)))
                       (let ((_tl2601126403_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2601326396_)))
                             (_hd2601226400_
                              (let ()
                                (declare (not safe))
                                (##car _e2601326396_))))
                         (if (gx#stx-pair? _tl2601126403_)
                             (let ((_e2601626406_
                                    (gx#syntax-e _tl2601126403_)))
                               (let ((_tl2601426413_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2601626406_)))
                                     (_hd2601526410_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2601626406_))))
                                 (if (gx#stx-null? _tl2601426413_)
                                     (___kont4539445395_
                                      _hd2601526410_
                                      _hd2601226400_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))))
                     (let () (declare (not safe)) (_g2592426066_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2593127360_ 'class:))
                     (if (gx#stx-pair? _tl2592827357_)
                         (let ((_e2602526337_ (gx#syntax-e _tl2592827357_)))
                           (let ((_tl2602326344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2602526337_)))
                                 (_hd2602426341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2602526337_))))
                             (if (gx#stx-pair? _tl2602326344_)
                                 (let ((_e2602826347_
                                        (gx#syntax-e _tl2602326344_)))
                                   (let ((_tl2602626354_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2602826347_)))
                                         (_hd2602726351_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2602826347_))))
                                     (if (gx#stx-null? _tl2602626354_)
                                         (___kont4539645397_
                                          _hd2602726351_
                                          _hd2602426341_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2592426066_)))))
                         (let () (declare (not safe)) (_g2592426066_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2593127360_ 'datum:))
                         (if (gx#stx-pair? _tl2592827357_)
                             (let ((_e2603626250_
                                    (gx#syntax-e _tl2592827357_)))
                               (let ((_tl2603426257_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2603626250_)))
                                     (_hd2603526254_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2603626250_))))
                                 (if (gx#stx-null? _tl2603426257_)
                                     (___kont4539845399_ _hd2603526254_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))
                             (let () (declare (not safe)) (_g2592426066_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2593127360_ 'apply:))
                             (if (gx#stx-pair? _tl2592827357_)
                                 (let ((_e2604526160_
                                        (gx#syntax-e _tl2592827357_)))
                                   (let ((_tl2604326167_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2604526160_)))
                                         (_hd2604426164_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2604526160_))))
                                     (if (gx#stx-pair? _tl2604326167_)
                                         (let ((_e2604826170_
                                                (gx#syntax-e _tl2604326167_)))
                                           (let ((_tl2604626177_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2604826170_)))
                                                 (_hd2604726174_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2604826170_))))
                                             (if (gx#stx-null? _tl2604626177_)
                                                 (___kont4540045401_
                                                  _hd2604726174_
                                                  _hd2604426164_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2592426066_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))))
                                 (let () (declare (not safe)) (_g2592426066_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2593127360_ 'var:))
                                 (if (gx#stx-pair? _tl2592827357_)
                                     (let ((_e2605626112_
                                            (gx#syntax-e _tl2592827357_)))
                                       (let ((_tl2605426119_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2605626112_)))
                                             (_hd2605526116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2605626112_))))
                                         (if (gx#stx-null? _tl2605426119_)
                                             (___kont4540245403_
                                              _hd2605526116_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2592426066_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2593127360_ 'any:))
                                     (if (gx#stx-null? _tl2592827357_)
                                         (___kont4540445405_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2592426066_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2592426066_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2592426066_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2592426066_)))))))
                               _g2588325894_))))
                      (declare (not safe))
                      (_g2588127659_ _tgt25876_))))
                 (_generate-splice24633_
                  (lambda (_tgt25248_ _hd25250_ _rest25251_ _K25252_ _E25253_)
                    (let* ((_g2525525272_
                            (lambda (_g2525625268_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2525625268_)))
                           (_g2525425872_
                            (lambda (_g2525625276_)
                              (if (gx#stx-pair/null? _g2525625276_)
                                  (let ((_g49642_
                                         (gx#syntax-split-splice
                                          _g2525625276_
                                          '0)))
                                    (begin
                                      (let ((_g49643_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49642_)
                                                   (##vector-length _g49642_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49643_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49643_)))
                                      (let ((_target2525825279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49642_ 0)))
                                            (_tl2526025282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49642_ 1))))
                                        (if (gx#stx-null? _tl2526025282_)
                                            (letrec ((_loop2526125285_
                                                      (lambda (_hd2525925289_
                                                               _var2526525292_)
                                                        (if (gx#stx-pair?
                                                             _hd2525925289_)
                                                            (let ((_e2526225295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2525925289_)))
                      (let ((_lp-hd2526325299_
                             (let ()
                               (declare (not safe))
                               (##car _e2526225295_)))
                            (_lp-tl2526425302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2526225295_))))
                        (let ((__tmp49725
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2526325299_ _var2526525292_))))
                          (declare (not safe))
                          (_loop2526125285_ _lp-tl2526425302_ __tmp49725))))
                    (let ((_var2526625305_ (reverse _var2526525292_)))
                      ((lambda (_L25309_)
                         (let ()
                           (let* ((_g2532525342_
                                   (lambda (_g2532625338_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2532625338_)))
                                  (_g2532425860_
                                   (lambda (_g2532625346_)
                                     (if (gx#stx-pair/null? _g2532625346_)
                                         (let ((_g49644_
                                                (gx#syntax-split-splice
                                                 _g2532625346_
                                                 '0)))
                                           (begin
                                             (let ((_g49645_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49644_)
                                                          (##vector-length
                                                           _g49644_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49645_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49645_)))
                                             (let ((_target2532825349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49644_
                                                       0)))
                                                   (_tl2533025352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49644_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2533025352_)
                                                   (letrec ((_loop2533125355_
                                                             (lambda (_hd2532925359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2533525362_)
                       (if (gx#stx-pair? _hd2532925359_)
                           (let ((_e2533225365_ (gx#syntax-e _hd2532925359_)))
                             (let ((_lp-hd2533325369_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2533225365_)))
                                   (_lp-tl2533425372_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2533225365_))))
                               (let ((__tmp49723
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2533325369_
                                              _var-r2533525362_))))
                                 (declare (not safe))
                                 (_loop2533125355_
                                  _lp-tl2533425372_
                                  __tmp49723))))
                           (let ((_var-r2533625375_
                                  (reverse _var-r2533525362_)))
                             ((lambda (_L25379_)
                                (let ()
                                  (let* ((_g2539625413_
                                          (lambda (_g2539725409_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2539725409_)))
                                         (_g2539525848_
                                          (lambda (_g2539725417_)
                                            (if (gx#stx-pair/null?
                                                 _g2539725417_)
                                                (let ((_g49646_
                                                       (gx#syntax-split-splice
                                                        _g2539725417_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49646_)
                         (##vector-length _g49646_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49647_ 2)))
                  (error "Context expects 2 values" _g49647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2539925420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49646_
                                                              0)))
                                                          (_tl2540125423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49646_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2540125423_)
                                                          (letrec ((_loop2540225426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2540025430_ _init2540625433_)
                              (if (gx#stx-pair? _hd2540025430_)
                                  (let ((_e2540325436_
                                         (gx#syntax-e _hd2540025430_)))
                                    (let ((_lp-hd2540425440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2540325436_)))
                                          (_lp-tl2540525443_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2540325436_))))
                                      (let ((__tmp49720
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2540425440_
                                                     _init2540625433_))))
                                        (declare (not safe))
                                        (_loop2540225426_
                                         _lp-tl2540525443_
                                         __tmp49720))))
                                  (let ((_init2540725446_
                                         (reverse _init2540625433_)))
                                    ((lambda (_L25450_)
                                       (let ()
                                         (let* ((_g2546725475_
                                                 (lambda (_g2546825471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2546825471_)))
                                                (_g2546625844_
                                                 (lambda (_g2546825479_)
                                                   ((lambda (_L25482_)
                                                      (let ()
                                                        (let* ((_g2549525503_
                                                                (lambda (_g2549625499_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2549625499_)))
                       (_g2549425840_
                        (lambda (_g2549625507_)
                          ((lambda (_L25510_)
                             (let ()
                               (let* ((_g2552325531_
                                       (lambda (_g2552425527_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2552425527_)))
                                      (_g2552225836_
                                       (lambda (_g2552425535_)
                                         ((lambda (_L25538_)
                                            (let ()
                                              (let* ((_g2555125559_
                                                      (lambda (_g2555225555_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2555225555_)))
                                                     (_g2555025832_
                                                      (lambda (_g2555225563_)
                                                        ((lambda (_L25566_)
                                                           (let ()
                                                             (let* ((_g2557925587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2558025583_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2558025583_)))
                            (_g2557825828_
                             (lambda (_g2558025591_)
                               ((lambda (_L25594_)
                                  (let ()
                                    (let* ((_g2560725615_
                                            (lambda (_g2560825611_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2560825611_)))
                                           (_g2560625824_
                                            (lambda (_g2560825619_)
                                              ((lambda (_L25622_)
                                                 (let ()
                                                   (let* ((_g2563525643_
                                                           (lambda (_g2563625639_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2563625639_)))
                                                          (_g2563425820_
                                                           (lambda (_g2563625647_)
                                                             ((lambda (_L25650_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2566325671_
                                  (lambda (_g2566425667_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2566425667_)))
                                 (_g2566225805_
                                  (lambda (_g2566425675_)
                                    ((lambda (_L25678_)
                                       (let ()
                                         (let* ((_g2569125699_
                                                 (lambda (_g2569225695_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2569225695_)))
                                                (_g2569025793_
                                                 (lambda (_g2569225703_)
                                                   ((lambda (_L25706_)
                                                      (let ()
                                                        (let* ((_g2571925727_
                                                                (lambda (_g2572025723_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2572025723_)))
                       (_g2571825789_
                        (lambda (_g2572025731_)
                          ((lambda (_L25734_)
                             (let ()
                               (let ()
                                 (let ((__tmp49696
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp49648
                                        (let ((__tmp49653
                                               (let ((__tmp49688
                                                      (let ((__tmp49689
                                                             (let ((__tmp49690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49695 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49691
                                   (let ((__tmp49693
                                          (let ((__tmp49694
                                                 (foldr (lambda (_g2575625759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2575725762_)
                  (let ()
                    (declare (not safe))
                    (cons _g2575625759_ _g2575725762_)))
                '()
                _L25309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L25622_ __tmp49694)))
                                         (__tmp49692
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49693 __tmp49692))))
                              (declare (not safe))
                              (cons __tmp49695 __tmp49691))))
                       (declare (not safe))
                       (cons __tmp49690 '()))))
                (declare (not safe))
                (cons _L25510_ __tmp49689)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49654
                                                      (let ((__tmp49679
                                                             (let ((__tmp49680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49681
                                   (let ((__tmp49687
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp49682
                                          (let ((__tmp49684
                                                 (let ((__tmp49685
                                                        (let ((__tmp49686
                                                               (foldr (lambda (_g2575425765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2575525768_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575425765_ _g2575525768_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25594_ __tmp49685)))
                                                (__tmp49683
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49684 __tmp49683))))
                                     (declare (not safe))
                                     (cons __tmp49687 __tmp49682))))
                              (declare (not safe))
                              (cons __tmp49681 '()))))
                       (declare (not safe))
                       (cons _L25566_ __tmp49680)))
                    (__tmp49655
                     (let ((__tmp49656
                            (let ((__tmp49657
                                   (let ((__tmp49658
                                          (let ((__tmp49678
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp49659
                                                 (let ((__tmp49676
                                                        (let ((__tmp49677
                                                               (foldr (lambda (_g2575225771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2575325774_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2575225771_ _g2575325774_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49677)))
               (__tmp49660
                (let ((__tmp49661
                       (let ((__tmp49675 (gx#datum->syntax '#f 'if))
                             (__tmp49662
                              (let ((__tmp49672
                                     (let ((__tmp49674
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp49673
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25622_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49674 __tmp49673)))
                                    (__tmp49663
                                     (let ((__tmp49665
                                            (let ((__tmp49666
                                                   (let ((__tmp49669
                                                          (let ((__tmp49671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp49670
                         (let () (declare (not safe)) (cons _L25622_ '()))))
                    (declare (not safe))
                    (cons __tmp49671 __tmp49670)))
                 (__tmp49667
                  (let ((__tmp49668
                         (foldr (lambda (_g2575025777_ _g2575125780_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2575025777_ _g2575125780_)))
                                '()
                                _L25379_)))
                    (declare (not safe))
                    (cons _L25622_ __tmp49668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49669
                                                           __tmp49667))))
                                              (declare (not safe))
                                              (cons _L25566_ __tmp49666)))
                                           (__tmp49664
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25706_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49665 __tmp49664))))
                                (declare (not safe))
                                (cons __tmp49672 __tmp49663))))
                         (declare (not safe))
                         (cons __tmp49675 __tmp49662))))
                  (declare (not safe))
                  (cons __tmp49661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49676
                                                         __tmp49660))))
                                            (declare (not safe))
                                            (cons __tmp49678 __tmp49659))))
                                     (declare (not safe))
                                     (cons __tmp49658 '()))))
                              (declare (not safe))
                              (cons _L25538_ __tmp49657))))
                       (declare (not safe))
                       (cons __tmp49656 '()))))
                (declare (not safe))
                (cons __tmp49679 __tmp49655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49688 __tmp49654)))
                                              (__tmp49649
                                               (let ((__tmp49650
                                                      (let ((__tmp49651
                                                             (let ((__tmp49652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g2574825783_ _g2574925786_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2574825783_ _g2574925786_)))
                                   '()
                                   _L25450_)))
                       (declare (not safe))
                       (cons _L25482_ __tmp49652))))
                (declare (not safe))
                (cons _L25538_ __tmp49651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49650 '()))))
                                          (declare (not safe))
                                          (cons __tmp49653 __tmp49649))))
                                   (declare (not safe))
                                   (cons __tmp49696 __tmp49648)))))
                           _g2572025731_)))
                       (__tmp49697
                        (let ()
                          (declare (not safe))
                          (_generate124631_
                           _L25594_
                           _hd25250_
                           _L25678_
                           _L25706_))))
                  (declare (not safe))
                  (_g2571825789_ __tmp49697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2569225703_)))
                                                (__tmp49698
                                                 (let ((__tmp49699
                                                        (let ((__tmp49700
                                                               (foldr (lambda (_g2579625799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2579725802_)
                                (let ((__tmp49701
                                       (let ((__tmp49703
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp49702
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2579625799_ '()))))
                                         (declare (not safe))
                                         (cons __tmp49703 __tmp49702))))
                                  (declare (not safe))
                                  (cons __tmp49701 _g2579725802_)))
                              '()
                              _L25379_)))
                  (declare (not safe))
                  (cons _L25622_ __tmp49700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25510_
                                                         __tmp49699))))
                                           (declare (not safe))
                                           (_g2569025793_ __tmp49698))))
                                     _g2566425675_)))
                                 (__tmp49704
                                  (let ((__tmp49705
                                         (let ((__tmp49711
                                                (let ((__tmp49713
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp49712
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25622_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49713
                                                        __tmp49712)))
                                               (__tmp49706
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25379_
                                                   _L25309_)
                                                  (foldr (lambda (_g2580825812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2580925815_
                          _g2581025817_)
                   (let ((__tmp49707
                          (let ((__tmp49710 (gx#datum->syntax '#f 'cons))
                                (__tmp49708
                                 (let ((__tmp49709
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2580825812_ '()))))
                                   (declare (not safe))
                                   (cons _g2580925815_ __tmp49709))))
                            (declare (not safe))
                            (cons __tmp49710 __tmp49708))))
                     (declare (not safe))
                     (cons __tmp49707 _g2581025817_)))
                 '()
                 _L25379_
                 _L25309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp49711 __tmp49706))))
                                    (declare (not safe))
                                    (cons _L25538_ __tmp49705))))
                            (declare (not safe))
                            (_g2566225805_ __tmp49704))))
                      _g2563625647_)))
                  (__tmp49714
                   (let ()
                     (declare (not safe))
                     (_generate124631_
                      _L25622_
                      _rest25251_
                      _K25252_
                      _E25253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2563425820_
                                                      __tmp49714))))
                                               _g2560825619_)))
                                           (__tmp49715 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2560625824_ __tmp49715))))
                                _g2558025591_)))
                            (__tmp49716 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2557825828_ __tmp49716))))
                 _g2555225563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49717
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2555025832_ __tmp49717))))
                                          _g2552425535_)))
                                      (__tmp49718 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2552225836_ __tmp49718))))
                           _g2549625507_)))
                       (__tmp49719 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2549425840_ __tmp49719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2546825479_))))
                                           (declare (not safe))
                                           (_g2546625844_ _tgt25248_))))
                                     _init2540725446_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2540225426_ _target2539925420_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2539625413_ _g2539725417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2539625413_
                                                   _g2539725417_)))))
                                         (__tmp49721
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2585125854_
                                                            _g2585225857_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2585125854_
                                                             _g2585225857_)))
                                                   '()
                                                   _L25309_))
                                           (let ((__tmp49722
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp49722 '())))))
                                    (declare (not safe))
                                    (_g2539525848_ __tmp49721))))
                              _var-r2533625375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2533125355_
                                                        _target2532825349_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2532525342_
                                                      _g2532625346_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2532525342_ _g2532625346_)))))
                                  (__tmp49724
                                   (gx#gentemps
                                    (foldr (lambda (_g2586325866_
                                                    _g2586425869_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2586325866_
                                                     _g2586425869_)))
                                           '()
                                           _L25309_))))
                             (declare (not safe))
                             (_g2532425860_ __tmp49724))))
                       _var2526625305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2526125285_
                                                 _target2525825279_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2525525272_
                                               _g2525625276_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2525525272_ _g2525625276_)))))
                           (__tmp49726
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25250_))))
                      (declare (not safe))
                      (_g2525425872_ __tmp49726))))
                 (_generate-simple-vector24634_
                  (lambda (_tgt25090_
                           _body25092_
                           _start25093_
                           _K25094_
                           _E25095_)
                    (let _recur25097_ ((_rest25100_ _body25092_)
                                       (_off25102_ _start25093_))
                      (let* ((___stx4572945730_ _rest25100_)
                             (_g2510525117_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4572945730_))))
                        (let ((___kont4573245733_
                               (lambda (_L25145_ _L25147_)
                                 (let* ((_g2516225181_
                                         (lambda (_g2516325177_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2516325177_)))
                                        (_g2516125240_
                                         (lambda (_g2516325185_)
                                           (if (gx#stx-pair? _g2516325185_)
                                               (let ((_e2516925188_
                                                      (gx#syntax-e
                                                       _g2516325185_)))
                                                 (let ((_hd2516825192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2516925188_)))
                                                       (_tl2516725195_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2516925188_))))
                                                   (if (gx#stx-pair?
                                                        _tl2516725195_)
                                                       (let ((_e2517225198_
                                                              (gx#syntax-e
                                                               _tl2516725195_)))
                                                         (let ((_hd2517125202_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2517225198_)))
                       (_tl2517025205_
                        (let () (declare (not safe)) (##cdr _e2517225198_))))
                   (if (gx#stx-pair? _tl2517025205_)
                       (let ((_e2517525208_ (gx#syntax-e _tl2517025205_)))
                         (let ((_hd2517425212_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2517525208_)))
                               (_tl2517325215_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2517525208_))))
                           (if (gx#stx-null? _tl2517325215_)
                               ((lambda (_L25218_ _L25220_ _L25221_)
                                  (let ()
                                    (let ((__tmp49727
                                           (let ((__tmp49732
                                                  (let ((__tmp49733
                                                         (let ((__tmp49734
                                                                (let ((__tmp49735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49738
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp49736
                                      (let ((__tmp49737
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25218_ '()))))
                                        (declare (not safe))
                                        (cons _L25220_ __tmp49737))))
                                 (declare (not safe))
                                 (cons __tmp49738 __tmp49736))))
                          (declare (not safe))
                          (cons __tmp49735 '()))))
                   (declare (not safe))
                   (cons _L25221_ __tmp49734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49733 '())))
                                                 (__tmp49728
                                                  (let ((__tmp49729
                                                         (let ((__tmp49730
                                                                (let ((__tmp49731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off25102_ '1))))
                          (declare (not safe))
                          (_recur25097_ _L25145_ __tmp49731))))
                   (declare (not safe))
                   (_generate124631_ _L25221_ _L25147_ __tmp49730 _E25095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49729 '()))))
                                             (declare (not safe))
                                             (cons __tmp49732 __tmp49728))))
                                      (declare (not safe))
                                      (cons 'let __tmp49727))))
                                _hd2517425212_
                                _hd2517125202_
                                _hd2516825192_)
                               (let ()
                                 (declare (not safe))
                                 (_g2516225181_ _g2516325185_)))))
                       (let ()
                         (declare (not safe))
                         (_g2516225181_ _g2516325185_)))))
               (let () (declare (not safe)) (_g2516225181_ _g2516325185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2516225181_
                                                  _g2516325185_)))))
                                        (__tmp49739
                                         (list (gx#genident 'e)
                                               _tgt25090_
                                               _off25102_)))
                                   (declare (not safe))
                                   (_g2516125240_ __tmp49739))))
                              (___kont4573445735_ (lambda () _K25094_)))
                          (if (gx#stx-pair? ___stx4572945730_)
                              (let ((_e2511125135_
                                     (gx#syntax-e ___stx4572945730_)))
                                (let ((_tl2510925142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2511125135_)))
                                      (_hd2511025139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2511125135_))))
                                  (___kont4573245733_
                                   _tl2510925142_
                                   _hd2511025139_)))
                              (___kont4573445735_)))))))
                 (_generate-list-vector24635_
                  (lambda (_tgt24982_
                           _body24984_
                           _->list24985_
                           _K24986_
                           _E24987_)
                    (let* ((_g2498924997_
                            (lambda (_g2499024993_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2499024993_)))
                           (_g2498825086_
                            (lambda (_g2499025001_)
                              ((lambda (_L25004_)
                                 (let ()
                                   (let* ((_g2501625024_
                                           (lambda (_g2501725020_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2501725020_)))
                                          (_g2501525082_
                                           (lambda (_g2501725028_)
                                             ((lambda (_L25031_)
                                                (let ()
                                                  (let* ((_g2504425052_
                                                          (lambda (_g2504525048_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2504525048_)))
                                                         (_g2504325074_
                                                          (lambda (_g2504525056_)
                                                            ((lambda (_L25059_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp49740
                                  (let ((__tmp49743
                                         (let ((__tmp49744
                                                (let ((__tmp49745
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25059_ '()))))
                                                  (declare (not safe))
                                                  (cons _L25004_ __tmp49745))))
                                           (declare (not safe))
                                           (cons __tmp49744 '())))
                                        (__tmp49741
                                         (let ((__tmp49742
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124631_
                                                   _L25004_
                                                   _body24984_
                                                   _K24986_
                                                   _E24987_))))
                                           (declare (not safe))
                                           (cons __tmp49742 '()))))
                                    (declare (not safe))
                                    (cons __tmp49743 __tmp49741))))
                             (declare (not safe))
                             (cons 'let __tmp49740)))))
                     _g2504525056_)))
                 (__tmp49746
                  (let ((_$e25078_ _->list24985_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e25078_))
                        (let ((__tmp49755 (gx#datum->syntax '#f 'values->list))
                              (__tmp49754
                               (let ()
                                 (declare (not safe))
                                 (cons _L25031_ '()))))
                          (declare (not safe))
                          (cons __tmp49755 __tmp49754))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e25078_))
                            (let ((__tmp49753
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp49752
                                   (let ()
                                     (declare (not safe))
                                     (cons _L25031_ '()))))
                              (declare (not safe))
                              (cons __tmp49753 __tmp49752))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e25078_))
                                (let ((__tmp49751
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp49747
                                       (let ((__tmp49748
                                              (let ((__tmp49750
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp49749
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25031_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49750 __tmp49749))))
                                         (declare (not safe))
                                         (cons __tmp49748 '()))))
                                  (declare (not safe))
                                  (cons __tmp49751 __tmp49747))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24624_
                                 _->list24985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2504325074_
                                                     __tmp49746))))
                                              _g2501725028_))))
                                     (declare (not safe))
                                     (_g2501525082_ _tgt24982_))))
                               _g2499025001_)))
                           (__tmp49756 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2498825086_ __tmp49756))))
                 (_generate-struct24636_
                  (lambda (_info24853_
                           _tgt24855_
                           _body24856_
                           _K24857_
                           _E24858_)
                    (let* ((___stx4574545746_ _body24856_)
                           (_g2486124884_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4574545746_))))
                      (let ((___kont4574845749_
                             (lambda (_L24961_)
                               (let* ((_fields24975_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24638_
                                          _info24853_)))
                                      (__tmp49757
                                       (let ((__tmp49761
                                              (let ((__tmp49763
                                                     (let ((__obj46948
                                                            _info24853_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj46948
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj46948
                                                              '11
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj46948
                                                            'predicate))))
                                                    (__tmp49762
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24855_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49763 __tmp49762)))
                                             (__tmp49758
                                              (let ((__tmp49760
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24637_
                                                        _info24853_
                                                        _tgt24855_
                                                        _L24961_
                                                        _K24857_
                                                        _E24858_)))
                                                    (__tmp49759
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24858_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49760 __tmp49759))))
                                         (declare (not safe))
                                         (cons __tmp49761 __tmp49758))))
                                 (declare (not safe))
                                 (cons 'if __tmp49757))))
                            (___kont4575045751_
                             (lambda (_L24915_)
                               (let ((__tmp49764
                                      (let ((__tmp49768
                                             (let ((__tmp49770
                                                    (let ((__obj46949
                                                           _info24853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj46949
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj46949
                                                             '11
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj46949
                                                           'predicate))))
                                                   (__tmp49769
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24855_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49770 __tmp49769)))
                                            (__tmp49765
                                             (let ((__tmp49767
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24635_
                                                       _tgt24855_
                                                       _L24915_
                                                       'struct->list
                                                       _K24857_
                                                       _E24858_)))
                                                   (__tmp49766
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24858_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49767 __tmp49766))))
                                        (declare (not safe))
                                        (cons __tmp49768 __tmp49765))))
                                 (declare (not safe))
                                 (cons 'if __tmp49764)))))
                        (if (gx#stx-pair? ___stx4574545746_)
                            (let ((_e2486624937_
                                   (gx#syntax-e ___stx4574545746_)))
                              (let ((_tl2486424944_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2486624937_)))
                                    (_hd2486524941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2486624937_))))
                                (if (gx#stx-datum? _hd2486524941_)
                                    (let ((_e2486724947_
                                           (gx#stx-e _hd2486524941_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2486724947_ 'simple:))
                                          (if (gx#stx-pair? _tl2486424944_)
                                              (let ((_e2487024951_
                                                     (gx#syntax-e
                                                      _tl2486424944_)))
                                                (let ((_tl2486824958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2487024951_)))
                                                      (_hd2486924955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2487024951_))))
                                                  (if (gx#stx-null?
                                                       _tl2486824958_)
                                                      (___kont4574845749_
                                                       _hd2486924955_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2486124884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2486724947_ 'list:))
                                              (if (gx#stx-pair? _tl2486424944_)
                                                  (let ((_e2487824905_
                                                         (gx#syntax-e
                                                          _tl2486424944_)))
                                                    (let ((_tl2487624912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2487824905_)))
                                                          (_hd2487724909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2487824905_))))
                                                      (if (gx#stx-null?
                                                           _tl2487624912_)
                                                          (___kont4575045751_
                                                           _hd2487724909_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2486124884_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2486124884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2486124884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2486124884_)))))
                            (let () (declare (not safe)) (_g2486124884_)))))))
                 (_generate-simple-struct-body24637_
                  (lambda (_info24773_
                           _tgt24775_
                           _body24776_
                           _K24777_
                           _E24778_)
                    (let _recur24780_ ((_rest24783_ _body24776_)
                                       (_fields24785_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24638_
                                           _info24773_))))
                      (let* ((___stx4579545796_ _rest24783_)
                             (_g2478824800_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4579545796_))))
                        (let ((___kont4579845799_
                               (lambda (_L24828_ _L24830_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24785_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24624_
                                      _info24773_
                                      (let ((__obj46950 _info24773_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj46950
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj46950
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj46950
                                             'name))))
                                     (let ((_$tgt24845_ (gx#genident 'e))
                                           (_getf24847_ (car _fields24785_)))
                                       (let ((__tmp49771
                                              (let ((__tmp49776
                                                     (let ((__tmp49777
                                                            (let ((__tmp49778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49779
                                  (let ((__tmp49780
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24775_ '()))))
                                    (declare (not safe))
                                    (cons _getf24847_ __tmp49780))))
                             (declare (not safe))
                             (cons __tmp49779 '()))))
                      (declare (not safe))
                      (cons _$tgt24845_ __tmp49778))))
               (declare (not safe))
               (cons __tmp49777 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49772
                                                     (let ((__tmp49773
                                                            (let ((__tmp49774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49775 (cdr _fields24785_)))
                             (declare (not safe))
                             (_recur24780_ _L24828_ __tmp49775))))
                      (declare (not safe))
                      (_generate124631_
                       _$tgt24845_
                       _L24830_
                       __tmp49774
                       _E24778_))))
               (declare (not safe))
               (cons __tmp49773 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49776 __tmp49772))))
                                         (declare (not safe))
                                         (cons 'let __tmp49771))))))
                              (___kont4580045801_ (lambda () _K24777_)))
                          (if (gx#stx-pair? ___stx4579545796_)
                              (let ((_e2479424818_
                                     (gx#syntax-e ___stx4579545796_)))
                                (let ((_tl2479224825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2479424818_)))
                                      (_hd2479324822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2479424818_))))
                                  (___kont4579845799_
                                   _tl2479224825_
                                   _hd2479324822_)))
                              (___kont4580045801_)))))))
                 (_struct-field-accessors24638_
                  (lambda (_info24754_)
                    (let _recur24757_ ((_next24760_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24754_ '()))))
                      (if (let () (declare (not safe)) (null? _next24760_))
                          '()
                          (let ((_ti24763_ (car _next24760_)))
                            (append (let ((__tmp49781
                                           (map gx#syntax-local-value
                                                (let ((__obj46951 _ti24763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj46951
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj46951
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj46951
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24757_ __tmp49781))
                                    (map (lambda (_slot24766_)
                                           (let ((_$e24769_
                                                  (assgetq _slot24766_
                                                           (let ((__obj46952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti24763_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj46952
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj46952
                            '14
                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          __obj46952
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e24769_
                                                 _$e24769_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24624_
                                                  _info24754_
                                                  _slot24766_))))
                                         (let ((__obj46953 _ti24763_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj46953
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj46953
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj46953
                                                'slots))))))))))
                 (_generate-class24639_
                  (lambda (_info24747_
                           _tgt24749_
                           _body24750_
                           _K24751_
                           _E24752_)
                    (let ((__tmp49782
                           (let ((__tmp49786
                                  (let ((__tmp49788
                                         (let ((__obj46954 _info24747_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj46954
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj46954
                                                  '11
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj46954
                                                'predicate))))
                                        (__tmp49787
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49788 __tmp49787)))
                                 (__tmp49783
                                  (let ((__tmp49785
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24640_
                                            _info24747_
                                            _tgt24749_
                                            _body24750_
                                            _K24751_
                                            _E24752_)))
                                        (__tmp49784
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24752_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49785 __tmp49784))))
                             (declare (not safe))
                             (cons __tmp49786 __tmp49783))))
                      (declare (not safe))
                      (cons 'if __tmp49782))))
                 (_generate-class-body24640_
                  (lambda (_info24642_
                           _tgt24644_
                           _body24645_
                           _K24646_
                           _E24647_)
                    (let _recur24649_ ((_rest24652_ _body24645_))
                      (let* ((___stx4581145812_ _rest24652_)
                             (_g2465624672_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4581145812_))))
                        (let ((___kont4581445815_
                               (lambda (_L24710_ _L24712_ _L24713_)
                                 (let ((_$e24733_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L24713_)))
                                                 (let ((__obj46955
                                                        _info24642_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj46955
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj46955
                                                          '14
                                                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        __obj46955
                                                        'unchecked-accessors))))))
                                   (if _$e24733_
                                       ((lambda (_getf24737_)
                                          (let* ((_$tgt24740_ (gx#genident 'e))
                                                 (__tmp49789
                                                  (let ((__tmp49793
                                                         (let ((__tmp49794
                                                                (let ((__tmp49795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49796
                                      (let ((__tmp49797
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24644_ '()))))
                                        (declare (not safe))
                                        (cons _getf24737_ __tmp49797))))
                                 (declare (not safe))
                                 (cons __tmp49796 '()))))
                          (declare (not safe))
                          (cons _$tgt24740_ __tmp49795))))
                   (declare (not safe))
                   (cons __tmp49794 '())))
                (__tmp49790
                 (let ((__tmp49791
                        (let ((__tmp49792
                               (let ()
                                 (declare (not safe))
                                 (_recur24649_ _L24710_))))
                          (declare (not safe))
                          (_generate124631_
                           _$tgt24740_
                           _L24712_
                           __tmp49792
                           _E24647_))))
                   (declare (not safe))
                   (cons __tmp49791 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49793
                                                          __tmp49790))))
                                            (declare (not safe))
                                            (cons 'let __tmp49789)))
                                        _$e24733_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24624_
                                        _info24642_
                                        _L24713_)))))
                              (___kont4581645817_ (lambda () _K24646_)))
                          (if (gx#stx-pair? ___stx4581145812_)
                              (let ((_e2466324690_
                                     (gx#syntax-e ___stx4581145812_)))
                                (let ((_tl2466124697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2466324690_)))
                                      (_hd2466224694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2466324690_))))
                                  (if (gx#stx-pair? _tl2466124697_)
                                      (let ((_e2466624700_
                                             (gx#syntax-e _tl2466124697_)))
                                        (let ((_tl2466424707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2466624700_)))
                                              (_hd2466524704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2466624700_))))
                                          (___kont4581445815_
                                           _tl2466424707_
                                           _hd2466524704_
                                           _hd2466224694_)))
                                      (___kont4581645817_))))
                              (___kont4581645817_))))))))
          (let ()
            (declare (not safe))
            (_generate124631_ _tgt24626_ _ptree24627_ _K24628_ _E24629_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23520_ _tgt-lst23522_ _clauses23523_)
        (letrec ((_parse-body23525_
                  (lambda (_hd-len24446_)
                    (let _lp24449_ ((_rest24452_ _clauses23523_)
                                    (_r24454_ '()))
                      (let* ((___stx4586145862_ _rest24452_)
                             (_g2445724469_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4586145862_))))
                        (let ((___kont4586445865_
                               (lambda (_L24497_ _L24499_)
                                 (let* ((___stx4583345834_ _L24499_)
                                        (_g2451624532_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4583345834_))))
                                   (let ((___kont4583645837_
                                          (lambda (_L24601_)
                                            (if (gx#stx-null? _L24497_)
                                                (let ((__tmp49798
                                                       (let ((__tmp49803
                                                              (gx#genident
                                                               'else))
                                                             (__tmp49799
                                                              (let ((__tmp49800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49801
                                    (gx#stx-wrap-source
                                     (let ((__tmp49802
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp49802 _L24601_))
                                     (let ((_$e24612_
                                            (gx#stx-source _L24499_)))
                                       (if _$e24612_
                                           _$e24612_
                                           (gx#stx-source _stx23520_))))))
                               (declare (not safe))
                               (cons __tmp49801 '()))))
                        (declare (not safe))
                        (cons '#f __tmp49800))))
                 (declare (not safe))
                 (cons __tmp49803 __tmp49799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49798 _r24454_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23520_
                                                 _L24499_))))
                                         (___kont4583845839_
                                          (lambda (_L24560_ _L24562_)
                                            (let ((__tmp49804
                                                   (let ((__tmp49805
                                                          (let ((__tmp49811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp49806
                         (let ((__tmp49810
                                (gx#stx-map
                                 (lambda (_g2457424576_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2457424576_
                                      _stx23520_)))
                                 _L24562_))
                               (__tmp49807
                                (let ((__tmp49808
                                       (gx#stx-wrap-source
                                        (let ((__tmp49809
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp49809 _L24560_))
                                        (let ((_$e24580_
                                               (gx#stx-source _L24499_)))
                                          (if _$e24580_
                                              _$e24580_
                                              (gx#stx-source _stx23520_))))))
                                  (declare (not safe))
                                  (cons __tmp49808 '()))))
                           (declare (not safe))
                           (cons __tmp49810 __tmp49807))))
                    (declare (not safe))
                    (cons __tmp49811 __tmp49806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49805
                                                           _r24454_))))
                                              (declare (not safe))
                                              (_lp24449_
                                               _L24497_
                                               __tmp49804))))
                                         (___kont4584045841_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23520_
                                             _L24499_))))
                                     (let* ((___match4585845859_
                                             (lambda (_e2452624550_
                                                      _hd2452524554_
                                                      _tl2452424557_)
                                               (let ((_L24560_ _tl2452424557_)
                                                     (_L24562_ _hd2452524554_))
                                                 (if (and (gx#stx-list?
                                                           _L24562_)
                                                          (fx= (gx#stx-length
                                                                _L24562_)
                                                               _hd-len24446_)
                                                          (gx#stx-list?
                                                           _L24560_)
                                                          (let ((__tmp49812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24560_)))
                    (declare (not safe))
                    (not __tmp49812)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4583845839_
                                                      _L24560_
                                                      _L24562_)
                                                     (___kont4584045841_)))))
                                            (___match4585245853_
                                             (lambda (_e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_)
                                               (let ((_L24601_ _tl2451924598_))
                                                 (if (and (gx#stx-list?
                                                           _L24601_)
                                                          (let ((__tmp49813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24601_)))
                    (declare (not safe))
                    (not __tmp49813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4583645837_
                                                      _L24601_)
                                                     (___match4585845859_
                                                      _e2452124591_
                                                      _hd2452024595_
                                                      _tl2451924598_))))))
                                       (if (gx#stx-pair? ___stx4583345834_)
                                           (let ((_e2452124591_
                                                  (gx#syntax-e
                                                   ___stx4583345834_)))
                                             (let ((_tl2451924598_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2452124591_)))
                                                   (_hd2452024595_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2452124591_))))
                                               (if (gx#identifier?
                                                    _hd2452024595_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g49814_|
                                                        _hd2452024595_)
                                                       (___match4585245853_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_)
                                                       (___match4585845859_
                                                        _e2452124591_
                                                        _hd2452024595_
                                                        _tl2451924598_))
                                                   (___match4585845859_
                                                    _e2452124591_
                                                    _hd2452024595_
                                                    _tl2451924598_))))
                                           (___kont4584045841_)))))))
                              (___kont4586645867_ (lambda () _r24454_)))
                          (if (gx#stx-pair? ___stx4586145862_)
                              (let ((_e2446324487_
                                     (gx#syntax-e ___stx4586145862_)))
                                (let ((_tl2446124494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2446324487_)))
                                      (_hd2446224491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2446324487_))))
                                  (___kont4586445865_
                                   _tl2446124494_
                                   _hd2446224491_)))
                              (___kont4586645867_)))))))
                 (_generate-body23527_
                  (lambda (_body24231_)
                    (let* ((_g2423424242_
                            (lambda (_g2423524238_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2423524238_)))
                           (_g2423324442_
                            (lambda (_g2423524246_)
                              ((lambda (_L24249_)
                                 (let ()
                                   (let* ((_g2426124278_
                                           (lambda (_g2426224274_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2426224274_)))
                                          (_g2426024438_
                                           (lambda (_g2426224282_)
                                             (if (gx#stx-pair/null?
                                                  _g2426224282_)
                                                 (let ((_g49815_
                                                        (gx#syntax-split-splice
                                                         _g2426224282_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49816_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49815_)
                          (##vector-length _g49815_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49816_ 2)))
                   (error "Context expects 2 values" _g49816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2426424285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49815_
                                                               0)))
                                                           (_tl2426624288_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49815_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2426624288_)
                                                           (letrec ((_loop2426724291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2426524295_ _target2427124298_)
                               (if (gx#stx-pair? _hd2426524295_)
                                   (let ((_e2426824301_
                                          (gx#syntax-e _hd2426524295_)))
                                     (let ((_lp-hd2426924305_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2426824301_)))
                                           (_lp-tl2427024308_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2426824301_))))
                                       (let ((__tmp49838
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2426924305_
                                                      _target2427124298_))))
                                         (declare (not safe))
                                         (_loop2426724291_
                                          _lp-tl2427024308_
                                          __tmp49838))))
                                   (let ((_target2427224311_
                                          (reverse _target2427124298_)))
                                     ((lambda (_L24315_)
                                        (let ()
                                          (let* ((_g2433224340_
                                                  (lambda (_g2433324336_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2433324336_)))
                                                 (_g2433124426_
                                                  (lambda (_g2433324344_)
                                                    ((lambda (_L24347_)
                                                       (let ()
                                                         (let* ((_g2436024368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2436124364_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2436124364_)))
                        (_g2435924422_
                         (lambda (_g2436124372_)
                           ((lambda (_L24375_)
                              (let ()
                                (let* ((_g2438824396_
                                        (lambda (_g2438924392_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2438924392_)))
                                       (_g2438724418_
                                        (lambda (_g2438924400_)
                                          ((lambda (_L24403_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp49820
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp49817
                                                        (let ((__tmp49819
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp49818
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24403_ '()))))
                  (declare (not safe))
                  (cons __tmp49819 __tmp49818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49820
                                                         __tmp49817)))))
                                           _g2438924400_)))
                                       (__tmp49821
                                        (gx#stx-wrap-source
                                         (let ((__tmp49827
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp49822
                                                (let ((__tmp49824
                                                       (let ((__tmp49825
                                                              (let ((__tmp49826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24347_ '()))))
                        (declare (not safe))
                        (cons _L24249_ __tmp49826))))
                 (declare (not safe))
                 (cons __tmp49825 '())))
              (__tmp49823 (let () (declare (not safe)) (cons _L24375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49824
                                                        __tmp49823))))
                                           (declare (not safe))
                                           (cons __tmp49827 __tmp49822))
                                         (gx#stx-source _stx23520_))))
                                  (declare (not safe))
                                  (_g2438724418_ __tmp49821))))
                            _g2436124372_)))
                        (__tmp49828
                         (let ((__tmp49829
                                (let ()
                                  (declare (not safe))
                                  (cons _L24249_ '()))))
                           (declare (not safe))
                           (_generate-clauses23528_ _body24231_ __tmp49829))))
                   (declare (not safe))
                   (_g2435924422_ __tmp49828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2433324344_)))
                                                 (__tmp49830
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp49837
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp49831
                                                          (let ((__tmp49832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49833
                                (let ((__tmp49836
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp49834
                                       (let ((__tmp49835
                                              (foldr (lambda (_g2442924432_
                                                              _g2443024435_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2442924432_
                                                               _g2443024435_)))
                                                     '()
                                                     _L24315_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp49835))))
                                  (declare (not safe))
                                  (cons __tmp49836 __tmp49834))))
                           (declare (not safe))
                           (cons __tmp49833 '()))))
                    (declare (not safe))
                    (cons '() __tmp49832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49837
                                                           __tmp49831))
                                                   (gx#stx-source
                                                    _stx23520_))))
                                            (declare (not safe))
                                            (_g2433124426_ __tmp49830))))
                                      _target2427224311_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2426724291_ _target2426424285_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2426124278_ _g2426224282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2426124278_
                                                    _g2426224282_))))))
                                     (declare (not safe))
                                     (_g2426024438_ _tgt-lst23522_))))
                               _g2423524246_)))
                           (__tmp49839 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2423324442_ __tmp49839))))
                 (_generate-clauses23528_
                  (lambda (_rest23883_ _E23885_)
                    (let* ((___stx4587745878_ _rest23883_)
                           (_g2388923905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4587745878_))))
                      (let ((___kont4588045881_
                             (lambda (_L24139_)
                               (let* ((_g2415024168_
                                       (lambda (_g2415124164_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2415124164_)))
                                      (_g2414924223_
                                       (lambda (_g2415124172_)
                                         (if (gx#stx-pair? _g2415124172_)
                                             (let ((_e2415624175_
                                                    (gx#syntax-e
                                                     _g2415124172_)))
                                               (let ((_hd2415524179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2415624175_)))
                                                     (_tl2415424182_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2415624175_))))
                                                 (if (gx#stx-pair?
                                                      _tl2415424182_)
                                                     (let ((_e2415924185_
                                                            (gx#syntax-e
                                                             _tl2415424182_)))
                                                       (let ((_hd2415824189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2415924185_)))
                     (_tl2415724192_
                      (let () (declare (not safe)) (##cdr _e2415924185_))))
                 (if (gx#stx-pair? _tl2415724192_)
                     (let ((_e2416224195_ (gx#syntax-e _tl2415724192_)))
                       (let ((_hd2416124199_
                              (let ()
                                (declare (not safe))
                                (##car _e2416224195_)))
                             (_tl2416024202_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2416224195_))))
                         (if (gx#stx-null? _tl2416024202_)
                             ((lambda (_L24205_ _L24207_)
                                (let ((__tmp49840
                                       (let ((__tmp49841
                                              (let ((__tmp49842
                                                     (if (gx#stx-e _L24207_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123529_
                                                            _L24207_
                                                            _L24205_
                                                            _E23885_))
                                                         _L24205_)))
                                                (declare (not safe))
                                                (cons __tmp49842 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp49841))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp49840)))
                              _hd2416124199_
                              _hd2415824189_)
                             (let ()
                               (declare (not safe))
                               (_g2415024168_ _g2415124172_)))))
                     (let ()
                       (declare (not safe))
                       (_g2415024168_ _g2415124172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2415024168_
                                                        _g2415124172_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2415024168_
                                                _g2415124172_))))))
                                 (declare (not safe))
                                 (_g2414924223_ _L24139_))))
                            (___kont4588245883_
                             (lambda (_L23933_ _L23935_)
                               (let* ((_g2394823967_
                                       (lambda (_g2394923963_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2394923963_)))
                                      (_g2394724118_
                                       (lambda (_g2394923971_)
                                         (if (gx#stx-pair? _g2394923971_)
                                             (let ((_e2395523974_
                                                    (gx#syntax-e
                                                     _g2394923971_)))
                                               (let ((_hd2395423978_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2395523974_)))
                                                     (_tl2395323981_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2395523974_))))
                                                 (if (gx#stx-pair?
                                                      _tl2395323981_)
                                                     (let ((_e2395823984_
                                                            (gx#syntax-e
                                                             _tl2395323981_)))
                                                       (let ((_hd2395723988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2395823984_)))
                     (_tl2395623991_
                      (let () (declare (not safe)) (##cdr _e2395823984_))))
                 (if (gx#stx-pair? _tl2395623991_)
                     (let ((_e2396123994_ (gx#syntax-e _tl2395623991_)))
                       (let ((_hd2396023998_
                              (let ()
                                (declare (not safe))
                                (##car _e2396123994_)))
                             (_tl2395924001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2396123994_))))
                         (if (gx#stx-null? _tl2395924001_)
                             ((lambda (_L24004_ _L24006_ _L24007_)
                                (if (gx#stx-e _L24006_)
                                    (let* ((_g2402424039_
                                            (lambda (_g2402524035_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2402524035_)))
                                           (_g2402324084_
                                            (lambda (_g2402524043_)
                                              (if (gx#stx-pair? _g2402524043_)
                                                  (let ((_e2403024046_
                                                         (gx#syntax-e
                                                          _g2402524043_)))
                                                    (let ((_hd2402924050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2403024046_)))
                                                          (_tl2402824053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2403024046_))))
                                                      (if (gx#stx-pair?
                                                           _tl2402824053_)
                                                          (let ((_e2403324056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2402824053_)))
                    (let ((_hd2403224060_
                           (let () (declare (not safe)) (##car _e2403324056_)))
                          (_tl2403124063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2403324056_))))
                      (if (gx#stx-null? _tl2403124063_)
                          ((lambda (_L24066_ _L24068_)
                             (let ()
                               (let ((__tmp49869 (gx#datum->syntax '#f 'let))
                                     (__tmp49860
                                      (let ((__tmp49862
                                             (let ((__tmp49863
                                                    (let ((__tmp49864
                                                           (let ((__tmp49865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49868 (gx#datum->syntax '#f 'lambda))
                                (__tmp49866
                                 (let ((__tmp49867
                                        (let ()
                                          (declare (not safe))
                                          (cons _L24068_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp49867))))
                            (declare (not safe))
                            (cons __tmp49868 __tmp49866))))
                     (declare (not safe))
                     (cons __tmp49865 '()))))
              (declare (not safe))
              (cons _L24007_ __tmp49864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49863 '())))
                                            (__tmp49861
                                             (let ()
                                               (declare (not safe))
                                               (cons _L24066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49862 __tmp49861))))
                                 (declare (not safe))
                                 (cons __tmp49869 __tmp49860))))
                           _hd2403224060_
                           _hd2402924050_)
                          (let ()
                            (declare (not safe))
                            (_g2402424039_ _g2402524043_)))))
                  (let ()
                    (declare (not safe))
                    (_g2402424039_ _g2402524043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2402424039_
                                                     _g2402524043_)))))
                                           (__tmp49870
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123529_
                                                     _L24006_
                                                     _L24004_
                                                     _E23885_))
                                                  (let ((__tmp49871
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23528_
                                                     _L23933_
                                                     __tmp49871)))))
                                      (declare (not safe))
                                      (_g2402324084_ __tmp49870))
                                    (let* ((_g2408824096_
                                            (lambda (_g2408924092_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2408924092_)))
                                           (_g2408724114_
                                            (lambda (_g2408924100_)
                                              ((lambda (_L24103_)
                                                 (let ()
                                                   (let ((__tmp49857
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp49843
                                                          (let ((__tmp49845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49846
                                (let ((__tmp49847
                                       (let ((__tmp49848
                                              (let ((__tmp49856
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp49849
                                                     (let ((__tmp49855
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp49850
                                                            (let ((__tmp49851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49854 (gx#datum->syntax '#f 'lambda))
                                 (__tmp49852
                                  (let ((__tmp49853
                                         (let ()
                                           (declare (not safe))
                                           (cons _L24004_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp49853))))
                             (declare (not safe))
                             (cons __tmp49854 __tmp49852))))
                      (declare (not safe))
                      (cons __tmp49851 '()))))
               (declare (not safe))
               (cons __tmp49855 __tmp49850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49856 __tmp49849))))
                                         (declare (not safe))
                                         (cons __tmp49848 '()))))
                                  (declare (not safe))
                                  (cons _L24007_ __tmp49847))))
                           (declare (not safe))
                           (cons __tmp49846 '())))
                        (__tmp49844
                         (let () (declare (not safe)) (cons _L24103_ '()))))
                    (declare (not safe))
                    (cons __tmp49845 __tmp49844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49857
                                                           __tmp49843))))
                                               _g2408924100_)))
                                           (__tmp49858
                                            (let ((__tmp49859
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L24007_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23528_
                                               _L23933_
                                               __tmp49859))))
                                      (declare (not safe))
                                      (_g2408724114_ __tmp49858))))
                              _hd2396023998_
                              _hd2395723988_
                              _hd2395423978_)
                             (let ()
                               (declare (not safe))
                               (_g2394823967_ _g2394923971_)))))
                     (let ()
                       (declare (not safe))
                       (_g2394823967_ _g2394923971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2394823967_
                                                        _g2394923971_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2394823967_
                                                _g2394923971_))))))
                                 (declare (not safe))
                                 (_g2394724118_ _L23935_))))
                            (___kont4588445885_
                             (lambda ()
                               (let ((__tmp49872
                                      (let ((__tmp49873
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23885_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp49873))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp49872)))))
                        (if (gx#stx-pair? ___stx4587745878_)
                            (let ((_e2389424129_
                                   (gx#syntax-e ___stx4587745878_)))
                              (let ((_tl2389224136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2389424129_)))
                                    (_hd2389324133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2389424129_))))
                                (if (gx#stx-null? _tl2389224136_)
                                    (___kont4588045881_ _hd2389324133_)
                                    (___kont4588245883_
                                     _tl2389224136_
                                     _hd2389324133_))))
                            (___kont4588445885_))))))
                 (_generate123529_
                  (lambda (_clause23531_ _body23533_ _E23534_)
                    (let* ((_g2353623560_
                            (lambda (_g2353723556_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2353723556_)))
                           (_g2353523879_
                            (lambda (_g2353723564_)
                              (if (gx#stx-pair? _g2353723564_)
                                  (let ((_e2354223567_
                                         (gx#syntax-e _g2353723564_)))
                                    (let ((_hd2354123571_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2354223567_)))
                                          (_tl2354023574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2354223567_))))
                                      (if (gx#stx-pair? _tl2354023574_)
                                          (let ((_e2354523577_
                                                 (gx#syntax-e _tl2354023574_)))
                                            (let ((_hd2354423581_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2354523577_)))
                                                  (_tl2354323584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2354523577_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2354423581_)
                                                  (let ((_g49874_
                                                         (gx#syntax-split-splice
                                                          _hd2354423581_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49874_)
                           (##vector-length _g49874_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49875_ 2)))
                    (error "Context expects 2 values" _g49875_)))
              (let ((_target2354623587_
                     (let () (declare (not safe)) (##vector-ref _g49874_ 0)))
                    (_tl2354823590_
                     (let () (declare (not safe)) (##vector-ref _g49874_ 1))))
                (if (gx#stx-null? _tl2354823590_)
                    (letrec ((_loop2354923593_
                              (lambda (_hd2354723597_ _var2355323600_)
                                (if (gx#stx-pair? _hd2354723597_)
                                    (let ((_e2355023603_
                                           (gx#syntax-e _hd2354723597_)))
                                      (let ((_lp-hd2355123607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2355023603_)))
                                            (_lp-tl2355223610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2355023603_))))
                                        (let ((__tmp49889
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2355123607_
                                                       _var2355323600_))))
                                          (declare (not safe))
                                          (_loop2354923593_
                                           _lp-tl2355223610_
                                           __tmp49889))))
                                    (let ((_var2355423613_
                                           (reverse _var2355323600_)))
                                      (if (gx#stx-null? _tl2354323584_)
                                          ((lambda (_L23617_ _L23619_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2364023643_
                                                                _g2364123646_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2364023643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2364123646_)))
               '()
               _L23617_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx23520_)
                                               (let* ((_g2364923657_
                                                       (lambda (_g2365023653_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2365023653_)))
                                                      (_g2364823751_
                                                       (lambda (_g2365023661_)
                                                         ((lambda (_L23664_)
                                                            (let ()
                                                              (let* ((_g2367723685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2367823681_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2367823681_)))
                             (_g2367623747_
                              (lambda (_g2367823689_)
                                ((lambda (_L23692_)
                                   (let ()
                                     (let* ((_g2370523713_
                                             (lambda (_g2370623709_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2370623709_)))
                                            (_g2370423735_
                                             (lambda (_g2370623717_)
                                               ((lambda (_L23720_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp49880
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp49876
                                                              (let ((__tmp49878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49879
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23720_ '()))))
                               (declare (not safe))
                               (cons _L23619_ __tmp49879)))
                            (__tmp49877
                             (let ()
                               (declare (not safe))
                               (cons _L23664_ '()))))
                        (declare (not safe))
                        (cons __tmp49878 __tmp49877))))
                 (declare (not safe))
                 (cons __tmp49880 __tmp49876))
               (gx#stx-source _stx23520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2370623717_)))
                                            (__tmp49881
                                             (gx#stx-wrap-source
                                              (let ((__tmp49885
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp49882
                                                     (let ((__tmp49884
                                                            (foldr (lambda (_g2373823741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2373923744_)
                             (let ()
                               (declare (not safe))
                               (cons _g2373823741_ _g2373923744_)))
                           '()
                           _L23617_))
                   (__tmp49883
                    (let () (declare (not safe)) (cons _L23692_ '()))))
               (declare (not safe))
               (cons __tmp49884 __tmp49883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49885 __tmp49882))
                                              (gx#stx-source _stx23520_))))
                                       (declare (not safe))
                                       (_g2370423735_ __tmp49881))))
                                 _g2367823689_))))
                        (declare (not safe))
                        (_g2367623747_ _body23533_))))
                  _g2365023661_)))
              (__tmp49886
               (let _recur23755_ ((_rest23758_ _clause23531_)
                                  (_rest-targets23760_ _tgt-lst23522_))
                 (let* ((___stx4590345904_ _rest23758_)
                        (_g2376323775_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4590345904_))))
                   (let ((___kont4590645907_
                          (lambda (_L23811_ _L23813_)
                            (let* ((_g2382823840_
                                    (lambda (_g2382923836_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2382923836_)))
                                   (_g2382723871_
                                    (lambda (_g2382923844_)
                                      (if (gx#stx-pair? _g2382923844_)
                                          (let ((_e2383423847_
                                                 (gx#syntax-e _g2382923844_)))
                                            (let ((_hd2383323851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2383423847_)))
                                                  (_tl2383223854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2383423847_))))
                                              ((lambda (_L23857_ _L23859_)
                                                 (let ((__tmp49887
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23755_
                                                           _L23811_
                                                           _L23857_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23520_
                                                    _L23859_
                                                    _L23813_
                                                    __tmp49887
                                                    _E23534_)))
                                               _tl2383223854_
                                               _hd2383323851_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2382823840_ _g2382923844_))))))
                              (declare (not safe))
                              (_g2382723871_ _rest-targets23760_))))
                         (___kont4590845909_
                          (lambda ()
                            (let ((__tmp49888
                                   (foldr (lambda (_g2378523788_ _g2378623791_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2378523788_
                                                    _g2378623791_)))
                                          '()
                                          _L23617_)))
                              (declare (not safe))
                              (cons _L23619_ __tmp49888)))))
                     (if (gx#stx-pair? ___stx4590345904_)
                         (let ((_e2376923801_ (gx#syntax-e ___stx4590345904_)))
                           (let ((_tl2376723808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2376923801_)))
                                 (_hd2376823805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2376923801_))))
                             (___kont4590645907_
                              _tl2376723808_
                              _hd2376823805_)))
                         (___kont4590845909_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2364823751_ __tmp49886))))
                                           _var2355423613_
                                           _hd2354123571_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_
                                             _g2353723564_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2354923593_ _target2354623587_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2353623560_ _g2353723564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2353623560_
                                                     _g2353723564_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2353623560_ _g2353723564_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2353623560_ _g2353723564_)))))
                           (__tmp49890
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23531_)))))
                      (declare (not safe))
                      (_g2353523879_ __tmp49890)))))
          (let ((__tmp49891
                 (let ((__tmp49892 (gx#stx-length _tgt-lst23522_)))
                   (declare (not safe))
                   (_parse-body23525_ __tmp49892))))
            (declare (not safe))
            (_generate-body23527_ __tmp49891)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23422_ _tgt23424_ _clauses23425_)
        (letrec ((_reclause23427_
                  (lambda (_clause23430_)
                    (let* ((___stx4591945920_ _clause23430_)
                           (_g2343523450_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4591945920_))))
                      (let ((___kont4592245923_ (lambda () _clause23430_))
                            (___kont4592445925_
                             (lambda (_L23478_ _L23480_)
                               (gx#stx-wrap-source
                                (let ((__tmp49893
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23480_ '()))))
                                  (declare (not safe))
                                  (cons __tmp49893 _L23478_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4592645927_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23422_
                                _clause23430_))))
                        (if (gx#stx-pair? ___stx4591945920_)
                            (let ((_e2343923502_
                                   (gx#syntax-e ___stx4591945920_)))
                              (let ((_tl2343723509_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2343923502_)))
                                    (_hd2343823506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2343923502_))))
                                (if (gx#identifier? _hd2343823506_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g49894_|
                                         _hd2343823506_)
                                        (___kont4592245923_)
                                        (___kont4592445925_
                                         _tl2343723509_
                                         _hd2343823506_))
                                    (___kont4592445925_
                                     _tl2343723509_
                                     _hd2343823506_))))
                            (___kont4592645927_)))))))
          (let ((__tmp49896
                 (let () (declare (not safe)) (cons _tgt23424_ '())))
                (__tmp49895 (gx#stx-map _reclause23427_ _clauses23425_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23422_
             __tmp49896
             __tmp49895)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30653_)
        (let* ((___stx4594745948_ _stx30653_)
               (_g3065830687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4594745948_))))
          (let ((___kont4595045951_
                 (lambda (_L30927_)
                   (let* ((_g3094030948_
                           (lambda (_g3094130944_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3094130944_)))
                          (_g3093931001_
                           (lambda (_g3094130952_)
                             ((lambda (_L30955_)
                                (let ()
                                  (let* ((_g3096730975_
                                          (lambda (_g3096830971_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3096830971_)))
                                         (_g3096630997_
                                          (lambda (_g3096830979_)
                                            ((lambda (_L30982_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp49900
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp49897
                                                          (let ((__tmp49899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30955_ '())))
                        (__tmp49898
                         (let () (declare (not safe)) (cons _L30982_ '()))))
                    (declare (not safe))
                    (cons __tmp49899 __tmp49898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49900
                                                           __tmp49897)))))
                                             _g3096830979_))))
                                    (_g3096630997_
                                     (gx#stx-wrap-source
                                      (let ((__tmp49902
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp49901
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30955_ _L30927_))))
                                        (declare (not safe))
                                        (cons __tmp49902 __tmp49901))
                                      (gx#stx-source _stx30653_))))))
                              _g3094130952_))))
                     (_g3093931001_ (gx#genident 'e)))))
                (___kont4595245953_
                 (lambda (_L30822_)
                   (let* ((_g3083530843_
                           (lambda (_g3083630839_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3083630839_)))
                          (_g3083430896_
                           (lambda (_g3083630847_)
                             ((lambda (_L30850_)
                                (let ()
                                  (let* ((_g3086230870_
                                          (lambda (_g3086330866_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3086330866_)))
                                         (_g3086130892_
                                          (lambda (_g3086330874_)
                                            ((lambda (_L30877_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp49905
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp49903
                                                          (let ((__tmp49904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30877_ '()))))
                    (declare (not safe))
                    (cons _L30850_ __tmp49904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49905
                                                           __tmp49903)))))
                                             _g3086330874_))))
                                    (_g3086130892_
                                     (gx#stx-wrap-source
                                      (let ((__tmp49907
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp49906
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30850_ _L30822_))))
                                        (declare (not safe))
                                        (cons __tmp49907 __tmp49906))
                                      (gx#stx-source _stx30653_))))))
                              _g3083630847_))))
                     (_g3083430896_ (gx#genident 'args)))))
                (___kont4595445955_
                 (lambda (_L30714_ _L30716_)
                   (let* ((_g3073030738_
                           (lambda (_g3073130734_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3073130734_)))
                          (_g3072930791_
                           (lambda (_g3073130742_)
                             ((lambda (_L30745_)
                                (let ()
                                  (let* ((_g3075730765_
                                          (lambda (_g3075830761_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3075830761_)))
                                         (_g3075630787_
                                          (lambda (_g3075830769_)
                                            ((lambda (_L30772_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp49913
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp49908
                                                          (let ((__tmp49910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49911
                                (let ((__tmp49912
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30716_ '()))))
                                  (declare (not safe))
                                  (cons _L30745_ __tmp49912))))
                           (declare (not safe))
                           (cons __tmp49911 '())))
                        (__tmp49909
                         (let () (declare (not safe)) (cons _L30772_ '()))))
                    (declare (not safe))
                    (cons __tmp49910 __tmp49909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49913
                                                           __tmp49908)))))
                                             _g3075830769_))))
                                    (_g3075630787_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30653_
                                        _L30745_
                                        _L30714_))))))
                              _g3073130742_))))
                     (_g3072930791_ (gx#genident _L30716_))))))
            (let* ((___match4600046001_
                    (lambda (_e3067830694_
                             _hd3067730698_
                             _tl3067630701_
                             _e3068130704_
                             _hd3068030708_
                             _tl3067930711_)
                      (let ((_L30714_ _tl3067930711_)
                            (_L30716_ _hd3068030708_))
                        (if (gx#stx-list? _L30714_)
                            (___kont4595445955_ _L30714_ _L30716_)
                            (let () (declare (not safe)) (_g3065830687_))))))
                   (___match4598845989_
                    (lambda (_e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)
                      (let ((_L30822_ _tl3067130819_))
                        (if (gx#stx-list? _L30822_)
                            (___kont4595245953_ _L30822_)
                            (___match4600046001_
                             _e3067030802_
                             _hd3066930806_
                             _tl3066830809_
                             _e3067330812_
                             _hd3067230816_
                             _tl3067130819_)))))
                   (___match4597245973_
                    (lambda (_e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_)
                      (let ((_L30927_ _tl3066430924_))
                        (if (gx#stx-list? _L30927_)
                            (___kont4595045951_ _L30927_)
                            (___match4600046001_
                             _e3066330907_
                             _hd3066230911_
                             _tl3066130914_
                             _e3066630917_
                             _hd3066530921_
                             _tl3066430924_))))))
              (if (gx#stx-pair? ___stx4594745948_)
                  (let ((_e3066330907_ (gx#syntax-e ___stx4594745948_)))
                    (let ((_tl3066130914_
                           (let () (declare (not safe)) (##cdr _e3066330907_)))
                          (_hd3066230911_
                           (let ()
                             (declare (not safe))
                             (##car _e3066330907_))))
                      (if (gx#stx-pair? _tl3066130914_)
                          (let ((_e3066630917_ (gx#syntax-e _tl3066130914_)))
                            (let ((_tl3066430924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3066630917_)))
                                  (_hd3066530921_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3066630917_))))
                              (if (gx#identifier? _hd3066530921_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49915_|
                                       _hd3066530921_)
                                      (___match4597245973_
                                       _e3066330907_
                                       _hd3066230911_
                                       _tl3066130914_
                                       _e3066630917_
                                       _hd3066530921_
                                       _tl3066430924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49914_|
                                           _hd3066530921_)
                                          (___match4598845989_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)
                                          (___match4600046001_
                                           _e3066330907_
                                           _hd3066230911_
                                           _tl3066130914_
                                           _e3066630917_
                                           _hd3066530921_
                                           _tl3066430924_)))
                                  (___match4600046001_
                                   _e3066330907_
                                   _hd3066230911_
                                   _tl3066130914_
                                   _e3066630917_
                                   _hd3066530921_
                                   _tl3066430924_))))
                          (let () (declare (not safe)) (_g3065830687_)))))
                  (let () (declare (not safe)) (_g3065830687_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx31009_)
        (let* ((_g3101231036_
                (lambda (_g3101331032_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3101331032_)))
               (_g3101131248_
                (lambda (_g3101331040_)
                  (if (gx#stx-pair? _g3101331040_)
                      (let ((_e3101831043_ (gx#syntax-e _g3101331040_)))
                        (let ((_hd3101731047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3101831043_)))
                              (_tl3101631050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3101831043_))))
                          (if (gx#stx-pair? _tl3101631050_)
                              (let ((_e3102131053_
                                     (gx#syntax-e _tl3101631050_)))
                                (let ((_hd3102031057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3102131053_)))
                                      (_tl3101931060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3102131053_))))
                                  (if (gx#stx-pair/null? _hd3102031057_)
                                      (let ((_g49916_
                                             (gx#syntax-split-splice
                                              _hd3102031057_
                                              '0)))
                                        (begin
                                          (let ((_g49917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49916_)
                                                       (##vector-length
                                                        _g49916_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49917_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49917_)))
                                          (let ((_target3102231063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g49916_ 0)))
                                                (_tl3102431066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g49916_ 1))))
                                            (if (gx#stx-null? _tl3102431066_)
                                                (letrec ((_loop3102531069_
                                                          (lambda (_hd3102331073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3102931076_)
                    (if (gx#stx-pair? _hd3102331073_)
                        (let ((_e3102631079_ (gx#syntax-e _hd3102331073_)))
                          (let ((_lp-hd3102731083_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3102631079_)))
                                (_lp-tl3102831086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3102631079_))))
                            (_loop3102531069_
                             _lp-tl3102831086_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3102731083_ _e3102931076_)))))
                        (let ((_e3103031089_ (reverse _e3102931076_)))
                          ((lambda (_L31093_ _L31095_)
                             (if (gx#stx-list? _L31093_)
                                 (let* ((_g3111331130_
                                         (lambda (_g3111431126_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3111431126_)))
                                        (_g3111231236_
                                         (lambda (_g3111431134_)
                                           (if (gx#stx-pair/null?
                                                _g3111431134_)
                                               (let ((_g49918_
                                                      (gx#syntax-split-splice
                                                       _g3111431134_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49919_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49918_)
                        (##vector-length _g49918_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49919_ 2)))
                 (error "Context expects 2 values" _g49919_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3111631137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49918_
                                                             0)))
                                                         (_tl3111831140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49918_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3111831140_)
                                                         (letrec ((_loop3111931143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3111731147_ _$e3112331150_)
                             (if (gx#stx-pair? _hd3111731147_)
                                 (let ((_e3112031153_
                                        (gx#syntax-e _hd3111731147_)))
                                   (let ((_lp-hd3112131157_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3112031153_)))
                                         (_lp-tl3112231160_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3112031153_))))
                                     (_loop3111931143_
                                      _lp-tl3112231160_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3112131157_
                                              _$e3112331150_)))))
                                 (let ((_$e3112431163_
                                        (reverse _$e3112331150_)))
                                   ((lambda (_L31167_)
                                      (let ()
                                        (let* ((_g3118331191_
                                                (lambda (_g3118431187_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3118431187_)))
                                               (_g3118231224_
                                                (lambda (_g3118431195_)
                                                  ((lambda (_L31198_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp49925
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp49920
                        (let ((__tmp49922
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L31095_
                                  _L31167_)
                                 (foldr (lambda (_g3121231216_
                                                 _g3121331219_
                                                 _g3121431221_)
                                          (let ((__tmp49923
                                                 (let ((__tmp49924
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3121231216_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3121331219_
                                                         __tmp49924))))
                                            (declare (not safe))
                                            (cons __tmp49923 _g3121431221_)))
                                        '()
                                        _L31095_
                                        _L31167_)))
                              (__tmp49921
                               (let ()
                                 (declare (not safe))
                                 (cons _L31198_ '()))))
                          (declare (not safe))
                          (cons __tmp49922 __tmp49921))))
                   (declare (not safe))
                   (cons __tmp49925 __tmp49920)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3118431195_))))
                                          (_g3118231224_
                                           (let ((__tmp49926
                                                  (foldr (lambda (_g3122731230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3122831233_)
                   (let ()
                     (declare (not safe))
                     (cons _g3122731230_ _g3122831233_)))
                 '()
                 _L31167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx31009_
                                              __tmp49926
                                              _L31093_))))))
                                    _$e3112431163_))))))
                   (_loop3111931143_ _target3111631137_ '()))
                 (_g3111331130_ _g3111431134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3111331130_
                                                _g3111431134_)))))
                                   (_g3111231236_
                                    (gx#gentemps
                                     (foldr (lambda (_g3123931242_
                                                     _g3124031245_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3123931242_
                                                      _g3124031245_)))
                                            '()
                                            _L31095_))))
                                 (_g3101231036_ _g3101331040_)))
                           _tl3101931060_
                           _e3103031089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3102531069_
                                                   _target3102231063_
                                                   '()))
                                                (_g3101231036_
                                                 _g3101331040_)))))
                                      (_g3101231036_ _g3101331040_))))
                              (_g3101231036_ _g3101331040_))))
                      (_g3101231036_ _g3101331040_)))))
          (_g3101131248_ _stx31009_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31254_)
        (let* ((___stx4600346004_ _$stx31254_)
               (_g3126031343_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4600346004_))))
          (let ((___kont4600646007_
                 (lambda (_L31673_)
                   (let ((__tmp49929 (gx#datum->syntax '#f 'let))
                         (__tmp49927
                          (let ((__tmp49928
                                 (foldr (lambda (_g3168931692_ _g3169031695_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3168931692_
                                                  _g3169031695_)))
                                        '()
                                        _L31673_)))
                            (declare (not safe))
                            (cons '() __tmp49928))))
                     (declare (not safe))
                     (cons __tmp49929 __tmp49927))))
                (___kont4601046011_
                 (lambda (_L31581_ _L31583_ _L31584_ _L31585_)
                   (let ((__tmp49930
                          (let ((__tmp49932
                                 (let ((__tmp49933
                                        (let ((__tmp49934
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31583_ '()))))
                                          (declare (not safe))
                                          (cons _L31584_ __tmp49934))))
                                   (declare (not safe))
                                   (cons __tmp49933 '())))
                                (__tmp49931
                                 (foldr (lambda (_g3160731610_ _g3160831613_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3160731610_
                                                  _g3160831613_)))
                                        '()
                                        _L31581_)))
                            (declare (not safe))
                            (cons __tmp49932 __tmp49931))))
                     (declare (not safe))
                     (cons _L31585_ __tmp49930))))
                (___kont4601446015_
                 (lambda (_L31454_ _L31456_ _L31457_)
                   (let ((__tmp49941 (gx#datum->syntax '#f 'match*))
                         (__tmp49935
                          (let ((__tmp49940
                                 (foldr (lambda (_g3148331486_ _g3148431489_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3148331486_
                                                  _g3148431489_)))
                                        '()
                                        _L31456_))
                                (__tmp49936
                                 (let ((__tmp49937
                                        (let ((__tmp49939
                                               (foldr (lambda (_g3148131492_
                                                               _g3148231495_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3148131492_
                                                                _g3148231495_)))
                                                      '()
                                                      _L31457_))
                                              (__tmp49938
                                               (foldr (lambda (_g3147931498_
                                                               _g3148031501_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3147931498_
                                                                _g3148031501_)))
                                                      '()
                                                      _L31454_)))
                                          (declare (not safe))
                                          (cons __tmp49939 __tmp49938))))
                                   (declare (not safe))
                                   (cons __tmp49937 '()))))
                            (declare (not safe))
                            (cons __tmp49940 __tmp49936))))
                     (declare (not safe))
                     (cons __tmp49941 __tmp49935)))))
            (let* ((___match4609646097_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_
                             ___splice4601646017_
                             _target3131231370_
                             _tl3131431373_)
                      (letrec ((_loop3131531376_
                                (lambda (_hd3131331380_
                                         _expr3131931383_
                                         _hd3132031385_)
                                  (if (gx#stx-pair? _hd3131331380_)
                                      (let ((_e3131631388_
                                             (gx#syntax-e _hd3131331380_)))
                                        (let ((_lp-tl3131831395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3131631388_)))
                                              (_lp-hd3131731392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3131631388_))))
                                          (if (gx#stx-pair? _lp-hd3131731392_)
                                              (let ((_e3132531398_
                                                     (gx#syntax-e
                                                      _lp-hd3131731392_)))
                                                (let ((_tl3132331405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3132531398_)))
                                                      (_hd3132431402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3132531398_))))
                                                  (if (gx#stx-pair?
                                                       _tl3132331405_)
                                                      (let ((_e3132831408_
                                                             (gx#syntax-e
                                                              _tl3132331405_)))
                                                        (let ((_tl3132631415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3132831408_)))
                      (_hd3132731412_
                       (let () (declare (not safe)) (##car _e3132831408_))))
                  (if (gx#stx-null? _tl3132631415_)
                      (_loop3131531376_
                       _lp-tl3131831395_
                       (let ()
                         (declare (not safe))
                         (cons _hd3132731412_ _expr3131931383_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3132431402_ _hd3132031385_)))
                      (let () (declare (not safe)) (_g3126031343_)))))
              (let () (declare (not safe)) (_g3126031343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3126031343_)))))
                                      (let ((_hd3132231421_
                                             (reverse _hd3132031385_))
                                            (_expr3132131418_
                                             (reverse _expr3131931383_)))
                                        (if (gx#stx-pair/null? _tl3130931367_)
                                            (let ((___splice4601846019_
                                                   (gx#syntax-split-splice
                                                    _tl3130931367_
                                                    '0)))
                                              (let ((_tl3133131427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4601846019_
                                                        '1)))
                                                    (_target3132931424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4601846019_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3133131427_)
                                                    (letrec ((_loop3133231430_
                                                              (lambda (_hd3133031434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3133631437_)
                        (if (gx#stx-pair? _hd3133031434_)
                            (let ((_e3133331440_ (gx#syntax-e _hd3133031434_)))
                              (let ((_lp-tl3133531447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3133331440_)))
                                    (_lp-hd3133431444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3133331440_))))
                                (_loop3133231430_
                                 _lp-tl3133531447_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3133431444_
                                         _body3133631437_)))))
                            (let ((_body3133731450_
                                   (reverse _body3133631437_)))
                              (___kont4601446015_
                               _body3133731450_
                               _expr3132131418_
                               _hd3132231421_))))))
              (_loop3133231430_ _target3132931424_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3126031343_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3126031343_))))))))
                        (_loop3131531376_ _target3131231370_ '() '()))))
                   (___match4608846089_
                    (lambda (_e3130831350_
                             _hd3130731354_
                             _tl3130631357_
                             _e3131131360_
                             _hd3131031364_
                             _tl3130931367_)
                      (if (gx#stx-pair/null? _hd3131031364_)
                          (let ((___splice4601646017_
                                 (gx#syntax-split-splice _hd3131031364_ '0)))
                            (let ((_tl3131431373_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4601646017_ '1)))
                                  (_target3131231370_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4601646017_ '0))))
                              (if (gx#stx-null? _tl3131431373_)
                                  (___match4609646097_
                                   _e3130831350_
                                   _hd3130731354_
                                   _tl3130631357_
                                   _e3131131360_
                                   _hd3131031364_
                                   _tl3130931367_
                                   ___splice4601646017_
                                   _target3131231370_
                                   _tl3131431373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3126031343_)))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                   (___match4607646077_
                    (lambda (_e3128431511_
                             _hd3128331515_
                             _tl3128231518_
                             _e3128731521_
                             _hd3128631525_
                             _tl3128531528_
                             _e3129031531_
                             _hd3128931535_
                             _tl3128831538_
                             _e3129331541_
                             _hd3129231545_
                             _tl3129131548_
                             ___splice4601246013_
                             _target3129431551_
                             _tl3129631554_)
                      (letrec ((_loop3129731557_
                                (lambda (_hd3129531561_ _body3130131564_)
                                  (if (gx#stx-pair? _hd3129531561_)
                                      (let ((_e3129831567_
                                             (gx#syntax-e _hd3129531561_)))
                                        (let ((_lp-tl3130031574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129831567_)))
                                              (_lp-hd3129931571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129831567_))))
                                          (_loop3129731557_
                                           _lp-tl3130031574_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3129931571_
                                                   _body3130131564_)))))
                                      (let ((_body3130231577_
                                             (reverse _body3130131564_)))
                                        (let ((_L31581_ _body3130231577_)
                                              (_L31583_ _hd3129231545_)
                                              (_L31584_ _hd3128931535_)
                                              (_L31585_ _hd3128331515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31584_))
                                              (___kont4601046011_
                                               _L31581_
                                               _L31583_
                                               _L31584_
                                               _L31585_)
                                              (___match4608846089_
                                               _e3128431511_
                                               _hd3128331515_
                                               _tl3128231518_
                                               _e3128731521_
                                               _hd3128631525_
                                               _tl3128531528_))))))))
                        (_loop3129731557_ _target3129431551_ '()))))
                   (___match4604246043_
                    (lambda (_e3126531623_
                             _hd3126431627_
                             _tl3126331630_
                             _e3126831633_
                             _hd3126731637_
                             _tl3126631640_
                             ___splice4600846009_
                             _target3126931643_
                             _tl3127131646_)
                      (letrec ((_loop3127231649_
                                (lambda (_hd3127031653_ _body3127631656_)
                                  (if (gx#stx-pair? _hd3127031653_)
                                      (let ((_e3127331659_
                                             (gx#syntax-e _hd3127031653_)))
                                        (let ((_lp-tl3127531666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3127331659_)))
                                              (_lp-hd3127431663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3127331659_))))
                                          (_loop3127231649_
                                           _lp-tl3127531666_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3127431663_
                                                   _body3127631656_)))))
                                      (let ((_body3127731669_
                                             (reverse _body3127631656_)))
                                        (___kont4600646007_
                                         _body3127731669_))))))
                        (_loop3127231649_ _target3126931643_ '())))))
              (if (gx#stx-pair? ___stx4600346004_)
                  (let ((_e3126531623_ (gx#syntax-e ___stx4600346004_)))
                    (let ((_tl3126331630_
                           (let () (declare (not safe)) (##cdr _e3126531623_)))
                          (_hd3126431627_
                           (let ()
                             (declare (not safe))
                             (##car _e3126531623_))))
                      (if (gx#stx-pair? _tl3126331630_)
                          (let ((_e3126831633_ (gx#syntax-e _tl3126331630_)))
                            (let ((_tl3126631640_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3126831633_)))
                                  (_hd3126731637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3126831633_))))
                              (if (gx#stx-null? _hd3126731637_)
                                  (if (gx#stx-pair/null? _tl3126631640_)
                                      (let ((___splice4600846009_
                                             (gx#syntax-split-splice
                                              _tl3126631640_
                                              '0)))
                                        (let ((_tl3127131646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4600846009_
                                                  '1)))
                                              (_target3126931643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4600846009_
                                                  '0))))
                                          (if (gx#stx-null? _tl3127131646_)
                                              (___match4604246043_
                                               _e3126531623_
                                               _hd3126431627_
                                               _tl3126331630_
                                               _e3126831633_
                                               _hd3126731637_
                                               _tl3126631640_
                                               ___splice4600846009_
                                               _target3126931643_
                                               _tl3127131646_)
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4601646017_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601646017_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601646017_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4609646097_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4601646017_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4601646017_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601646017_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601646017_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4609646097_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4601646017_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_))))
                                  (if (gx#stx-pair? _hd3126731637_)
                                      (let ((_e3129031531_
                                             (gx#syntax-e _hd3126731637_)))
                                        (let ((_tl3128831538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3129031531_)))
                                              (_hd3128931535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3129031531_))))
                                          (if (gx#stx-pair? _tl3128831538_)
                                              (let ((_e3129331541_
                                                     (gx#syntax-e
                                                      _tl3128831538_)))
                                                (let ((_tl3129131548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3129331541_)))
                                                      (_hd3129231545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3129331541_))))
                                                  (if (gx#stx-null?
                                                       _tl3129131548_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3126631640_)
                                                          (let ((___splice4601246013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3126631640_ '0)))
                    (let ((_tl3129631554_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601246013_ '1)))
                          (_target3129431551_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601246013_ '0))))
                      (if (gx#stx-null? _tl3129631554_)
                          (___match4607646077_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           _e3129031531_
                           _hd3128931535_
                           _tl3128831538_
                           _e3129331541_
                           _hd3129231545_
                           _tl3129131548_
                           ___splice4601246013_
                           _target3129431551_
                           _tl3129631554_)
                          (if (gx#stx-pair/null? _hd3126731637_)
                              (let ((___splice4601646017_
                                     (gx#syntax-split-splice
                                      _hd3126731637_
                                      '0)))
                                (let ((_tl3131431373_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4601646017_
                                          '1)))
                                      (_target3131231370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4601646017_
                                          '0))))
                                  (if (gx#stx-null? _tl3131431373_)
                                      (___match4609646097_
                                       _e3126531623_
                                       _hd3126431627_
                                       _tl3126331630_
                                       _e3126831633_
                                       _hd3126731637_
                                       _tl3126631640_
                                       ___splice4601646017_
                                       _target3131231370_
                                       _tl3131431373_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3126031343_)))))
                              (let () (declare (not safe)) (_g3126031343_))))))
                  (if (gx#stx-pair/null? _hd3126731637_)
                      (let ((___splice4601646017_
                             (gx#syntax-split-splice _hd3126731637_ '0)))
                        (let ((_tl3131431373_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4601646017_ '1)))
                              (_target3131231370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4601646017_ '0))))
                          (if (gx#stx-null? _tl3131431373_)
                              (___match4609646097_
                               _e3126531623_
                               _hd3126431627_
                               _tl3126331630_
                               _e3126831633_
                               _hd3126731637_
                               _tl3126631640_
                               ___splice4601646017_
                               _target3131231370_
                               _tl3131431373_)
                              (let () (declare (not safe)) (_g3126031343_)))))
                      (let () (declare (not safe)) (_g3126031343_))))
              (if (gx#stx-pair/null? _hd3126731637_)
                  (let ((___splice4601646017_
                         (gx#syntax-split-splice _hd3126731637_ '0)))
                    (let ((_tl3131431373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601646017_ '1)))
                          (_target3131231370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4601646017_ '0))))
                      (if (gx#stx-null? _tl3131431373_)
                          (___match4609646097_
                           _e3126531623_
                           _hd3126431627_
                           _tl3126331630_
                           _e3126831633_
                           _hd3126731637_
                           _tl3126631640_
                           ___splice4601646017_
                           _target3131231370_
                           _tl3131431373_)
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3126731637_)
                                                  (let ((___splice4601646017_
                                                         (gx#syntax-split-splice
                                                          _hd3126731637_
                                                          '0)))
                                                    (let ((_tl3131431373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601646017_
                                                              '1)))
                                                          (_target3131231370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4601646017_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3131431373_)
                                                          (___match4609646097_
                                                           _e3126531623_
                                                           _hd3126431627_
                                                           _tl3126331630_
                                                           _e3126831633_
                                                           _hd3126731637_
                                                           _tl3126631640_
                                                           ___splice4601646017_
                                                           _target3131231370_
                                                           _tl3131431373_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3126031343_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_))))))
                                      (if (gx#stx-pair/null? _hd3126731637_)
                                          (let ((___splice4601646017_
                                                 (gx#syntax-split-splice
                                                  _hd3126731637_
                                                  '0)))
                                            (let ((_tl3131431373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601646017_
                                                      '1)))
                                                  (_target3131231370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4601646017_
                                                      '0))))
                                              (if (gx#stx-null? _tl3131431373_)
                                                  (___match4609646097_
                                                   _e3126531623_
                                                   _hd3126431627_
                                                   _tl3126331630_
                                                   _e3126831633_
                                                   _hd3126731637_
                                                   _tl3126631640_
                                                   ___splice4601646017_
                                                   _target3131231370_
                                                   _tl3131431373_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3126031343_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3126031343_)))))))
                          (let () (declare (not safe)) (_g3126031343_)))))
                  (let () (declare (not safe)) (_g3126031343_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31706_)
        (let* ((___stx4609946100_ _$stx31706_)
               (_g3171131763_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4609946100_))))
          (let ((___kont4610246103_
                 (lambda (_L31933_ _L31935_ _L31936_ _L31937_ _L31938_)
                   (let ((__tmp49950 (gx#datum->syntax '#f 'with))
                         (__tmp49942
                          (let ((__tmp49947
                                 (let ((__tmp49948
                                        (let ((__tmp49949
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31936_ '()))))
                                          (declare (not safe))
                                          (cons _L31937_ __tmp49949))))
                                   (declare (not safe))
                                   (cons __tmp49948 '())))
                                (__tmp49943
                                 (let ((__tmp49944
                                        (let ((__tmp49945
                                               (let ((__tmp49946
                                                      (foldr (lambda (_g3196331966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3196431969_)
                       (let ()
                         (declare (not safe))
                         (cons _g3196331966_ _g3196431969_)))
                     '()
                     _L31933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31935_ __tmp49946))))
                                          (declare (not safe))
                                          (cons _L31938_ __tmp49945))))
                                   (declare (not safe))
                                   (cons __tmp49944 '()))))
                            (declare (not safe))
                            (cons __tmp49947 __tmp49943))))
                     (declare (not safe))
                     (cons __tmp49950 __tmp49942))))
                (___kont4610646107_
                 (lambda (_L31820_)
                   (let ((__tmp49953 (gx#datum->syntax '#f 'let))
                         (__tmp49951
                          (let ((__tmp49952
                                 (foldr (lambda (_g3183731840_ _g3183831843_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3183731840_
                                                  _g3183831843_)))
                                        '()
                                        _L31820_)))
                            (declare (not safe))
                            (cons '() __tmp49952))))
                     (declare (not safe))
                     (cons __tmp49953 __tmp49951)))))
            (let* ((___match4617246173_
                    (lambda (_e3174531770_
                             _hd3174431774_
                             _tl3174331777_
                             _e3174831780_
                             _hd3174731784_
                             _tl3174631787_
                             ___splice4610846109_
                             _target3174931790_
                             _tl3175131793_)
                      (letrec ((_loop3175231796_
                                (lambda (_hd3175031800_ _body3175631803_)
                                  (if (gx#stx-pair? _hd3175031800_)
                                      (let ((_e3175331806_
                                             (gx#syntax-e _hd3175031800_)))
                                        (let ((_lp-tl3175531813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3175331806_)))
                                              (_lp-hd3175431810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3175331806_))))
                                          (_loop3175231796_
                                           _lp-tl3175531813_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3175431810_
                                                   _body3175631803_)))))
                                      (let ((_body3175731816_
                                             (reverse _body3175631803_)))
                                        (___kont4610646107_
                                         _body3175731816_))))))
                        (_loop3175231796_ _target3174931790_ '()))))
                   (___match4615046151_
                    (lambda (_e3172031853_
                             _hd3171931857_
                             _tl3171831860_
                             _e3172331863_
                             _hd3172231867_
                             _tl3172131870_
                             _e3172631873_
                             _hd3172531877_
                             _tl3172431880_
                             _e3172931883_
                             _hd3172831887_
                             _tl3172731890_
                             _e3173231893_
                             _hd3173131897_
                             _tl3173031900_
                             ___splice4610446105_
                             _target3173331903_
                             _tl3173531906_)
                      (letrec ((_loop3173631909_
                                (lambda (_hd3173431913_ _body3174031916_)
                                  (if (gx#stx-pair? _hd3173431913_)
                                      (let ((_e3173731919_
                                             (gx#syntax-e _hd3173431913_)))
                                        (let ((_lp-tl3173931926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173731919_)))
                                              (_lp-hd3173831923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173731919_))))
                                          (_loop3173631909_
                                           _lp-tl3173931926_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3173831923_
                                                   _body3174031916_)))))
                                      (let ((_body3174131929_
                                             (reverse _body3174031916_)))
                                        (___kont4610246103_
                                         _body3174131929_
                                         _tl3172431880_
                                         _hd3173131897_
                                         _hd3172831887_
                                         _hd3171931857_))))))
                        (_loop3173631909_ _target3173331903_ '())))))
              (if (gx#stx-pair? ___stx4609946100_)
                  (let ((_e3172031853_ (gx#syntax-e ___stx4609946100_)))
                    (let ((_tl3171831860_
                           (let () (declare (not safe)) (##cdr _e3172031853_)))
                          (_hd3171931857_
                           (let ()
                             (declare (not safe))
                             (##car _e3172031853_))))
                      (if (gx#stx-pair? _tl3171831860_)
                          (let ((_e3172331863_ (gx#syntax-e _tl3171831860_)))
                            (let ((_tl3172131870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3172331863_)))
                                  (_hd3172231867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3172331863_))))
                              (if (gx#stx-pair? _hd3172231867_)
                                  (let ((_e3172631873_
                                         (gx#syntax-e _hd3172231867_)))
                                    (let ((_tl3172431880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3172631873_)))
                                          (_hd3172531877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3172631873_))))
                                      (if (gx#stx-pair? _hd3172531877_)
                                          (let ((_e3172931883_
                                                 (gx#syntax-e _hd3172531877_)))
                                            (let ((_tl3172731890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3172931883_)))
                                                  (_hd3172831887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3172931883_))))
                                              (if (gx#stx-pair? _tl3172731890_)
                                                  (let ((_e3173231893_
                                                         (gx#syntax-e
                                                          _tl3172731890_)))
                                                    (let ((_tl3173031900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173231893_)))
                                                          (_hd3173131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173231893_))))
                                                      (if (gx#stx-null?
                                                           _tl3173031900_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3172131870_)
                                                              (let ((___splice4610446105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3172131870_ '0)))
                        (let ((_tl3173531906_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4610446105_ '1)))
                              (_target3173331903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4610446105_ '0))))
                          (if (gx#stx-null? _tl3173531906_)
                              (___match4615046151_
                               _e3172031853_
                               _hd3171931857_
                               _tl3171831860_
                               _e3172331863_
                               _hd3172231867_
                               _tl3172131870_
                               _e3172631873_
                               _hd3172531877_
                               _tl3172431880_
                               _e3172931883_
                               _hd3172831887_
                               _tl3172731890_
                               _e3173231893_
                               _hd3173131897_
                               _tl3173031900_
                               ___splice4610446105_
                               _target3173331903_
                               _tl3173531906_)
                              (let () (declare (not safe)) (_g3171131763_)))))
                      (let () (declare (not safe)) (_g3171131763_)))
                  (let () (declare (not safe)) (_g3171131763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))))
                                  (if (gx#stx-null? _hd3172231867_)
                                      (if (gx#stx-pair/null? _tl3172131870_)
                                          (let ((___splice4610846109_
                                                 (gx#syntax-split-splice
                                                  _tl3172131870_
                                                  '0)))
                                            (let ((_tl3175131793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4610846109_
                                                      '1)))
                                                  (_target3174931790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4610846109_
                                                      '0))))
                                              (if (gx#stx-null? _tl3175131793_)
                                                  (___match4617246173_
                                                   _e3172031853_
                                                   _hd3171931857_
                                                   _tl3171831860_
                                                   _e3172331863_
                                                   _hd3172231867_
                                                   _tl3172131870_
                                                   ___splice4610846109_
                                                   _target3174931790_
                                                   _tl3175131793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3171131763_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3171131763_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3171131763_))))))
                          (let () (declare (not safe)) (_g3171131763_)))))
                  (let () (declare (not safe)) (_g3171131763_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31978_)
        (let* ((___stx4617546176_ _$stx31978_)
               (_g3198932135_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4617546176_))))
          (let ((___kont4617846179_
                 (lambda (_L32739_ _L32741_ _L32742_)
                   (let ((__tmp49958 (gx#datum->syntax '#f 'and))
                         (__tmp49954
                          (foldr (lambda (_g3276332766_ _g3276432769_)
                                   (let ((__tmp49955
                                          (let ((__tmp49956
                                                 (let ((__tmp49957
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32739_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3276332766_
                                                         __tmp49957))))
                                            (declare (not safe))
                                            (cons _L32742_ __tmp49956))))
                                     (declare (not safe))
                                     (cons __tmp49955 _g3276432769_)))
                                 '()
                                 _L32741_)))
                     (declare (not safe))
                     (cons __tmp49958 __tmp49954))))
                (___kont4618246183_
                 (lambda (_L32629_ _L32631_ _L32632_)
                   (let ((__tmp49963 (gx#datum->syntax '#f 'or))
                         (__tmp49959
                          (foldr (lambda (_g3265332656_ _g3265432659_)
                                   (let ((__tmp49960
                                          (let ((__tmp49961
                                                 (let ((__tmp49962
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3265332656_
                                                         __tmp49962))))
                                            (declare (not safe))
                                            (cons _L32632_ __tmp49961))))
                                     (declare (not safe))
                                     (cons __tmp49960 _g3265432659_)))
                                 '()
                                 _L32631_)))
                     (declare (not safe))
                     (cons __tmp49963 __tmp49959))))
                (___kont4618646187_
                 (lambda (_L32529_ _L32531_ _L32532_)
                   (let ((__tmp49968 (gx#datum->syntax '#f 'not))
                         (__tmp49964
                          (let ((__tmp49965
                                 (let ((__tmp49966
                                        (let ((__tmp49967
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32529_ '()))))
                                          (declare (not safe))
                                          (cons _L32531_ __tmp49967))))
                                   (declare (not safe))
                                   (cons _L32532_ __tmp49966))))
                            (declare (not safe))
                            (cons __tmp49965 '()))))
                     (declare (not safe))
                     (cons __tmp49968 __tmp49964))))
                (___kont4618846189_
                 (lambda (_L32455_ _L32457_)
                   (let ((__tmp49969
                          (let () (declare (not safe)) (cons _L32455_ '()))))
                     (declare (not safe))
                     (cons _L32457_ __tmp49969))))
                (___kont4619046191_
                 (lambda (_L32403_ _L32405_)
                   (let ((__tmp49978 (gx#datum->syntax '#f 'lambda))
                         (__tmp49970
                          (let ((__tmp49976
                                 (let ((__tmp49977
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp49977 '())))
                                (__tmp49971
                                 (let ((__tmp49972
                                        (let ((__tmp49973
                                               (let ((__tmp49974
                                                      (let ((__tmp49975
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp49975
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32403_ __tmp49974))))
                                          (declare (not safe))
                                          (cons _L32405_ __tmp49973))))
                                   (declare (not safe))
                                   (cons __tmp49972 '()))))
                            (declare (not safe))
                            (cons __tmp49976 __tmp49971))))
                     (declare (not safe))
                     (cons __tmp49978 __tmp49970))))
                (___kont4619246193_
                 (lambda (_L32355_ _L32357_ _L32358_)
                   (let ((__tmp49997 (gx#datum->syntax '#f 'lambda))
                         (__tmp49979
                          (let ((__tmp49995
                                 (let ((__tmp49996
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp49996 '())))
                                (__tmp49980
                                 (let ((__tmp49981
                                        (let ((__tmp49994
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp49982
                                               (let ((__tmp49987
                                                      (let ((__tmp49993
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp49988
                                                             (let ((__tmp49989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49990
                                   (let ((__tmp49991
                                          (let ((__tmp49992
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp49992 '()))))
                                     (declare (not safe))
                                     (cons _L32357_ __tmp49991))))
                              (declare (not safe))
                              (cons _L32358_ __tmp49990))))
                       (declare (not safe))
                       (cons __tmp49989 '()))))
                (declare (not safe))
                (cons __tmp49993 __tmp49988)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49983
                                                      (let ((__tmp49984
                                                             (let ((__tmp49985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49986 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp49986 '()))))
                       (declare (not safe))
                       (cons _L32355_ __tmp49985))))
                (declare (not safe))
                (cons __tmp49984 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49987
                                                       __tmp49983))))
                                          (declare (not safe))
                                          (cons __tmp49994 __tmp49982))))
                                   (declare (not safe))
                                   (cons __tmp49981 '()))))
                            (declare (not safe))
                            (cons __tmp49995 __tmp49980))))
                     (declare (not safe))
                     (cons __tmp49997 __tmp49979))))
                (___kont4619446195_
                 (lambda (_L32286_ _L32288_ _L32289_)
                   (let ((__tmp50013 (gx#datum->syntax '#f 'lambda))
                         (__tmp49998
                          (let ((__tmp50011
                                 (let ((__tmp50012
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50012 '())))
                                (__tmp49999
                                 (let ((__tmp50000
                                        (let ((__tmp50010
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50001
                                               (let ((__tmp50006
                                                      (let ((__tmp50007
                                                             (let ((__tmp50008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50009 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50009 '()))))
                       (declare (not safe))
                       (cons _L32288_ __tmp50008))))
                (declare (not safe))
                (cons _L32289_ __tmp50007)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50002
                                                      (let ((__tmp50003
                                                             (let ((__tmp50004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50005 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50005 '()))))
                       (declare (not safe))
                       (cons _L32286_ __tmp50004))))
                (declare (not safe))
                (cons __tmp50003 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50006
                                                       __tmp50002))))
                                          (declare (not safe))
                                          (cons __tmp50010 __tmp50001))))
                                   (declare (not safe))
                                   (cons __tmp50000 '()))))
                            (declare (not safe))
                            (cons __tmp50011 __tmp49999))))
                     (declare (not safe))
                     (cons __tmp50013 __tmp49998))))
                (___kont4619646197_
                 (lambda (_L32206_ _L32208_ _L32209_ _L32210_)
                   (let ((__tmp50031 (gx#datum->syntax '#f 'lambda))
                         (__tmp50014
                          (let ((__tmp50029
                                 (let ((__tmp50030
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50030 '())))
                                (__tmp50015
                                 (let ((__tmp50016
                                        (let ((__tmp50028
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50017
                                               (let ((__tmp50024
                                                      (let ((__tmp50025
                                                             (let ((__tmp50026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50027 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50027 '()))))
                       (declare (not safe))
                       (cons _L32209_ __tmp50026))))
                (declare (not safe))
                (cons _L32210_ __tmp50025)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50018
                                                      (let ((__tmp50019
                                                             (let ((__tmp50020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50021
                                   (let ((__tmp50022
                                          (let ((__tmp50023
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50023 '()))))
                                     (declare (not safe))
                                     (cons _L32208_ __tmp50022))))
                              (declare (not safe))
                              (cons __tmp50021 '()))))
                       (declare (not safe))
                       (cons _L32206_ __tmp50020))))
                (declare (not safe))
                (cons __tmp50019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50024
                                                       __tmp50018))))
                                          (declare (not safe))
                                          (cons __tmp50028 __tmp50017))))
                                   (declare (not safe))
                                   (cons __tmp50016 '()))))
                            (declare (not safe))
                            (cons __tmp50029 __tmp50015))))
                     (declare (not safe))
                     (cons __tmp50031 __tmp50014)))))
            (let* ((___match4634846349_
                    (lambda (_e3208132315_
                             _hd3208032319_
                             _tl3207932322_
                             _e3208432325_
                             _hd3208332329_
                             _tl3208232332_
                             _e3208732335_
                             _hd3208632339_
                             _tl3208532342_)
                      (if (gx#identifier? _hd3208632339_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50033_|
                               _hd3208632339_)
                              (if (gx#stx-pair? _tl3208532342_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3208532342_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4619246193_
                                           _hd3208932349_
                                           _hd3208332329_
                                           _hd3208032319_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3208632339_)
                              (let ((_e3210332272_ (gx#stx-e _hd3208632339_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3208532342_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3208532342_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4619446195_
                                                 _hd3210532280_
                                                 _hd3208332329_
                                                 _hd3208032319_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50032_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4619646197_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3208332329_
                                     _hd3208032319_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4632846329_
                    (lambda (_e3207232383_
                             _hd3207132387_
                             _tl3207032390_
                             _e3207532393_
                             _hd3207432397_
                             _tl3207332400_)
                      (if (gx#stx-null? _tl3207332400_)
                          (___kont4619046191_ _hd3207432397_ _hd3207132387_)
                          (if (gx#stx-pair? _tl3207332400_)
                              (let ((_e3208732335_
                                     (gx#syntax-e _tl3207332400_)))
                                (let ((_tl3208532342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3208732335_)))
                                      (_hd3208632339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3208732335_))))
                                  (if (gx#identifier? _hd3208632339_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50033_|
                                           _hd3208632339_)
                                          (if (gx#stx-pair? _tl3208532342_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3208532342_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4619246193_
                                                       _hd3208932349_
                                                       _hd3207432397_
                                                       _hd3207132387_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3208632339_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3208632339_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3208532342_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3208532342_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4619446195_
                     _hd3210532280_
                     _hd3207432397_
                     _hd3207132387_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50032_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4619646197_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3207432397_
                                                 _hd3207132387_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_))))))
                              (let () (declare (not safe)) (_g3198932135_))))))
                   (___match4625846259_
                    (lambda (_e3202032559_
                             _hd3201932563_
                             _tl3201832566_
                             _e3202332569_
                             _hd3202232573_
                             _tl3202132576_
                             _e3202632579_
                             _hd3202532583_
                             _tl3202432586_
                             ___splice4618446185_
                             _target3202732589_
                             _tl3202932592_)
                      (letrec ((_loop3203032595_
                                (lambda (_hd3202832599_ _pred3203432602_)
                                  (if (gx#stx-pair? _hd3202832599_)
                                      (let ((_e3203132605_
                                             (gx#syntax-e _hd3202832599_)))
                                        (let ((_lp-tl3203332612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3203132605_)))
                                              (_lp-hd3203232609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3203132605_))))
                                          (_loop3203032595_
                                           _lp-tl3203332612_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3203232609_
                                                   _pred3203432602_)))))
                                      (let ((_pred3203532615_
                                             (reverse _pred3203432602_)))
                                        (if (gx#stx-pair? _tl3202132576_)
                                            (let ((_e3203832619_
                                                   (gx#syntax-e
                                                    _tl3202132576_)))
                                              (let ((_tl3203632626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3203832619_)))
                                                    (_hd3203732623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3203832619_))))
                                                (if (gx#stx-null?
                                                     _tl3203632626_)
                                                    (___kont4618246183_
                                                     _hd3203732623_
                                                     _pred3203532615_
                                                     _hd3201932563_)
                                                    (___match4634846349_
                                                     _e3202032559_
                                                     _hd3201932563_
                                                     _tl3201832566_
                                                     _e3202332569_
                                                     _hd3202232573_
                                                     _tl3202132576_
                                                     _e3203832619_
                                                     _hd3203732623_
                                                     _tl3203632626_))))
                                            (___match4632846329_
                                             _e3202032559_
                                             _hd3201932563_
                                             _tl3201832566_
                                             _e3202332569_
                                             _hd3202232573_
                                             _tl3202132576_)))))))
                        (_loop3203032595_ _target3202732589_ '()))))
                   (___match4622846229_
                    (lambda (_e3199632669_
                             _hd3199532673_
                             _tl3199432676_
                             _e3199932679_
                             _hd3199832683_
                             _tl3199732686_
                             _e3200232689_
                             _hd3200132693_
                             _tl3200032696_
                             ___splice4618046181_
                             _target3200332699_
                             _tl3200532702_)
                      (letrec ((_loop3200632705_
                                (lambda (_hd3200432709_ _pred3201032712_)
                                  (if (gx#stx-pair? _hd3200432709_)
                                      (let ((_e3200732715_
                                             (gx#syntax-e _hd3200432709_)))
                                        (let ((_lp-tl3200932722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3200732715_)))
                                              (_lp-hd3200832719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3200732715_))))
                                          (_loop3200632705_
                                           _lp-tl3200932722_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3200832719_
                                                   _pred3201032712_)))))
                                      (let ((_pred3201132725_
                                             (reverse _pred3201032712_)))
                                        (if (gx#stx-pair? _tl3199732686_)
                                            (let ((_e3201432729_
                                                   (gx#syntax-e
                                                    _tl3199732686_)))
                                              (let ((_tl3201232736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3201432729_)))
                                                    (_hd3201332733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3201432729_))))
                                                (if (gx#stx-null?
                                                     _tl3201232736_)
                                                    (___kont4617846179_
                                                     _hd3201332733_
                                                     _pred3201132725_
                                                     _hd3199532673_)
                                                    (___match4634846349_
                                                     _e3199632669_
                                                     _hd3199532673_
                                                     _tl3199432676_
                                                     _e3199932679_
                                                     _hd3199832683_
                                                     _tl3199732686_
                                                     _e3201432729_
                                                     _hd3201332733_
                                                     _tl3201232736_))))
                                            (___match4632846329_
                                             _e3199632669_
                                             _hd3199532673_
                                             _tl3199432676_
                                             _e3199932679_
                                             _hd3199832683_
                                             _tl3199732686_)))))))
                        (_loop3200632705_ _target3200332699_ '())))))
              (if (gx#stx-pair? ___stx4617546176_)
                  (let ((_e3199632669_ (gx#syntax-e ___stx4617546176_)))
                    (let ((_tl3199432676_
                           (let () (declare (not safe)) (##cdr _e3199632669_)))
                          (_hd3199532673_
                           (let ()
                             (declare (not safe))
                             (##car _e3199632669_))))
                      (if (gx#stx-pair? _tl3199432676_)
                          (let ((_e3199932679_ (gx#syntax-e _tl3199432676_)))
                            (let ((_tl3199732686_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3199932679_)))
                                  (_hd3199832683_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3199932679_))))
                              (if (gx#stx-pair? _hd3199832683_)
                                  (let ((_e3200232689_
                                         (gx#syntax-e _hd3199832683_)))
                                    (let ((_tl3200032696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3200232689_)))
                                          (_hd3200132693_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3200232689_))))
                                      (if (gx#identifier? _hd3200132693_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50036_|
                                               _hd3200132693_)
                                              (if (gx#stx-pair/null?
                                                   _tl3200032696_)
                                                  (let ((___splice4618046181_
                                                         (gx#syntax-split-splice
                                                          _tl3200032696_
                                                          '0)))
                                                    (let ((_tl3200532702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4618046181_
                                                              '1)))
                                                          (_target3200332699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4618046181_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3200532702_)
                                                          (___match4622846229_
                                                           _e3199632669_
                                                           _hd3199532673_
                                                           _tl3199432676_
                                                           _e3199932679_
                                                           _hd3199832683_
                                                           _tl3199732686_
                                                           _e3200232689_
                                                           _hd3200132693_
                                                           _tl3200032696_
                                                           ___splice4618046181_
                                                           _target3200332699_
                                                           _tl3200532702_)
                                                          (if (gx#stx-pair?
                                                               _tl3199732686_)
                                                              (let ((_e3206732445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4618846189_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50033_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4619246193_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4619446195_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50032_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4619646197_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4619046191_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3199732686_)
                                                      (let ((_e3206732445_
                                                             (gx#syntax-e
                                                              _tl3199732686_)))
                                                        (let ((_tl3206532452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3206732445_)))
                      (_hd3206632449_
                       (let () (declare (not safe)) (##car _e3206732445_))))
                  (if (gx#stx-null? _tl3206532452_)
                      (___kont4618846189_ _hd3206632449_ _hd3199832683_)
                      (if (gx#identifier? _hd3206632449_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50033_|
                               _hd3206632449_)
                              (if (gx#stx-pair? _tl3206532452_)
                                  (let ((_e3209032345_
                                         (gx#syntax-e _tl3206532452_)))
                                    (let ((_tl3208832352_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3209032345_)))
                                          (_hd3208932349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3209032345_))))
                                      (if (gx#stx-null? _tl3208832352_)
                                          (___kont4619246193_
                                           _hd3208932349_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (let () (declare (not safe)) (_g3198932135_)))
                          (if (gx#stx-datum? _hd3206632449_)
                              (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3210332272_ '::))
                                    (if (gx#stx-pair? _tl3206532452_)
                                        (let ((_e3210632276_
                                               (gx#syntax-e _tl3206532452_)))
                                          (let ((_tl3210432283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3210632276_)))
                                                (_hd3210532280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3210632276_))))
                                            (if (gx#stx-null? _tl3210432283_)
                                                (___kont4619446195_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (if (gx#stx-pair?
                                                     _tl3210432283_)
                                                    (let ((_e3212632186_
                                                           (gx#syntax-e
                                                            _tl3210432283_)))
                                                      (let ((_tl3212432193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212632186_)))
                    (_hd3212532190_
                     (let () (declare (not safe)) (##car _e3212632186_))))
                (if (gx#identifier? _hd3212532190_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50032_|
                         _hd3212532190_)
                        (if (gx#stx-pair? _tl3212432193_)
                            (let ((_e3212932196_ (gx#syntax-e _tl3212432193_)))
                              (let ((_tl3212732203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212932196_)))
                                    (_hd3212832200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212932196_))))
                                (if (gx#stx-null? _tl3212732203_)
                                    (___kont4619646197_
                                     _hd3212832200_
                                     _hd3210532280_
                                     _hd3199832683_
                                     _hd3199532673_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-null? _tl3199732686_)
                  (___kont4619046191_ _hd3199832683_ _hd3199532673_)
                  (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50035_|
                                                   _hd3200132693_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3200032696_)
                                                      (let ((___splice4618446185_
                                                             (gx#syntax-split-splice
                                                              _tl3200032696_
                                                              '0)))
                                                        (let ((_tl3202932592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4618446185_ '1)))
                      (_target3202732589_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4618446185_ '0))))
                  (if (gx#stx-null? _tl3202932592_)
                      (___match4625846259_
                       _e3199632669_
                       _hd3199532673_
                       _tl3199432676_
                       _e3199932679_
                       _hd3199832683_
                       _tl3199732686_
                       _e3200232689_
                       _hd3200132693_
                       _tl3200032696_
                       ___splice4618446185_
                       _target3202732589_
                       _tl3202932592_)
                      (if (gx#stx-pair? _tl3199732686_)
                          (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                            (let ((_tl3206532452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3206732445_)))
                                  (_hd3206632449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3206732445_))))
                              (if (gx#stx-null? _tl3206532452_)
                                  (___kont4618846189_
                                   _hd3206632449_
                                   _hd3199832683_)
                                  (if (gx#identifier? _hd3206632449_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50033_|
                                           _hd3206632449_)
                                          (if (gx#stx-pair? _tl3206532452_)
                                              (let ((_e3209032345_
                                                     (gx#syntax-e
                                                      _tl3206532452_)))
                                                (let ((_tl3208832352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3209032345_)))
                                                      (_hd3208932349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3209032345_))))
                                                  (if (gx#stx-null?
                                                       _tl3208832352_)
                                                      (___kont4619246193_
                                                       _hd3208932349_
                                                       _hd3199832683_
                                                       _hd3199532673_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3198932135_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (if (gx#stx-datum? _hd3206632449_)
                                          (let ((_e3210332272_
                                                 (gx#stx-e _hd3206632449_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3210332272_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3206532452_)
                                                    (let ((_e3210632276_
                                                           (gx#syntax-e
                                                            _tl3206532452_)))
                                                      (let ((_tl3210432283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3210632276_)))
                    (_hd3210532280_
                     (let () (declare (not safe)) (##car _e3210632276_))))
                (if (gx#stx-null? _tl3210432283_)
                    (___kont4619446195_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (if (gx#stx-pair? _tl3210432283_)
                        (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                          (let ((_tl3212432193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3212632186_)))
                                (_hd3212532190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3212632186_))))
                            (if (gx#identifier? _hd3212532190_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50032_|
                                     _hd3212532190_)
                                    (if (gx#stx-pair? _tl3212432193_)
                                        (let ((_e3212932196_
                                               (gx#syntax-e _tl3212432193_)))
                                          (let ((_tl3212732203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3212932196_)))
                                                (_hd3212832200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3212932196_))))
                                            (if (gx#stx-null? _tl3212732203_)
                                                (___kont4619646197_
                                                 _hd3212832200_
                                                 _hd3210532280_
                                                 _hd3199832683_
                                                 _hd3199532673_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3198932135_)))))
                        (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (if (gx#stx-null? _tl3199732686_)
                              (___kont4619046191_
                               _hd3199832683_
                               _hd3199532673_)
                              (let ()
                                (declare (not safe))
                                (_g3198932135_)))))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4618846189_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50033_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4619246193_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4619446195_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50032_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4619646197_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4619046191_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50034_|
                                                       _hd3200132693_)
                                                      (if (gx#stx-pair?
                                                           _tl3200032696_)
                                                          (let ((_e3205332509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3200032696_)))
                    (let ((_tl3205132516_
                           (let () (declare (not safe)) (##cdr _e3205332509_)))
                          (_hd3205232513_
                           (let ()
                             (declare (not safe))
                             (##car _e3205332509_))))
                      (if (gx#stx-null? _tl3205132516_)
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3205632519_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3205432526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3205632519_)))
                                      (_hd3205532523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3205632519_))))
                                  (if (gx#stx-null? _tl3205432526_)
                                      (___kont4618646187_
                                       _hd3205532523_
                                       _hd3205232513_
                                       _hd3199532673_)
                                      (if (gx#identifier? _hd3205532523_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50033_|
                                               _hd3205532523_)
                                              (if (gx#stx-pair? _tl3205432526_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3205432526_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4619246193_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3205532523_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3205532523_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3205432526_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3205432526_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4619446195_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50032_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4619646197_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4619046191_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_))))
                          (if (gx#stx-pair? _tl3199732686_)
                              (let ((_e3206732445_
                                     (gx#syntax-e _tl3199732686_)))
                                (let ((_tl3206532452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3206732445_)))
                                      (_hd3206632449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3206732445_))))
                                  (if (gx#stx-null? _tl3206532452_)
                                      (___kont4618846189_
                                       _hd3206632449_
                                       _hd3199832683_)
                                      (if (gx#identifier? _hd3206632449_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50033_|
                                               _hd3206632449_)
                                              (if (gx#stx-pair? _tl3206532452_)
                                                  (let ((_e3209032345_
                                                         (gx#syntax-e
                                                          _tl3206532452_)))
                                                    (let ((_tl3208832352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3209032345_)))
                                                          (_hd3208932349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3209032345_))))
                                                      (if (gx#stx-null?
                                                           _tl3208832352_)
                                                          (___kont4619246193_
                                                           _hd3208932349_
                                                           _hd3199832683_
                                                           _hd3199532673_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3198932135_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))
                                          (if (gx#stx-datum? _hd3206632449_)
                                              (let ((_e3210332272_
                                                     (gx#stx-e
                                                      _hd3206632449_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3210332272_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3206532452_)
                                                        (let ((_e3210632276_
                                                               (gx#syntax-e
                                                                _tl3206532452_)))
                                                          (let ((_tl3210432283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3210632276_)))
                        (_hd3210532280_
                         (let () (declare (not safe)) (##car _e3210632276_))))
                    (if (gx#stx-null? _tl3210432283_)
                        (___kont4619446195_
                         _hd3210532280_
                         _hd3199832683_
                         _hd3199532673_)
                        (if (gx#stx-pair? _tl3210432283_)
                            (let ((_e3212632186_ (gx#syntax-e _tl3210432283_)))
                              (let ((_tl3212432193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3212632186_)))
                                    (_hd3212532190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3212632186_))))
                                (if (gx#identifier? _hd3212532190_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50032_|
                                         _hd3212532190_)
                                        (if (gx#stx-pair? _tl3212432193_)
                                            (let ((_e3212932196_
                                                   (gx#syntax-e
                                                    _tl3212432193_)))
                                              (let ((_tl3212732203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212932196_)))
                                                    (_hd3212832200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212932196_))))
                                                (if (gx#stx-null?
                                                     _tl3212732203_)
                                                    (___kont4619646197_
                                                     _hd3212832200_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))))
                            (let () (declare (not safe)) (_g3198932135_))))))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))))
                              (if (gx#stx-null? _tl3199732686_)
                                  (___kont4619046191_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-pair? _tl3199732686_)
                      (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                        (let ((_tl3206532452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3206732445_)))
                              (_hd3206632449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3206732445_))))
                          (if (gx#stx-null? _tl3206532452_)
                              (___kont4618846189_
                               _hd3206632449_
                               _hd3199832683_)
                              (if (gx#identifier? _hd3206632449_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50033_|
                                       _hd3206632449_)
                                      (if (gx#stx-pair? _tl3206532452_)
                                          (let ((_e3209032345_
                                                 (gx#syntax-e _tl3206532452_)))
                                            (let ((_tl3208832352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3209032345_)))
                                                  (_hd3208932349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3209032345_))))
                                              (if (gx#stx-null? _tl3208832352_)
                                                  (___kont4619246193_
                                                   _hd3208932349_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (if (gx#stx-datum? _hd3206632449_)
                                      (let ((_e3210332272_
                                             (gx#stx-e _hd3206632449_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3210332272_ '::))
                                            (if (gx#stx-pair? _tl3206532452_)
                                                (let ((_e3210632276_
                                                       (gx#syntax-e
                                                        _tl3206532452_)))
                                                  (let ((_tl3210432283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3210632276_)))
                                                        (_hd3210532280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3210632276_))))
                                                    (if (gx#stx-null?
                                                         _tl3210432283_)
                                                        (___kont4619446195_
                                                         _hd3210532280_
                                                         _hd3199832683_
                                                         _hd3199532673_)
                                                        (if (gx#stx-pair?
                                                             _tl3210432283_)
                                                            (let ((_e3212632186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3210432283_)))
                      (let ((_tl3212432193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212632186_)))
                            (_hd3212532190_
                             (let ()
                               (declare (not safe))
                               (##car _e3212632186_))))
                        (if (gx#identifier? _hd3212532190_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50032_|
                                 _hd3212532190_)
                                (if (gx#stx-pair? _tl3212432193_)
                                    (let ((_e3212932196_
                                           (gx#syntax-e _tl3212432193_)))
                                      (let ((_tl3212732203_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212932196_)))
                                            (_hd3212832200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212932196_))))
                                        (if (gx#stx-null? _tl3212732203_)
                                            (___kont4619646197_
                                             _hd3212832200_
                                             _hd3210532280_
                                             _hd3199832683_
                                             _hd3199532673_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_)))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))))))
                      (if (gx#stx-null? _tl3199732686_)
                          (___kont4619046191_ _hd3199832683_ _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
              (if (gx#stx-pair? _tl3199732686_)
                  (let ((_e3206732445_ (gx#syntax-e _tl3199732686_)))
                    (let ((_tl3206532452_
                           (let () (declare (not safe)) (##cdr _e3206732445_)))
                          (_hd3206632449_
                           (let ()
                             (declare (not safe))
                             (##car _e3206732445_))))
                      (if (gx#stx-null? _tl3206532452_)
                          (___kont4618846189_ _hd3206632449_ _hd3199832683_)
                          (if (gx#identifier? _hd3206632449_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50033_|
                                   _hd3206632449_)
                                  (if (gx#stx-pair? _tl3206532452_)
                                      (let ((_e3209032345_
                                             (gx#syntax-e _tl3206532452_)))
                                        (let ((_tl3208832352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3209032345_)))
                                              (_hd3208932349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3209032345_))))
                                          (if (gx#stx-null? _tl3208832352_)
                                              (___kont4619246193_
                                               _hd3208932349_
                                               _hd3199832683_
                                               _hd3199532673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3198932135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3198932135_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))
                              (if (gx#stx-datum? _hd3206632449_)
                                  (let ((_e3210332272_
                                         (gx#stx-e _hd3206632449_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3210332272_ '::))
                                        (if (gx#stx-pair? _tl3206532452_)
                                            (let ((_e3210632276_
                                                   (gx#syntax-e
                                                    _tl3206532452_)))
                                              (let ((_tl3210432283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3210632276_)))
                                                    (_hd3210532280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3210632276_))))
                                                (if (gx#stx-null?
                                                     _tl3210432283_)
                                                    (___kont4619446195_
                                                     _hd3210532280_
                                                     _hd3199832683_
                                                     _hd3199532673_)
                                                    (if (gx#stx-pair?
                                                         _tl3210432283_)
                                                        (let ((_e3212632186_
                                                               (gx#syntax-e
                                                                _tl3210432283_)))
                                                          (let ((_tl3212432193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3212632186_)))
                        (_hd3212532190_
                         (let () (declare (not safe)) (##car _e3212632186_))))
                    (if (gx#identifier? _hd3212532190_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50032_|
                             _hd3212532190_)
                            (if (gx#stx-pair? _tl3212432193_)
                                (let ((_e3212932196_
                                       (gx#syntax-e _tl3212432193_)))
                                  (let ((_tl3212732203_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3212932196_)))
                                        (_hd3212832200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3212932196_))))
                                    (if (gx#stx-null? _tl3212732203_)
                                        (___kont4619646197_
                                         _hd3212832200_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_)))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_)))
                        (let () (declare (not safe)) (_g3198932135_)))))
                (let () (declare (not safe)) (_g3198932135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3198932135_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))))
                  (if (gx#stx-null? _tl3199732686_)
                      (___kont4619046191_ _hd3199832683_ _hd3199532673_)
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3199732686_)
                                              (let ((_e3206732445_
                                                     (gx#syntax-e
                                                      _tl3199732686_)))
                                                (let ((_tl3206532452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3206732445_)))
                                                      (_hd3206632449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3206732445_))))
                                                  (if (gx#stx-null?
                                                       _tl3206532452_)
                                                      (___kont4618846189_
                                                       _hd3206632449_
                                                       _hd3199832683_)
                                                      (if (gx#identifier?
                                                           _hd3206632449_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50033_|
                                                               _hd3206632449_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3206532452_)
                          (let ((_e3209032345_ (gx#syntax-e _tl3206532452_)))
                            (let ((_tl3208832352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3209032345_)))
                                  (_hd3208932349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3209032345_))))
                              (if (gx#stx-null? _tl3208832352_)
                                  (___kont4619246193_
                                   _hd3208932349_
                                   _hd3199832683_
                                   _hd3199532673_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3198932135_)))))
                          (let () (declare (not safe)) (_g3198932135_)))
                      (let () (declare (not safe)) (_g3198932135_)))
                  (if (gx#stx-datum? _hd3206632449_)
                      (let ((_e3210332272_ (gx#stx-e _hd3206632449_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3210332272_ '::))
                            (if (gx#stx-pair? _tl3206532452_)
                                (let ((_e3210632276_
                                       (gx#syntax-e _tl3206532452_)))
                                  (let ((_tl3210432283_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3210632276_)))
                                        (_hd3210532280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3210632276_))))
                                    (if (gx#stx-null? _tl3210432283_)
                                        (___kont4619446195_
                                         _hd3210532280_
                                         _hd3199832683_
                                         _hd3199532673_)
                                        (if (gx#stx-pair? _tl3210432283_)
                                            (let ((_e3212632186_
                                                   (gx#syntax-e
                                                    _tl3210432283_)))
                                              (let ((_tl3212432193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3212632186_)))
                                                    (_hd3212532190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3212632186_))))
                                                (if (gx#identifier?
                                                     _hd3212532190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50032_|
                                                         _hd3212532190_)
                                                        (if (gx#stx-pair?
                                                             _tl3212432193_)
                                                            (let ((_e3212932196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3212432193_)))
                      (let ((_tl3212732203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3212932196_)))
                            (_hd3212832200_
                             (let ()
                               (declare (not safe))
                               (##car _e3212932196_))))
                        (if (gx#stx-null? _tl3212732203_)
                            (___kont4619646197_
                             _hd3212832200_
                             _hd3210532280_
                             _hd3199832683_
                             _hd3199532673_)
                            (let () (declare (not safe)) (_g3198932135_)))))
                    (let () (declare (not safe)) (_g3198932135_)))
                (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_))))))
                                (let () (declare (not safe)) (_g3198932135_)))
                            (let () (declare (not safe)) (_g3198932135_))))
                      (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3199732686_)
                                                  (___kont4619046191_
                                                   _hd3199832683_
                                                   _hd3199532673_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3198932135_)))))))
                                  (if (gx#stx-pair? _tl3199732686_)
                                      (let ((_e3206732445_
                                             (gx#syntax-e _tl3199732686_)))
                                        (let ((_tl3206532452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3206732445_)))
                                              (_hd3206632449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3206732445_))))
                                          (if (gx#stx-null? _tl3206532452_)
                                              (___kont4618846189_
                                               _hd3206632449_
                                               _hd3199832683_)
                                              (if (gx#identifier?
                                                   _hd3206632449_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50033_|
                                                       _hd3206632449_)
                                                      (if (gx#stx-pair?
                                                           _tl3206532452_)
                                                          (let ((_e3209032345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3206532452_)))
                    (let ((_tl3208832352_
                           (let () (declare (not safe)) (##cdr _e3209032345_)))
                          (_hd3208932349_
                           (let ()
                             (declare (not safe))
                             (##car _e3209032345_))))
                      (if (gx#stx-null? _tl3208832352_)
                          (___kont4619246193_
                           _hd3208932349_
                           _hd3199832683_
                           _hd3199532673_)
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_)))
              (let () (declare (not safe)) (_g3198932135_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3206632449_)
                                                      (let ((_e3210332272_
                                                             (gx#stx-e
                                                              _hd3206632449_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3210332272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3206532452_)
                        (let ((_e3210632276_ (gx#syntax-e _tl3206532452_)))
                          (let ((_tl3210432283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3210632276_)))
                                (_hd3210532280_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3210632276_))))
                            (if (gx#stx-null? _tl3210432283_)
                                (___kont4619446195_
                                 _hd3210532280_
                                 _hd3199832683_
                                 _hd3199532673_)
                                (if (gx#stx-pair? _tl3210432283_)
                                    (let ((_e3212632186_
                                           (gx#syntax-e _tl3210432283_)))
                                      (let ((_tl3212432193_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3212632186_)))
                                            (_hd3212532190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3212632186_))))
                                        (if (gx#identifier? _hd3212532190_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50032_|
                                                 _hd3212532190_)
                                                (if (gx#stx-pair?
                                                     _tl3212432193_)
                                                    (let ((_e3212932196_
                                                           (gx#syntax-e
                                                            _tl3212432193_)))
                                                      (let ((_tl3212732203_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3212932196_)))
                    (_hd3212832200_
                     (let () (declare (not safe)) (##car _e3212932196_))))
                (if (gx#stx-null? _tl3212732203_)
                    (___kont4619646197_
                     _hd3212832200_
                     _hd3210532280_
                     _hd3199832683_
                     _hd3199532673_)
                    (let () (declare (not safe)) (_g3198932135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3198932135_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3198932135_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3198932135_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3198932135_))))))
                        (let () (declare (not safe)) (_g3198932135_)))
                    (let () (declare (not safe)) (_g3198932135_))))
              (let () (declare (not safe)) (_g3198932135_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3199732686_)
                                          (___kont4619046191_
                                           _hd3199832683_
                                           _hd3199532673_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3198932135_)))))))
                          (let () (declare (not safe)) (_g3198932135_)))))
                  (let () (declare (not safe)) (_g3198932135_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32778_)
        (let* ((___stx4644346444_ _$stx32778_)
               (_g3278332817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4644346444_))))
          (let ((___kont4644646447_
                 (lambda (_L32921_ _L32923_ _L32924_)
                   (let ((__tmp50098 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50037
                          (let ((__tmp50038
                                 (let ((__tmp50039
                                        (let ((__tmp50097
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50040
                                               (let ((__tmp50041
                                                      (let ((__tmp50042
                                                             (let ((__tmp50096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50043
                            (let ((__tmp50088
                                   (let ((__tmp50093
                                          (let ((__tmp50095
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50094
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50095 __tmp50094)))
                                         (__tmp50089
                                          (let ((__tmp50090
                                                 (let ((__tmp50092
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50091
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32921_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50092
                                                         __tmp50091))))
                                            (declare (not safe))
                                            (cons __tmp50090 '()))))
                                     (declare (not safe))
                                     (cons __tmp50093 __tmp50089)))
                                  (__tmp50044
                                   (let ((__tmp50045
                                          (let ((__tmp50087
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50046
                                                 (let ((__tmp50085
                                                        (let ((__tmp50086
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50086
                                                                '())))
                                                       (__tmp50047
                                                        (let ((__tmp50048
                                                               (let ((__tmp50084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50049
                              (let ((__tmp50083 (gx#datum->syntax '#f '$stx))
                                    (__tmp50050
                                     (let ((__tmp50051
                                            (let ((__tmp50062
                                                   (let ((__tmp50081
                                                          (let ((__tmp50082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50082)))
                 (__tmp50063
                  (let ((__tmp50064
                         (let ((__tmp50080
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50065
                                (let ((__tmp50079
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50066
                                       (let ((__tmp50067
                                              (let ((__tmp50078
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50068
                                                     (let ((__tmp50074
                                                            (let ((__tmp50077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50075
                           (let ((__tmp50076 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50076 '()))))
                      (declare (not safe))
                      (cons __tmp50077 __tmp50075)))
                   (__tmp50069
                    (let ((__tmp50070
                           (let ((__tmp50073
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50071
                                  (let ((__tmp50072
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50072 '()))))
                             (declare (not safe))
                             (cons __tmp50073 __tmp50071))))
                      (declare (not safe))
                      (cons __tmp50070 '()))))
               (declare (not safe))
               (cons __tmp50074 __tmp50069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50078 __tmp50068))))
                                         (declare (not safe))
                                         (cons __tmp50067 '()))))
                                  (declare (not safe))
                                  (cons __tmp50079 __tmp50066))))
                           (declare (not safe))
                           (cons __tmp50080 __tmp50065))))
                    (declare (not safe))
                    (cons __tmp50064 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50081
                                                           __tmp50063)))
                                                  (__tmp50052
                                                   (let ((__tmp50053
                                                          (let ((__tmp50061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50054
                         (let ((__tmp50055
                                (let ((__tmp50060
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50056
                                       (let ((__tmp50059
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50057
                                              (let ((__tmp50058
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50058 '()))))
                                         (declare (not safe))
                                         (cons __tmp50059 __tmp50057))))
                                  (declare (not safe))
                                  (cons __tmp50060 __tmp50056))))
                           (declare (not safe))
                           (cons __tmp50055 '()))))
                    (declare (not safe))
                    (cons __tmp50061 __tmp50054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50053 '()))))
                                              (declare (not safe))
                                              (cons __tmp50062 __tmp50052))))
                                       (declare (not safe))
                                       (cons '() __tmp50051))))
                                (declare (not safe))
                                (cons __tmp50083 __tmp50050))))
                         (declare (not safe))
                         (cons __tmp50084 __tmp50049))))
                  (declare (not safe))
                  (cons __tmp50048 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50085
                                                         __tmp50047))))
                                            (declare (not safe))
                                            (cons __tmp50087 __tmp50046))))
                                     (declare (not safe))
                                     (cons __tmp50045 '()))))
                              (declare (not safe))
                              (cons __tmp50088 __tmp50044))))
                       (declare (not safe))
                       (cons __tmp50096 __tmp50043))))
                (declare (not safe))
                (cons __tmp50042 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50041))))
                                          (declare (not safe))
                                          (cons __tmp50097 __tmp50040))))
                                   (declare (not safe))
                                   (cons __tmp50039 '()))))
                            (declare (not safe))
                            (cons _L32924_ __tmp50038))))
                     (declare (not safe))
                     (cons __tmp50098 __tmp50037))))
                (___kont4644846449_
                 (lambda (_L32854_ _L32856_ _L32857_)
                   (let ((__tmp50099
                          (let ((__tmp50100
                                 (let ((__tmp50101
                                        (let ((__tmp50102
                                               (let ((__tmp50113
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50103
                                                      (let ((__tmp50111
                                                             (let ((__tmp50112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50112 '())))
                    (__tmp50104
                     (let ((__tmp50105
                            (let ((__tmp50110
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50106
                                   (let ((__tmp50107
                                          (let ((__tmp50108
                                                 (let ((__tmp50109
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50109 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50108))))
                                     (declare (not safe))
                                     (cons '#f __tmp50107))))
                              (declare (not safe))
                              (cons __tmp50110 __tmp50106))))
                       (declare (not safe))
                       (cons __tmp50105 '()))))
                (declare (not safe))
                (cons __tmp50111 __tmp50104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50113
                                                       __tmp50103))))
                                          (declare (not safe))
                                          (cons __tmp50102 '()))))
                                   (declare (not safe))
                                   (cons _L32854_ __tmp50101))))
                            (declare (not safe))
                            (cons _L32856_ __tmp50100))))
                     (declare (not safe))
                     (cons _L32857_ __tmp50099)))))
            (let ((___match4647646477_
                   (lambda (_e3279032881_
                            _hd3278932885_
                            _tl3278832888_
                            _e3279332891_
                            _hd3279232895_
                            _tl3279132898_
                            _e3279632901_
                            _hd3279532905_
                            _tl3279432908_
                            _e3279932911_
                            _hd3279832915_
                            _tl3279732918_)
                     (let ((_L32921_ _hd3279832915_)
                           (_L32923_ _hd3279532905_)
                           (_L32924_ _hd3279232895_))
                       (if (gx#identifier? _L32924_)
                           (___kont4644646447_ _L32921_ _L32923_ _L32924_)
                           (let () (declare (not safe)) (_g3278332817_)))))))
              (if (gx#stx-pair? ___stx4644346444_)
                  (let ((_e3279032881_ (gx#syntax-e ___stx4644346444_)))
                    (let ((_tl3278832888_
                           (let () (declare (not safe)) (##cdr _e3279032881_)))
                          (_hd3278932885_
                           (let ()
                             (declare (not safe))
                             (##car _e3279032881_))))
                      (if (gx#stx-pair? _tl3278832888_)
                          (let ((_e3279332891_ (gx#syntax-e _tl3278832888_)))
                            (let ((_tl3279132898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3279332891_)))
                                  (_hd3279232895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3279332891_))))
                              (if (gx#stx-pair? _tl3279132898_)
                                  (let ((_e3279632901_
                                         (gx#syntax-e _tl3279132898_)))
                                    (let ((_tl3279432908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3279632901_)))
                                          (_hd3279532905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3279632901_))))
                                      (if (gx#stx-pair? _tl3279432908_)
                                          (let ((_e3279932911_
                                                 (gx#syntax-e _tl3279432908_)))
                                            (let ((_tl3279732918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3279932911_)))
                                                  (_hd3279832915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3279932911_))))
                                              (if (gx#stx-null? _tl3279732918_)
                                                  (___match4647646477_
                                                   _e3279032881_
                                                   _hd3278932885_
                                                   _tl3278832888_
                                                   _e3279332891_
                                                   _hd3279232895_
                                                   _tl3279132898_
                                                   _e3279632901_
                                                   _hd3279532905_
                                                   _tl3279432908_
                                                   _e3279932911_
                                                   _hd3279832915_
                                                   _tl3279732918_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3278332817_)))))
                                          (if (gx#stx-null? _tl3279432908_)
                                              (___kont4644846449_
                                               _hd3279532905_
                                               _hd3279232895_
                                               _hd3278932885_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3278332817_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3278332817_)))))
                          (let () (declare (not safe)) (_g3278332817_)))))
                  (let () (declare (not safe)) (_g3278332817_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32946_)
        (let* ((_g3295032965_
                (lambda (_g3295132961_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3295132961_)))
               (_g3294933008_
                (lambda (_g3295132969_)
                  (if (gx#stx-pair? _g3295132969_)
                      (let ((_e3295632972_ (gx#syntax-e _g3295132969_)))
                        (let ((_hd3295532976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3295632972_)))
                              (_tl3295432979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3295632972_))))
                          (if (gx#stx-pair? _tl3295432979_)
                              (let ((_e3295932982_
                                     (gx#syntax-e _tl3295432979_)))
                                (let ((_hd3295832986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3295932982_)))
                                      (_tl3295732989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3295932982_))))
                                  ((lambda (_L32992_ _L32994_)
                                     (let ((__tmp50118
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50114
                                            (let ((__tmp50115
                                                   (let ((__tmp50116
                                                          (let ((__tmp50117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50117 _L32992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50116 '()))))
                                              (declare (not safe))
                                              (cons _L32994_ __tmp50115))))
                                       (declare (not safe))
                                       (cons __tmp50118 __tmp50114)))
                                   _tl3295732989_
                                   _hd3295832986_)))
                              (_g3295032965_ _g3295132969_))))
                      (_g3295032965_ _g3295132969_)))))
          (_g3294933008_ _$stx32946_))))))
