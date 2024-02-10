(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134253_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134255_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134257_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134262_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134265_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134270_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134273_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134278_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134281_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134286_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134289_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134396_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134249
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134252 |gx[1]#_g134253_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134252
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134254 |gx[1]#_g134255_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134254
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134256 |gx[1]#_g134257_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134256
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134258
               (let ((__tmp134263
                      (let ((__tmp134264 |gx[1]#_g134265_|))
                        (declare (not safe))
                        (cons 'e __tmp134264)))
                     (__tmp134259
                      (let ((__tmp134260
                             (let ((__tmp134261 |gx[1]#_g134262_|))
                               (declare (not safe))
                               (cons 'source __tmp134261))))
                        (declare (not safe))
                        (cons __tmp134260 '()))))
                 (declare (not safe))
                 (cons __tmp134263 __tmp134259))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134258
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134266
               (let ((__tmp134271
                      (let ((__tmp134272 |gx[1]#_g134273_|))
                        (declare (not safe))
                        (cons 'e __tmp134272)))
                     (__tmp134267
                      (let ((__tmp134268
                             (let ((__tmp134269 |gx[1]#_g134270_|))
                               (declare (not safe))
                               (cons 'source __tmp134269))))
                        (declare (not safe))
                        (cons __tmp134268 '()))))
                 (declare (not safe))
                 (cons __tmp134271 __tmp134267))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134266
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134274
               (let ((__tmp134279
                      (let ((__tmp134280 |gx[1]#_g134281_|))
                        (declare (not safe))
                        (cons 'e __tmp134280)))
                     (__tmp134275
                      (let ((__tmp134276
                             (let ((__tmp134277 |gx[1]#_g134278_|))
                               (declare (not safe))
                               (cons 'source __tmp134277))))
                        (declare (not safe))
                        (cons __tmp134276 '()))))
                 (declare (not safe))
                 (cons __tmp134279 __tmp134275))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134274
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134282
               (let ((__tmp134287
                      (let ((__tmp134288 |gx[1]#_g134289_|))
                        (declare (not safe))
                        (cons 'e __tmp134288)))
                     (__tmp134283
                      (let ((__tmp134284
                             (let ((__tmp134285 |gx[1]#_g134286_|))
                               (declare (not safe))
                               (cons 'source __tmp134285))))
                        (declare (not safe))
                        (cons __tmp134284 '()))))
                 (declare (not safe))
                 (cons __tmp134287 __tmp134283))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134249
           __tmp134282
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134249))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128401_)
        (let* ((_g128405128419_
                (lambda (_g128406128415_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128406128415_)))
               (_g128404128461_
                (lambda (_g128406128423_)
                  (if (gx#stx-pair? _g128406128423_)
                      (let ((_e128410128426_ (gx#syntax-e _g128406128423_)))
                        (let ((_hd128409128430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128410128426_)))
                              (_tl128408128433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128410128426_))))
                          (if (gx#stx-pair? _tl128408128433_)
                              (let ((_e128413128436_
                                     (gx#syntax-e _tl128408128433_)))
                                (let ((_hd128412128440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128413128436_)))
                                      (_tl128411128443_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128413128436_))))
                                  (if (gx#stx-null? _tl128411128443_)
                                      ((lambda (_L128446_)
                                         (let ((__tmp134299
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134290
                                                (let ((__tmp134296
                                                       (let ((__tmp134298
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134297
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128446_ '()))))
                 (declare (not safe))
                 (cons __tmp134298 __tmp134297)))
              (__tmp134291
               (let ((__tmp134292
                      (let ((__tmp134295 (gx#datum->syntax '#f 'error))
                            (__tmp134293
                             (let ((__tmp134294
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128446_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134294))))
                        (declare (not safe))
                        (cons __tmp134295 __tmp134293))))
                 (declare (not safe))
                 (cons __tmp134292 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134296
                                                        __tmp134291))))
                                           (declare (not safe))
                                           (cons __tmp134299 __tmp134290)))
                                       _hd128412128440_)
                                      (_g128405128419_ _g128406128423_))))
                              (_g128405128419_ _g128406128423_))))
                      (_g128405128419_ _g128406128423_)))))
          (_g128404128461_ _$stx128401_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128465_)
        (letrec ((_generate128468_
                  (lambda (_tgt128617_ _kws128619_ _clauses128620_)
                    (letrec ((_generate-clause128622_
                              (lambda (_hd129532_ _E129534_)
                                (let* ((___stx134152134153_ _hd129532_)
                                       (_g129538129565_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134152134153_))))
                                  (let ((___kont134155134156_
                                         (lambda (_L129661_ _L129663_)
                                           (_generate1128624_
                                            _hd129532_
                                            _L129663_
                                            '#t
                                            _L129661_
                                            _E129534_)))
                                        (___kont134157134158_
                                         (lambda (_L129613_
                                                  _L129615_
                                                  _L129616_)
                                           (_generate1128624_
                                            _hd129532_
                                            _L129616_
                                            _L129615_
                                            _L129613_
                                            _E129534_)))
                                        (___kont134159134160_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128465_
                                            _hd129532_))))
                                    (if (gx#stx-pair? ___stx134152134153_)
                                        (let ((_e129544129641_
                                               (gx#syntax-e
                                                ___stx134152134153_)))
                                          (let ((_tl129542129648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129544129641_)))
                                                (_hd129543129645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129544129641_))))
                                            (if (gx#stx-pair? _tl129542129648_)
                                                (let ((_e129547129651_
                                                       (gx#syntax-e
                                                        _tl129542129648_)))
                                                  (let ((_tl129545129658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129547129651_)))
                                                        (_hd129546129655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129547129651_))))
                                                    (if (gx#stx-null?
                                                         _tl129545129658_)
                                                        (___kont134155134156_
                                                         _hd129546129655_
                                                         _hd129543129645_)
                                                        (if (gx#stx-pair?
                                                             _tl129545129658_)
                                                            (let ((_e129559129603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129545129658_)))
                      (let ((_tl129557129610_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129559129603_)))
                            (_hd129558129607_
                             (let ()
                               (declare (not safe))
                               (##car _e129559129603_))))
                        (if (gx#stx-null? _tl129557129610_)
                            (___kont134157134158_
                             _hd129558129607_
                             _hd129546129655_
                             _hd129543129645_)
                            (___kont134159134160_))))
                    (___kont134159134160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134159134160_))))
                                        (___kont134159134160_))))))
                             (_generate1128624_
                              (lambda (_where129010_
                                       _hd129012_
                                       _fender129013_
                                       _body129014_
                                       _E129015_)
                                (letrec ((_recur129017_
                                          (lambda (_hd129020_
                                                   _tgt129022_
                                                   _K129023_)
                                            (let* ((___stx134198134199_
                                                    _hd129020_)
                                                   (_g129026129038_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134198134199_))))
                                              (let ((___kont134201134202_
                                                     (lambda (_L129322_
                                                              _L129324_)
                                                       (let* ((_g129335129343_
                                                               (lambda (_g129336129339_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129336129339_)))
                      (_g129334129524_
                       (lambda (_g129336129347_)
                         ((lambda (_L129350_)
                            (let ()
                              (let* ((_g129362129370_
                                      (lambda (_g129363129366_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129363129366_)))
                                     (_g129361129520_
                                      (lambda (_g129363129374_)
                                        ((lambda (_L129377_)
                                           (let ()
                                             (let* ((_g129390129398_
                                                     (lambda (_g129391129394_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129391129394_)))
                                                    (_g129389129516_
                                                     (lambda (_g129391129402_)
                                                       ((lambda (_L129405_)
                                                          (let ()
                                                            (let* ((_g129418129426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129419129422_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129419129422_)))
                           (_g129417129512_
                            (lambda (_g129419129430_)
                              ((lambda (_L129433_)
                                 (let ()
                                   (let* ((_g129446129454_
                                           (lambda (_g129447129450_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129447129450_)))
                                          (_g129445129508_
                                           (lambda (_g129447129458_)
                                             ((lambda (_L129461_)
                                                (let ()
                                                  (let* ((_g129474129482_
                                                          (lambda (_g129475129478_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129475129478_)))
                                                         (_g129473129504_
                                                          (lambda (_g129475129486_)
                                                            ((lambda (_L129489_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134332 (gx#datum->syntax '#f 'if))
                                 (__tmp134300
                                  (let ((__tmp134329
                                         (let ((__tmp134331
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134330
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129350_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134331 __tmp134330)))
                                        (__tmp134301
                                         (let ((__tmp134303
                                                (let ((__tmp134328
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134304
                                                       (let ((__tmp134322
                                                              (let ((__tmp134323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134324
                                    (let ((__tmp134325
                                           (let ((__tmp134327
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134326
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129350_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134327 __tmp134326))))
                                      (declare (not safe))
                                      (cons __tmp134325 '()))))
                               (declare (not safe))
                               (cons _L129377_ __tmp134324))))
                        (declare (not safe))
                        (cons __tmp134323 '())))
                     (__tmp134305
                      (let ((__tmp134306
                             (let ((__tmp134321 (gx#datum->syntax '#f 'let))
                                   (__tmp134307
                                    (let ((__tmp134309
                                           (let ((__tmp134316
                                                  (let ((__tmp134317
                                                         (let ((__tmp134318
                                                                (let ((__tmp134320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134319
                               (let ()
                                 (declare (not safe))
                                 (cons _L129377_ '()))))
                          (declare (not safe))
                          (cons __tmp134320 __tmp134319))))
                   (declare (not safe))
                   (cons __tmp134318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129405_
                                                          __tmp134317)))
                                                 (__tmp134310
                                                  (let ((__tmp134311
                                                         (let ((__tmp134312
                                                                (let ((__tmp134313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134315
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134314
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129377_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134315 __tmp134314))))
                          (declare (not safe))
                          (cons __tmp134313 '()))))
                   (declare (not safe))
                   (cons _L129433_ __tmp134312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134311 '()))))
                                             (declare (not safe))
                                             (cons __tmp134316 __tmp134310)))
                                          (__tmp134308
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129461_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134309 __tmp134308))))
                               (declare (not safe))
                               (cons __tmp134321 __tmp134307))))
                        (declare (not safe))
                        (cons __tmp134306 '()))))
                 (declare (not safe))
                 (cons __tmp134322 __tmp134305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134328
                                                        __tmp134304)))
                                               (__tmp134302
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129489_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134303 __tmp134302))))
                                    (declare (not safe))
                                    (cons __tmp134329 __tmp134301))))
                             (declare (not safe))
                             (cons __tmp134332 __tmp134300)))))
                     _g129475129486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129473129504_
                                                     _E129015_))))
                                              _g129447129458_))))
                                     (_g129445129508_
                                      (_recur129017_
                                       _L129324_
                                       _L129405_
                                       (_recur129017_
                                        _L129322_
                                        _L129433_
                                        _K129023_))))))
                               _g129419129430_))))
                      (_g129417129512_ (gx#genident 'tl)))))
                _g129391129402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129389129516_
                                                (gx#genident 'hd)))))
                                         _g129363129374_))))
                                (_g129361129520_ (gx#genident 'e)))))
                          _g129336129347_))))
                 (_g129334129524_ _tgt129022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134203134204_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129020_)
                                                           (if (gx#underscore?
                                                                _hd129020_)
                                                               _K129023_
                                                               (if (let ((__tmp134377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129048129050_)
                                    (gx#bound-identifier=?
                                     _g129048129050_
                                     _hd129020_))))
                             (declare (not safe))
                             (find __tmp134377 _kws128619_))
                           (let* ((_g129054129069_
                                   (lambda (_g129055129065_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129055129065_)))
                                  (_g129053129120_
                                   (lambda (_g129055129073_)
                                     (if (gx#stx-pair? _g129055129073_)
                                         (let ((_e129060129076_
                                                (gx#syntax-e _g129055129073_)))
                                           (let ((_hd129059129080_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129060129076_)))
                                                 (_tl129058129083_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129060129076_))))
                                             (if (gx#stx-pair?
                                                  _tl129058129083_)
                                                 (let ((_e129063129086_
                                                        (gx#syntax-e
                                                         _tl129058129083_)))
                                                   (let ((_hd129062129090_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129063129086_)))
                                                         (_tl129061129093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129063129086_))))
                                                     (if (gx#stx-null?
                                                          _tl129061129093_)
                                                         ((lambda (_L129096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129098_)
                    (let ()
                      (let ((__tmp134376 (gx#datum->syntax '#f 'if))
                            (__tmp134359
                             (let ((__tmp134362
                                    (let ((__tmp134375
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134363
                                           (let ((__tmp134372
                                                  (let ((__tmp134374
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134373
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134374
                                                          __tmp134373)))
                                                 (__tmp134364
                                                  (let ((__tmp134365
                                                         (let ((__tmp134371
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134366
                        (let ((__tmp134367
                               (let ((__tmp134368
                                      (let ((__tmp134370
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134369
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129096_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134370 __tmp134369))))
                                 (declare (not safe))
                                 (cons __tmp134368 '()))))
                          (declare (not safe))
                          (cons _L129098_ __tmp134367))))
                   (declare (not safe))
                   (cons __tmp134371 __tmp134366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134365 '()))))
                                             (declare (not safe))
                                             (cons __tmp134372 __tmp134364))))
                                      (declare (not safe))
                                      (cons __tmp134375 __tmp134363)))
                                   (__tmp134360
                                    (let ((__tmp134361
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129015_ '()))))
                                      (declare (not safe))
                                      (cons _K129023_ __tmp134361))))
                               (declare (not safe))
                               (cons __tmp134362 __tmp134360))))
                        (declare (not safe))
                        (cons __tmp134376 __tmp134359))))
                  _hd129062129090_
                  _hd129059129080_)
                 (_g129054129069_ _g129055129073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129054129069_
                                                  _g129055129073_))))
                                         (_g129054129069_ _g129055129073_)))))
                             (_g129053129120_ (list _tgt129022_ _hd129020_)))
                           (let* ((_g129124129139_
                                   (lambda (_g129125129135_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129125129135_)))
                                  (_g129123129183_
                                   (lambda (_g129125129143_)
                                     (if (gx#stx-pair? _g129125129143_)
                                         (let ((_e129130129146_
                                                (gx#syntax-e _g129125129143_)))
                                           (let ((_hd129129129150_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129130129146_)))
                                                 (_tl129128129153_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129130129146_))))
                                             (if (gx#stx-pair?
                                                  _tl129128129153_)
                                                 (let ((_e129133129156_
                                                        (gx#syntax-e
                                                         _tl129128129153_)))
                                                   (let ((_hd129132129160_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129133129156_)))
                                                         (_tl129131129163_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129133129156_))))
                                                     (if (gx#stx-null?
                                                          _tl129131129163_)
                                                         ((lambda (_L129166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129168_)
                    (let ()
                      (let ((__tmp134358 (gx#datum->syntax '#f 'let))
                            (__tmp134353
                             (let ((__tmp134355
                                    (let ((__tmp134356
                                           (let ((__tmp134357
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129168_ '()))))
                                             (declare (not safe))
                                             (cons _L129166_ __tmp134357))))
                                      (declare (not safe))
                                      (cons __tmp134356 '())))
                                   (__tmp134354
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129023_ '()))))
                               (declare (not safe))
                               (cons __tmp134355 __tmp134354))))
                        (declare (not safe))
                        (cons __tmp134358 __tmp134353))))
                  _hd129132129160_
                  _hd129129129150_)
                 (_g129124129139_ _g129125129143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129124129139_
                                                  _g129125129143_))))
                                         (_g129124129139_ _g129125129143_)))))
                             (_g129123129183_ (list _tgt129022_ _hd129020_)))))
                   (if (gx#stx-null? _hd129020_)
                       (let* ((_g129187129195_
                               (lambda (_g129188129191_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129188129191_)))
                              (_g129186129213_
                               (lambda (_g129188129199_)
                                 ((lambda (_L129202_)
                                    (let ()
                                      (let ((__tmp134352
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134346
                                             (let ((__tmp134349
                                                    (let ((__tmp134351
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134350
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134351 __tmp134350)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134347
                                                    (let ((__tmp134348
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129023_ __tmp134348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134349
                                                     __tmp134347))))
                                        (declare (not safe))
                                        (cons __tmp134352 __tmp134346))))
                                  _g129188129199_))))
                         (_g129186129213_ _tgt129022_))
                       (if (gx#stx-datum? _hd129020_)
                           (let* ((_g129217129236_
                                   (lambda (_g129218129232_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129218129232_)))
                                  (_g129216129294_
                                   (lambda (_g129218129240_)
                                     (if (gx#stx-pair? _g129218129240_)
                                         (let ((_e129224129243_
                                                (gx#syntax-e _g129218129240_)))
                                           (let ((_hd129223129247_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129224129243_)))
                                                 (_tl129222129250_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129224129243_))))
                                             (if (gx#stx-pair?
                                                  _tl129222129250_)
                                                 (let ((_e129227129253_
                                                        (gx#syntax-e
                                                         _tl129222129250_)))
                                                   (let ((_hd129226129257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129227129253_)))
                                                         (_tl129225129260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129227129253_))))
                                                     (if (gx#stx-pair?
                                                          _tl129225129260_)
                                                         (let ((_e129230129263_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129225129260_)))
                   (let ((_hd129229129267_
                          (let ()
                            (declare (not safe))
                            (##car _e129230129263_)))
                         (_tl129228129270_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129230129263_))))
                     (if (gx#stx-null? _tl129228129270_)
                         ((lambda (_L129273_ _L129275_ _L129276_)
                            (let ()
                              (let ((__tmp134345 (gx#datum->syntax '#f 'if))
                                    (__tmp134333
                                     (let ((__tmp134336
                                            (let ((__tmp134337
                                                   (let ((__tmp134342
                                                          (let ((__tmp134344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134343
                         (let () (declare (not safe)) (cons _L129276_ '()))))
                    (declare (not safe))
                    (cons __tmp134344 __tmp134343)))
                 (__tmp134338
                  (let ((__tmp134339
                         (let ((__tmp134341 (gx#datum->syntax '#f 'quote))
                               (__tmp134340
                                (let ()
                                  (declare (not safe))
                                  (cons _L129275_ '()))))
                           (declare (not safe))
                           (cons __tmp134341 __tmp134340))))
                    (declare (not safe))
                    (cons __tmp134339 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134342
                                                           __tmp134338))))
                                              (declare (not safe))
                                              (cons _L129273_ __tmp134337)))
                                           (__tmp134334
                                            (let ((__tmp134335
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129015_ '()))))
                                              (declare (not safe))
                                              (cons _K129023_ __tmp134335))))
                                       (declare (not safe))
                                       (cons __tmp134336 __tmp134334))))
                                (declare (not safe))
                                (cons __tmp134345 __tmp134333))))
                          _hd129229129267_
                          _hd129226129257_
                          _hd129223129247_)
                         (_g129217129236_ _g129218129240_))))
                 (_g129217129236_ _g129218129240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129217129236_
                                                  _g129218129240_))))
                                         (_g129217129236_ _g129218129240_)))))
                             (_g129216129294_
                              (list _tgt129022_
                                    _hd129020_
                                    (let ((_e129298_ (gx#stx-e _hd129020_)))
                                      (if (or (keyword? _e129298_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129298_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129298_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128465_
                            _where129010_
                            _hd129020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134198134199_)
                                                    (let ((_e129032129312_
                                                           (gx#syntax-e
                                                            ___stx134198134199_)))
                                                      (let ((_tl129030129319_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129032129312_)))
                    (_hd129031129316_
                     (let () (declare (not safe)) (##car _e129032129312_))))
                (___kont134201134202_ _tl129030129319_ _hd129031129316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134203134204_)))))))
                                  (_recur129017_
                                   _hd129012_
                                   _tgt128617_
                                   (let ((__tmp134381
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134378
                                          (let ((__tmp134379
                                                 (let ((__tmp134380
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129015_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129014_
                                                         __tmp134380))))
                                            (declare (not safe))
                                            (cons _fender129013_
                                                  __tmp134379))))
                                     (declare (not safe))
                                     (cons __tmp134381 __tmp134378))))))
                             (_generate-clauses128625_
                              (lambda (_clauses128748_)
                                (let _lp128751_ ((_rest128754_ _clauses128748_)
                                                 (_E128756_ (gx#genident 'E))
                                                 (_r128757_ '()))
                                  (let* ((___stx134234134235_ _rest128754_)
                                         (_g128760128772_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134234134235_))))
                                    (let ((___kont134237134238_
                                           (lambda (_L128837_ _L128839_)
                                             (let* ((___stx134214134215_
                                                     _L128839_)
                                                    (_g128851128862_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134214134215_))))
                                               (let ((___kont134217134218_
                                                      (lambda (_L128991_)
                                                        (if (gx#stx-null?
                                                             _L128837_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L128991_)
                             (let ((__tmp134390 (gx#stx-null? _L128991_)))
                               (declare (not safe))
                               (not __tmp134390)))
                        (let ((__tmp134382
                               (let ((__tmp134383
                                      (let ((__tmp134384
                                             (gx#stx-wrap-source
                                              (let ((__tmp134389
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134385
                                                     (let ((__tmp134386
                                                            (let ((__tmp134387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134388 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134388 _L128991_))))
                      (declare (not safe))
                      (cons __tmp134387 '()))))
               (declare (not safe))
               (cons '() __tmp134386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134389 __tmp134385))
                                              (gx#stx-source _L128839_))))
                                        (declare (not safe))
                                        (cons __tmp134384 '()))))
                                 (declare (not safe))
                                 (cons _E128756_ __tmp134383))))
                          (declare (not safe))
                          (cons __tmp134382 _r128757_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128465_
                         _L128839_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128465_
                     _L128839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134219134220_
                                                      (lambda ()
                                                        (let* ((_g128873128881_
                                                                (lambda (_g128874128877_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g128874128877_)))
                       (_g128872128970_
                        (lambda (_g128874128885_)
                          ((lambda (_L128888_)
                             (let ()
                               (let* ((_g128904128912_
                                       (lambda (_g128905128908_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g128905128908_)))
                                      (_g128903128966_
                                       (lambda (_g128905128916_)
                                         ((lambda (_L128919_)
                                            (let ()
                                              (let* ((_g128932128940_
                                                      (lambda (_g128933128936_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g128933128936_)))
                                                     (_g128931128962_
                                                      (lambda (_g128933128944_)
                                                        ((lambda (_L128947_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128751_
                                                                _L128837_
                                                                _L128888_
                                                                (let ((__tmp134391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134392
                                      (let ()
                                        (declare (not safe))
                                        (cons _L128947_ '()))))
                                 (declare (not safe))
                                 (cons _E128756_ __tmp134392))))
                          (declare (not safe))
                          (cons __tmp134391 _r128757_))))))
                 _g128933128944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g128931128962_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134395
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134393
                                                         (let ((__tmp134394
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L128919_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134395
                                                          __tmp134393))
                                                  (gx#stx-source
                                                   _L128839_))))))
                                          _g128905128916_))))
                                 (_g128903128966_
                                  (_generate-clause128622_
                                   _L128839_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L128888_ '())))))))
                           _g128874128885_))))
                  (_g128872128970_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134214134215_)
                                                     (let ((_e128856128981_
                                                            (gx#syntax-e
                                                             ___stx134214134215_)))
                                                       (let ((_tl128854128988_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128856128981_)))
                     (_hd128855128985_
                      (let () (declare (not safe)) (##car _e128856128981_))))
                 (if (gx#identifier? _hd128855128985_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134396_|
                          _hd128855128985_)
                         (___kont134217134218_ _tl128854128988_)
                         (___kont134219134220_))
                     (___kont134219134220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134219134220_))))))
                                          (___kont134239134240_
                                           (lambda ()
                                             (let* ((_g128783128791_
                                                     (lambda (_g128784128787_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128784128787_)))
                                                    (_g128782128816_
                                                     (lambda (_g128784128795_)
                                                       ((lambda (_L128798_)
                                                          (let ()
                                                            (let ((__tmp134397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134398
                                  (let ((__tmp134399
                                         (gx#stx-wrap-source
                                          (let ((__tmp134407
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134400
                                                 (let ((__tmp134401
                                                        (let ((__tmp134402
                                                               (let ((__tmp134406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134403
                              (let ((__tmp134404
                                     (let ((__tmp134405
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128798_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134405))))
                                (declare (not safe))
                                (cons '#f __tmp134404))))
                         (declare (not safe))
                         (cons __tmp134406 __tmp134403))))
                  (declare (not safe))
                  (cons __tmp134402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134401))))
                                            (declare (not safe))
                                            (cons __tmp134407 __tmp134400))
                                          (gx#stx-source _stx128465_))))
                                    (declare (not safe))
                                    (cons __tmp134399 '()))))
                             (declare (not safe))
                             (cons _E128756_ __tmp134398))))
                      (declare (not safe))
                      (cons __tmp134397 _r128757_))))
                _g128784128795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128782128816_
                                                _tgt128617_)))))
                                      (if (gx#stx-pair? ___stx134234134235_)
                                          (let ((_e128766128827_
                                                 (gx#syntax-e
                                                  ___stx134234134235_)))
                                            (let ((_tl128764128834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128766128827_)))
                                                  (_hd128765128831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128766128827_))))
                                              (___kont134237134238_
                                               _tl128764128834_
                                               _hd128765128831_)))
                                          (___kont134239134240_))))))))
                      (let* ((_bind128627_
                              (_generate-clauses128625_ _clauses128620_))
                             (_g128630128647_
                              (lambda (_g128631128643_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128631128643_)))
                             (_g128629128744_
                              (lambda (_g128631128651_)
                                (if (gx#stx-pair/null? _g128631128651_)
                                    (let ((_g134408_
                                           (gx#syntax-split-splice
                                            _g128631128651_
                                            '0)))
                                      (begin
                                        (let ((_g134409_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134408_)
                                                     (##vector-length
                                                      _g134408_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134409_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134409_)))
                                        (let ((_target128633128654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134408_ 0)))
                                              (_tl128635128657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134408_ 1))))
                                          (if (gx#stx-null? _tl128635128657_)
                                              (letrec ((_loop128636128660_
                                                        (lambda (_hd128634128664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128640128667_)
                  (if (gx#stx-pair? _hd128634128664_)
                      (let ((_e128637128670_ (gx#syntax-e _hd128634128664_)))
                        (let ((_lp-hd128638128674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128637128670_)))
                              (_lp-tl128639128677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128637128670_))))
                          (_loop128636128660_
                           _lp-tl128639128677_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128638128674_
                                   _bind-try128640128667_)))))
                      (let ((_bind-try128641128680_
                             (reverse _bind-try128640128667_)))
                        ((lambda (_L128684_)
                           (let ()
                             (let* ((_g128702128710_
                                     (lambda (_g128703128706_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128703128706_)))
                                    (_g128701128740_
                                     (lambda (_g128703128714_)
                                       ((lambda (_L128717_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134415
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134410
                                                     (let ((__tmp134413
                                                            (let ((__tmp134414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128731128734_ _g128732128737_)
                             (let ()
                               (declare (not safe))
                               (cons _g128731128734_ _g128732128737_)))))
                      (declare (not safe))
                      (foldr1 __tmp134414 '() _L128684_)))
                   (__tmp134411
                    (let ((__tmp134412
                           (let () (declare (not safe)) (cons _L128717_ '()))))
                      (declare (not safe))
                      (cons __tmp134412 '()))))
               (declare (not safe))
               (cons __tmp134413 __tmp134411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134415
                                                      __tmp134410)))))
                                        _g128703128714_))))
                               (_g128701128740_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128627_)))))))
                         _bind-try128641128680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128636128660_
                                                 _target128633128654_
                                                 '()))
                                              (_g128630128647_
                                               _g128631128651_)))))
                                    (_g128630128647_ _g128631128651_)))))
                        (_g128629128744_ _bind128627_))))))
          (let* ((_g128471128490_
                  (lambda (_g128472128486_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128472128486_)))
                 (_g128470128613_
                  (lambda (_g128472128494_)
                    (if (gx#stx-pair? _g128472128494_)
                        (let ((_e128478128497_ (gx#syntax-e _g128472128494_)))
                          (let ((_hd128477128501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128478128497_)))
                                (_tl128476128504_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128478128497_))))
                            (if (gx#stx-pair? _tl128476128504_)
                                (let ((_e128481128507_
                                       (gx#syntax-e _tl128476128504_)))
                                  (let ((_hd128480128511_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128481128507_)))
                                        (_tl128479128514_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128481128507_))))
                                    (if (gx#stx-pair? _tl128479128514_)
                                        (let ((_e128484128517_
                                               (gx#syntax-e _tl128479128514_)))
                                          (let ((_hd128483128521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128484128517_)))
                                                (_tl128482128524_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128484128517_))))
                                            ((lambda (_L128527_
                                                      _L128529_
                                                      _L128530_)
                                               (if (and (gx#identifier-list?
                                                         _L128529_)
                                                        (gx#stx-list?
                                                         _L128527_))
                                                   (let* ((_g128548128556_
                                                           (lambda (_g128549128552_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128549128552_)))
                                                          (_g128547128609_
                                                           (lambda (_g128549128560_)
                                                             ((lambda (_L128563_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128575128583_
                                  (lambda (_g128576128579_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128576128579_)))
                                 (_g128574128605_
                                  (lambda (_g128576128587_)
                                    ((lambda (_L128590_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134421
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134416
                                                  (let ((__tmp134418
                                                         (let ((__tmp134419
                                                                (let ((__tmp134420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128530_ '()))))
                          (declare (not safe))
                          (cons _L128563_ __tmp134420))))
                   (declare (not safe))
                   (cons __tmp134419 '())))
                (__tmp134417
                 (let () (declare (not safe)) (cons _L128590_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134418
                                                          __tmp134417))))
                                             (declare (not safe))
                                             (cons __tmp134421 __tmp134416)))))
                                     _g128576128587_))))
                            (_g128574128605_
                             (_generate128468_
                              _L128563_
                              (gx#syntax->list _L128529_)
                              _L128527_)))))
                      _g128549128560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128547128609_
                                                      (gx#genident 'e)))
                                                   (_g128471128490_
                                                    _g128472128494_)))
                                             _tl128482128524_
                                             _hd128483128521_
                                             _hd128480128511_)))
                                        (_g128471128490_ _g128472128494_))))
                                (_g128471128490_ _g128472128494_))))
                        (_g128471128490_ _g128472128494_)))))
            (_g128470128613_ _stx128465_)))))))
