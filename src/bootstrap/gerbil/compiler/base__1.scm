(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97287_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97289_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97291_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97296_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97299_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97304_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97307_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97312_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97315_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97320_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97323_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx96644_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx96644_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx96647_)
        (let* ((_g9665096674_
                (lambda (_g9665196670_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9665196670_))))
               (_g9664996977_
                (lambda (_g9665196678_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9665196678_))
                      (let ((_e9665696681_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9665196678_))))
                        (let ((_hd9665596685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9665696681_)))
                              (_tl9665496688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9665696681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9665496688_))
                              (let ((_e9665996691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9665496688_))))
                                (let ((_hd9665896695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9665996691_)))
                                      (_tl9665796698_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9665996691_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9665796698_))
                                      (let ((_g97258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9665796698_
                                                '0))))
                                        (begin
                                          (let ((_g97259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97258_)
                                                       (##vector-length
                                                        _g97258_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97259_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97259_)))
                                          (let ((_target9666096701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97258_ 0)))
                                                (_tl9666296704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97258_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9666296704_))
                                                (letrec ((_loop9666396707_
                                                          (lambda (_hd9666196711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9666796714_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9666196711_))
                        (let ((_e9666496717_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9666196711_))))
                          (let ((_lp-hd9666596721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9666496717_)))
                                (_lp-tl9666696724_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9666496717_))))
                            (_loop9666396707_
                             _lp-tl9666696724_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9666596721_ _clause9666796714_)))))
                        (let ((_clause9666896727_
                               (reverse _clause9666796714_)))
                          ((lambda (_L96731_ _L96733_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96733_))
                                 (let* ((_g9675296769_
                                         (lambda (_g9675396765_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9675396765_))))
                                        (_g9675196830_
                                         (lambda (_g9675396773_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9675396773_))
                                               (let ((_g97260_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9675396773_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97261_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97260_)
                        (##vector-length _g97260_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97261_ 2)))
                 (error "Context expects 2 values" _g97261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9675596776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97260_
                                                             0)))
                                                         (_tl9675796779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97260_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9675796779_))
                                                         (letrec ((_loop9675896782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9675696786_ _clause9676296789_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9675696786_))
                                 (let ((_e9675996792_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9675696786_))))
                                   (let ((_lp-hd9676096796_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9675996792_)))
                                         (_lp-tl9676196799_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9675996792_))))
                                     (_loop9675896782_
                                      _lp-tl9676196799_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9676096796_
                                              _clause9676296789_)))))
                                 (let ((_clause9676396802_
                                        (reverse _clause9676296789_)))
                                   ((lambda (_L96806_)
                                      (let ()
                                        (let ((__tmp97273
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97262
                                               (let ((__tmp97271
                                                      (let ((__tmp97272
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97272 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97263
                                                      (let ((__tmp97264
                                                             (let ((__tmp97270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97265
                            (let ((__tmp97269
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97266
                                   (let ((__tmp97267
                                          (let ((__tmp97268
                                                 (lambda (_g9682196824_
                                                          _g9682296827_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9682196824_
                                                           _g9682296827_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97268 '() _L96806_))))
                                     (declare (not safe))
                                     (cons _L96733_ __tmp97267))))
                              (declare (not safe))
                              (cons __tmp97269 __tmp97266))))
                       (declare (not safe))
                       (cons __tmp97270 __tmp97265))))
                (declare (not safe))
                (cons __tmp97264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97271
                                                       __tmp97263))))
                                          (declare (not safe))
                                          (cons __tmp97273 __tmp97262))))
                                    _clause9676396802_))))))
                   (_loop9675896782_ _target9675596776_ '()))
                 (_g9675296769_ _g9675396773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9675296769_
                                                _g9675396773_)))))
                                   (_g9675196830_
                                    (let ((__tmp97276
                                           (lambda (_clause96834_)
                                             (let* ((___stx9720397204_
                                                     _clause96834_)
                                                    (_g9683896865_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9720397204_)))))
                                               (let ((___kont9720697207_
                                                      (lambda (_L96950_
                                                               _L96952_)
                                                        (let ((__tmp97277
                                                               (let ((__tmp97278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97280
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97279
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96950_ '()))))
                                (declare (not safe))
                                (cons __tmp97280 __tmp97279))))
                         (declare (not safe))
                         (cons __tmp97278 '()))))
                  (declare (not safe))
                  (cons _L96952_ __tmp97277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9720897209_
                                                      (lambda (_L96902_
                                                               _L96904_
                                                               _L96905_)
                                                        (let ((__tmp97281
                                                               (let ((__tmp97282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97283
                                     (let ((__tmp97285
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97284
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96902_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97285 __tmp97284))))
                                (declare (not safe))
                                (cons __tmp97283 '()))))
                         (declare (not safe))
                         (cons _L96904_ __tmp97282))))
                  (declare (not safe))
                  (cons _L96905_ __tmp97281)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9720397204_))
                                                     (let ((_e9684496930_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9720397204_))))
                                                       (let ((_tl9684296937_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9684496930_)))
                     (_hd9684396934_
                      (let () (declare (not safe)) (##car _e9684496930_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9684296937_))
                     (let ((_e9684796940_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9684296937_))))
                       (let ((_tl9684596947_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9684796940_)))
                             (_hd9684696944_
                              (let ()
                                (declare (not safe))
                                (##car _e9684796940_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9684596947_))
                             (___kont9720697207_ _hd9684696944_ _hd9684396934_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9684596947_))
                                 (let ((_e9685996892_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9684596947_))))
                                   (let ((_tl9685796899_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9685996892_)))
                                         (_hd9685896896_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9685996892_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9685796899_))
                                         (___kont9720897209_
                                          _hd9685896896_
                                          _hd9684696944_
                                          _hd9684396934_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9683896865_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9683896865_))))))
                     (let () (declare (not safe)) (_g9683896865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9683896865_)))))))
                                          (__tmp97274
                                           (let ((__tmp97275
                                                  (lambda (_g9696896971_
                                                           _g9696996974_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9696896971_
                                                            _g9696996974_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97275
                                                     '()
                                                     _L96731_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97276 __tmp97274))))
                                 (_g9665096674_ _g9665196678_)))
                           _clause9666896727_
                           _hd9665896695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9666396707_
                                                   _target9666096701_
                                                   '()))
                                                (_g9665096674_
                                                 _g9665196678_)))))
                                      (_g9665096674_ _g9665196678_))))
                              (_g9665096674_ _g9665196678_))))
                      (_g9665096674_ _g9665196678_)))))
          (_g9664996977_ _stx96647_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97246
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
           __obj97246
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97286 |gxc[1]#_g97287_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97286
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97288 |gxc[1]#_g97289_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97288
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97290 |gxc[1]#_g97291_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97290
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97292
               (let ((__tmp97297
                      (let ((__tmp97298 |gxc[1]#_g97299_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97298)))
                     (__tmp97293
                      (let ((__tmp97294
                             (let ((__tmp97295 |gxc[1]#_g97296_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97295))))
                        (declare (not safe))
                        (cons __tmp97294 '()))))
                 (declare (not safe))
                 (cons __tmp97297 __tmp97293))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97292
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97300
               (let ((__tmp97305
                      (let ((__tmp97306 |gxc[1]#_g97307_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97306)))
                     (__tmp97301
                      (let ((__tmp97302
                             (let ((__tmp97303 |gxc[1]#_g97304_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97303))))
                        (declare (not safe))
                        (cons __tmp97302 '()))))
                 (declare (not safe))
                 (cons __tmp97305 __tmp97301))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97300
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97308
               (let ((__tmp97313
                      (let ((__tmp97314 |gxc[1]#_g97315_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97314)))
                     (__tmp97309
                      (let ((__tmp97310
                             (let ((__tmp97311 |gxc[1]#_g97312_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97311))))
                        (declare (not safe))
                        (cons __tmp97310 '()))))
                 (declare (not safe))
                 (cons __tmp97313 __tmp97309))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97308
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97316
               (let ((__tmp97321
                      (let ((__tmp97322 |gxc[1]#_g97323_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97322)))
                     (__tmp97317
                      (let ((__tmp97318
                             (let ((__tmp97319 |gxc[1]#_g97320_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97319))))
                        (declare (not safe))
                        (cons __tmp97318 '()))))
                 (declare (not safe))
                 (cons __tmp97321 __tmp97317))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97246
           __tmp97316
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97246))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96983_)
        (let* ((_g9698797001_
                (lambda (_g9698896997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9698896997_))))
               (_g9698697042_
                (lambda (_g9698897005_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9698897005_))
                      (let ((_e9699297008_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9698897005_))))
                        (let ((_hd9699197012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9699297008_)))
                              (_tl9699097015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9699297008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9699097015_))
                              (let ((_e9699597018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9699097015_))))
                                (let ((_hd9699497022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9699597018_)))
                                      (_tl9699397025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9699597018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9699397025_))
                                      ((lambda (_L97028_)
                                         (let ((__tmp97331
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97324
                                                (let ((__tmp97330
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97325
                                                       (let ((__tmp97326
                                                              (let ((__tmp97329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97327
                             (let ((__tmp97328
                                    (let ()
                                      (declare (not safe))
                                      (cons _L97028_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97328))))
                        (declare (not safe))
                        (cons __tmp97329 __tmp97327))))
                 (declare (not safe))
                 (cons __tmp97326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97330
                                                        __tmp97325))))
                                           (declare (not safe))
                                           (cons __tmp97331 __tmp97324)))
                                       _hd9699497022_)
                                      (_g9698797001_ _g9698897005_))))
                              (_g9698797001_ _g9698897005_))))
                      (_g9698797001_ _g9698897005_)))))
          (_g9698697042_ _$stx96983_))))))
