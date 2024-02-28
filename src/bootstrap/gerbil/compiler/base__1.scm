(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98276_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98278_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98280_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98285_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98288_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98293_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98296_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98301_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98304_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98309_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98312_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97633_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97633_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97636_)
        (let* ((_g9763997663_
                (lambda (_g9764097659_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9764097659_))))
               (_g9763897966_
                (lambda (_g9764097667_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9764097667_))
                      (let ((_e9764597670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9764097667_))))
                        (let ((_hd9764497674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9764597670_)))
                              (_tl9764397677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9764597670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9764397677_))
                              (let ((_e9764897680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9764397677_))))
                                (let ((_hd9764797684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9764897680_)))
                                      (_tl9764697687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9764897680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9764697687_))
                                      (let ((_g98247_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9764697687_
                                                '0))))
                                        (begin
                                          (let ((_g98248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98247_)
                                                       (##vector-length
                                                        _g98247_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98248_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98248_)))
                                          (let ((_target9764997690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98247_ 0)))
                                                (_tl9765197693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98247_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9765197693_))
                                                (letrec ((_loop9765297696_
                                                          (lambda (_hd9765097700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9765697703_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9765097700_))
                        (let ((_e9765397706_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9765097700_))))
                          (let ((_lp-hd9765497710_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9765397706_)))
                                (_lp-tl9765597713_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9765397706_))))
                            (_loop9765297696_
                             _lp-tl9765597713_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9765497710_ _clause9765697703_)))))
                        (let ((_clause9765797716_
                               (reverse _clause9765697703_)))
                          ((lambda (_L97720_ _L97722_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97722_))
                                 (let* ((_g9774197758_
                                         (lambda (_g9774297754_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9774297754_))))
                                        (_g9774097819_
                                         (lambda (_g9774297762_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9774297762_))
                                               (let ((_g98249_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9774297762_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98250_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98249_)
                        (##vector-length _g98249_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98250_ 2)))
                 (error "Context expects 2 values" _g98250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9774497765_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98249_
                                                             0)))
                                                         (_tl9774697768_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98249_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9774697768_))
                                                         (letrec ((_loop9774797771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9774597775_ _clause9775197778_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9774597775_))
                                 (let ((_e9774897781_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9774597775_))))
                                   (let ((_lp-hd9774997785_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9774897781_)))
                                         (_lp-tl9775097788_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9774897781_))))
                                     (_loop9774797771_
                                      _lp-tl9775097788_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9774997785_
                                              _clause9775197778_)))))
                                 (let ((_clause9775297791_
                                        (reverse _clause9775197778_)))
                                   ((lambda (_L97795_)
                                      (let ()
                                        (let ((__tmp98262
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98251
                                               (let ((__tmp98260
                                                      (let ((__tmp98261
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98261 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98252
                                                      (let ((__tmp98253
                                                             (let ((__tmp98259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98254
                            (let ((__tmp98258
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98255
                                   (let ((__tmp98256
                                          (let ((__tmp98257
                                                 (lambda (_g9781097813_
                                                          _g9781197816_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9781097813_
                                                           _g9781197816_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98257 '() _L97795_))))
                                     (declare (not safe))
                                     (cons _L97722_ __tmp98256))))
                              (declare (not safe))
                              (cons __tmp98258 __tmp98255))))
                       (declare (not safe))
                       (cons __tmp98259 __tmp98254))))
                (declare (not safe))
                (cons __tmp98253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98260
                                                       __tmp98252))))
                                          (declare (not safe))
                                          (cons __tmp98262 __tmp98251))))
                                    _clause9775297791_))))))
                   (_loop9774797771_ _target9774497765_ '()))
                 (_g9774197758_ _g9774297762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9774197758_
                                                _g9774297762_)))))
                                   (_g9774097819_
                                    (let ((__tmp98265
                                           (lambda (_clause97823_)
                                             (let* ((___stx9819298193_
                                                     _clause97823_)
                                                    (_g9782797854_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9819298193_)))))
                                               (let ((___kont9819598196_
                                                      (lambda (_L97939_
                                                               _L97941_)
                                                        (let ((__tmp98266
                                                               (let ((__tmp98267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98269
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98268
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97939_ '()))))
                                (declare (not safe))
                                (cons __tmp98269 __tmp98268))))
                         (declare (not safe))
                         (cons __tmp98267 '()))))
                  (declare (not safe))
                  (cons _L97941_ __tmp98266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9819798198_
                                                      (lambda (_L97891_
                                                               _L97893_
                                                               _L97894_)
                                                        (let ((__tmp98270
                                                               (let ((__tmp98271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98272
                                     (let ((__tmp98274
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98273
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97891_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98274 __tmp98273))))
                                (declare (not safe))
                                (cons __tmp98272 '()))))
                         (declare (not safe))
                         (cons _L97893_ __tmp98271))))
                  (declare (not safe))
                  (cons _L97894_ __tmp98270)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9819298193_))
                                                     (let ((_e9783397919_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9819298193_))))
                                                       (let ((_tl9783197926_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9783397919_)))
                     (_hd9783297923_
                      (let () (declare (not safe)) (##car _e9783397919_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9783197926_))
                     (let ((_e9783697929_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9783197926_))))
                       (let ((_tl9783497936_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9783697929_)))
                             (_hd9783597933_
                              (let ()
                                (declare (not safe))
                                (##car _e9783697929_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9783497936_))
                             (___kont9819598196_ _hd9783597933_ _hd9783297923_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9783497936_))
                                 (let ((_e9784897881_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9783497936_))))
                                   (let ((_tl9784697888_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9784897881_)))
                                         (_hd9784797885_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9784897881_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9784697888_))
                                         (___kont9819798198_
                                          _hd9784797885_
                                          _hd9783597933_
                                          _hd9783297923_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9782797854_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9782797854_))))))
                     (let () (declare (not safe)) (_g9782797854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9782797854_)))))))
                                          (__tmp98263
                                           (let ((__tmp98264
                                                  (lambda (_g9795797960_
                                                           _g9795897963_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9795797960_
                                                            _g9795897963_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98264
                                                     '()
                                                     _L97720_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98265 __tmp98263))))
                                 (_g9763997663_ _g9764097667_)))
                           _clause9765797716_
                           _hd9764797684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9765297696_
                                                   _target9764997690_
                                                   '()))
                                                (_g9763997663_
                                                 _g9764097667_)))))
                                      (_g9763997663_ _g9764097667_))))
                              (_g9763997663_ _g9764097667_))))
                      (_g9763997663_ _g9764097667_)))))
          (_g9763897966_ _stx97636_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98235
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
           __obj98235
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98275 |gxc[1]#_g98276_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98275
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98277 |gxc[1]#_g98278_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98277
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98279 |gxc[1]#_g98280_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98279
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98281
               (let ((__tmp98286
                      (let ((__tmp98287 |gxc[1]#_g98288_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98287)))
                     (__tmp98282
                      (let ((__tmp98283
                             (let ((__tmp98284 |gxc[1]#_g98285_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98284))))
                        (declare (not safe))
                        (cons __tmp98283 '()))))
                 (declare (not safe))
                 (cons __tmp98286 __tmp98282))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98281
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98289
               (let ((__tmp98294
                      (let ((__tmp98295 |gxc[1]#_g98296_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98295)))
                     (__tmp98290
                      (let ((__tmp98291
                             (let ((__tmp98292 |gxc[1]#_g98293_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98292))))
                        (declare (not safe))
                        (cons __tmp98291 '()))))
                 (declare (not safe))
                 (cons __tmp98294 __tmp98290))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98289
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98297
               (let ((__tmp98302
                      (let ((__tmp98303 |gxc[1]#_g98304_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98303)))
                     (__tmp98298
                      (let ((__tmp98299
                             (let ((__tmp98300 |gxc[1]#_g98301_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98300))))
                        (declare (not safe))
                        (cons __tmp98299 '()))))
                 (declare (not safe))
                 (cons __tmp98302 __tmp98298))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98297
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98305
               (let ((__tmp98310
                      (let ((__tmp98311 |gxc[1]#_g98312_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98311)))
                     (__tmp98306
                      (let ((__tmp98307
                             (let ((__tmp98308 |gxc[1]#_g98309_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98308))))
                        (declare (not safe))
                        (cons __tmp98307 '()))))
                 (declare (not safe))
                 (cons __tmp98310 __tmp98306))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98235
           __tmp98305
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98235))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97972_)
        (let* ((_g9797697990_
                (lambda (_g9797797986_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9797797986_))))
               (_g9797598031_
                (lambda (_g9797797994_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9797797994_))
                      (let ((_e9798197997_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9797797994_))))
                        (let ((_hd9798098001_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9798197997_)))
                              (_tl9797998004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9798197997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9797998004_))
                              (let ((_e9798498007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9797998004_))))
                                (let ((_hd9798398011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9798498007_)))
                                      (_tl9798298014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9798498007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9798298014_))
                                      ((lambda (_L98017_)
                                         (let ((__tmp98320
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98313
                                                (let ((__tmp98319
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98314
                                                       (let ((__tmp98315
                                                              (let ((__tmp98318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98316
                             (let ((__tmp98317
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98017_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98317))))
                        (declare (not safe))
                        (cons __tmp98318 __tmp98316))))
                 (declare (not safe))
                 (cons __tmp98315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98319
                                                        __tmp98314))))
                                           (declare (not safe))
                                           (cons __tmp98320 __tmp98313)))
                                       _hd9798398011_)
                                      (_g9797697990_ _g9797797994_))))
                              (_g9797697990_ _g9797797994_))))
                      (_g9797697990_ _g9797797994_)))))
          (_g9797598031_ _$stx97972_))))))
