(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98286_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98288_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98290_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98295_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98298_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98303_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98306_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98311_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98314_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98319_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98322_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97643_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97643_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97646_)
        (let* ((_g9764997673_
                (lambda (_g9765097669_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9765097669_))))
               (_g9764897976_
                (lambda (_g9765097677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9765097677_))
                      (let ((_e9765597680_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9765097677_))))
                        (let ((_hd9765497684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9765597680_)))
                              (_tl9765397687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9765597680_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9765397687_))
                              (let ((_e9765897690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9765397687_))))
                                (let ((_hd9765797694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9765897690_)))
                                      (_tl9765697697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9765897690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9765697697_))
                                      (let ((_g98257_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9765697697_
                                                '0))))
                                        (begin
                                          (let ((_g98258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98257_)
                                                       (##vector-length
                                                        _g98257_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98258_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98258_)))
                                          (let ((_target9765997700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98257_ 0)))
                                                (_tl9766197703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98257_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9766197703_))
                                                (letrec ((_loop9766297706_
                                                          (lambda (_hd9766097710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9766697713_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9766097710_))
                        (let ((_e9766397716_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9766097710_))))
                          (let ((_lp-hd9766497720_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9766397716_)))
                                (_lp-tl9766597723_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9766397716_))))
                            (_loop9766297706_
                             _lp-tl9766597723_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9766497720_ _clause9766697713_)))))
                        (let ((_clause9766797726_
                               (reverse _clause9766697713_)))
                          ((lambda (_L97730_ _L97732_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97732_))
                                 (let* ((_g9775197768_
                                         (lambda (_g9775297764_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9775297764_))))
                                        (_g9775097829_
                                         (lambda (_g9775297772_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9775297772_))
                                               (let ((_g98259_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9775297772_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98259_)
                        (##vector-length _g98259_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98260_ 2)))
                 (error "Context expects 2 values" _g98260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9775497775_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98259_
                                                             0)))
                                                         (_tl9775697778_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98259_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9775697778_))
                                                         (letrec ((_loop9775797781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9775597785_ _clause9776197788_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9775597785_))
                                 (let ((_e9775897791_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9775597785_))))
                                   (let ((_lp-hd9775997795_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9775897791_)))
                                         (_lp-tl9776097798_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9775897791_))))
                                     (_loop9775797781_
                                      _lp-tl9776097798_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9775997795_
                                              _clause9776197788_)))))
                                 (let ((_clause9776297801_
                                        (reverse _clause9776197788_)))
                                   ((lambda (_L97805_)
                                      (let ()
                                        (let ((__tmp98272
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98261
                                               (let ((__tmp98270
                                                      (let ((__tmp98271
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98271 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98262
                                                      (let ((__tmp98263
                                                             (let ((__tmp98269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98264
                            (let ((__tmp98268
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98265
                                   (let ((__tmp98266
                                          (let ((__tmp98267
                                                 (lambda (_g9782097823_
                                                          _g9782197826_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9782097823_
                                                           _g9782197826_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98267 '() _L97805_))))
                                     (declare (not safe))
                                     (cons _L97732_ __tmp98266))))
                              (declare (not safe))
                              (cons __tmp98268 __tmp98265))))
                       (declare (not safe))
                       (cons __tmp98269 __tmp98264))))
                (declare (not safe))
                (cons __tmp98263 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98270
                                                       __tmp98262))))
                                          (declare (not safe))
                                          (cons __tmp98272 __tmp98261))))
                                    _clause9776297801_))))))
                   (_loop9775797781_ _target9775497775_ '()))
                 (_g9775197768_ _g9775297772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9775197768_
                                                _g9775297772_)))))
                                   (_g9775097829_
                                    (let ((__tmp98275
                                           (lambda (_clause97833_)
                                             (let* ((___stx9820298203_
                                                     _clause97833_)
                                                    (_g9783797864_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9820298203_)))))
                                               (let ((___kont9820598206_
                                                      (lambda (_L97949_
                                                               _L97951_)
                                                        (let ((__tmp98276
                                                               (let ((__tmp98277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98279
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98278
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97949_ '()))))
                                (declare (not safe))
                                (cons __tmp98279 __tmp98278))))
                         (declare (not safe))
                         (cons __tmp98277 '()))))
                  (declare (not safe))
                  (cons _L97951_ __tmp98276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9820798208_
                                                      (lambda (_L97901_
                                                               _L97903_
                                                               _L97904_)
                                                        (let ((__tmp98280
                                                               (let ((__tmp98281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98282
                                     (let ((__tmp98284
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98283
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97901_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98284 __tmp98283))))
                                (declare (not safe))
                                (cons __tmp98282 '()))))
                         (declare (not safe))
                         (cons _L97903_ __tmp98281))))
                  (declare (not safe))
                  (cons _L97904_ __tmp98280)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9820298203_))
                                                     (let ((_e9784397929_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9820298203_))))
                                                       (let ((_tl9784197936_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9784397929_)))
                     (_hd9784297933_
                      (let () (declare (not safe)) (##car _e9784397929_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9784197936_))
                     (let ((_e9784697939_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9784197936_))))
                       (let ((_tl9784497946_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9784697939_)))
                             (_hd9784597943_
                              (let ()
                                (declare (not safe))
                                (##car _e9784697939_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9784497946_))
                             (___kont9820598206_ _hd9784597943_ _hd9784297933_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9784497946_))
                                 (let ((_e9785897891_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9784497946_))))
                                   (let ((_tl9785697898_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9785897891_)))
                                         (_hd9785797895_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9785897891_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9785697898_))
                                         (___kont9820798208_
                                          _hd9785797895_
                                          _hd9784597943_
                                          _hd9784297933_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9783797864_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9783797864_))))))
                     (let () (declare (not safe)) (_g9783797864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9783797864_)))))))
                                          (__tmp98273
                                           (let ((__tmp98274
                                                  (lambda (_g9796797970_
                                                           _g9796897973_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9796797970_
                                                            _g9796897973_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98274
                                                     '()
                                                     _L97730_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98275 __tmp98273))))
                                 (_g9764997673_ _g9765097677_)))
                           _clause9766797726_
                           _hd9765797694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9766297706_
                                                   _target9765997700_
                                                   '()))
                                                (_g9764997673_
                                                 _g9765097677_)))))
                                      (_g9764997673_ _g9765097677_))))
                              (_g9764997673_ _g9765097677_))))
                      (_g9764997673_ _g9765097677_)))))
          (_g9764897976_ _stx97646_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98245
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98285 |gxc[1]#_g98286_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98285
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98287 |gxc[1]#_g98288_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98287
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98289 |gxc[1]#_g98290_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98289
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98291
               (let ((__tmp98296
                      (let ((__tmp98297 |gxc[1]#_g98298_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98297)))
                     (__tmp98292
                      (let ((__tmp98293
                             (let ((__tmp98294 |gxc[1]#_g98295_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98294))))
                        (declare (not safe))
                        (cons __tmp98293 '()))))
                 (declare (not safe))
                 (cons __tmp98296 __tmp98292))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98291
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98299
               (let ((__tmp98304
                      (let ((__tmp98305 |gxc[1]#_g98306_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98305)))
                     (__tmp98300
                      (let ((__tmp98301
                             (let ((__tmp98302 |gxc[1]#_g98303_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98302))))
                        (declare (not safe))
                        (cons __tmp98301 '()))))
                 (declare (not safe))
                 (cons __tmp98304 __tmp98300))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98299
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98307
               (let ((__tmp98312
                      (let ((__tmp98313 |gxc[1]#_g98314_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98313)))
                     (__tmp98308
                      (let ((__tmp98309
                             (let ((__tmp98310 |gxc[1]#_g98311_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98310))))
                        (declare (not safe))
                        (cons __tmp98309 '()))))
                 (declare (not safe))
                 (cons __tmp98312 __tmp98308))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98307
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98315
               (let ((__tmp98320
                      (let ((__tmp98321 |gxc[1]#_g98322_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98321)))
                     (__tmp98316
                      (let ((__tmp98317
                             (let ((__tmp98318 |gxc[1]#_g98319_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98318))))
                        (declare (not safe))
                        (cons __tmp98317 '()))))
                 (declare (not safe))
                 (cons __tmp98320 __tmp98316))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98245
           __tmp98315
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98245))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97982_)
        (let* ((_g9798698000_
                (lambda (_g9798797996_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9798797996_))))
               (_g9798598041_
                (lambda (_g9798798004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9798798004_))
                      (let ((_e9799198007_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9798798004_))))
                        (let ((_hd9799098011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9799198007_)))
                              (_tl9798998014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9799198007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9798998014_))
                              (let ((_e9799498017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9798998014_))))
                                (let ((_hd9799398021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9799498017_)))
                                      (_tl9799298024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9799498017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9799298024_))
                                      ((lambda (_L98027_)
                                         (let ((__tmp98330
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98323
                                                (let ((__tmp98329
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98324
                                                       (let ((__tmp98325
                                                              (let ((__tmp98328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98326
                             (let ((__tmp98327
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98027_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98327))))
                        (declare (not safe))
                        (cons __tmp98328 __tmp98326))))
                 (declare (not safe))
                 (cons __tmp98325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98329
                                                        __tmp98324))))
                                           (declare (not safe))
                                           (cons __tmp98330 __tmp98323)))
                                       _hd9799398021_)
                                      (_g9798698000_ _g9798798004_))))
                              (_g9798698000_ _g9798798004_))))
                      (_g9798698000_ _g9798798004_)))))
          (_g9798598041_ _$stx97982_))))))
