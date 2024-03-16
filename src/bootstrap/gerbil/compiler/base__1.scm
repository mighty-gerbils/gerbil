(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99300_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99302_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99304_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99309_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99312_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99317_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99320_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99325_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99328_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99333_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99336_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98657_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98657_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98660_)
        (let* ((_g9866398687_
                (lambda (_g9866498683_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9866498683_))))
               (_g9866298990_
                (lambda (_g9866498691_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9866498691_))
                      (let ((_e9866998694_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9866498691_))))
                        (let ((_hd9866898698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9866998694_)))
                              (_tl9866798701_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9866998694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9866798701_))
                              (let ((_e9867298704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9866798701_))))
                                (let ((_hd9867198708_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9867298704_)))
                                      (_tl9867098711_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9867298704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9867098711_))
                                      (let ((_g99271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9867098711_
                                                '0))))
                                        (begin
                                          (let ((_g99272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99271_)
                                                       (##vector-length
                                                        _g99271_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99272_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99272_)))
                                          (let ((_target9867398714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99271_ 0)))
                                                (_tl9867598717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99271_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9867598717_))
                                                (letrec ((_loop9867698720_
                                                          (lambda (_hd9867498724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9868098727_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9867498724_))
                        (let ((_e9867798730_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9867498724_))))
                          (let ((_lp-hd9867898734_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9867798730_)))
                                (_lp-tl9867998737_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9867798730_))))
                            (_loop9867698720_
                             _lp-tl9867998737_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9867898734_ _clause9868098727_)))))
                        (let ((_clause9868198740_
                               (reverse _clause9868098727_)))
                          ((lambda (_L98744_ _L98746_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L98746_))
                                 (let* ((_g9876598782_
                                         (lambda (_g9876698778_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9876698778_))))
                                        (_g9876498843_
                                         (lambda (_g9876698786_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9876698786_))
                                               (let ((_g99273_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9876698786_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99274_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99273_)
                        (##vector-length _g99273_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99274_ 2)))
                 (error "Context expects 2 values" _g99274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9876898789_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99273_
                                                             0)))
                                                         (_tl9877098792_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99273_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9877098792_))
                                                         (letrec ((_loop9877198795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9876998799_ _clause9877598802_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9876998799_))
                                 (let ((_e9877298805_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9876998799_))))
                                   (let ((_lp-hd9877398809_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9877298805_)))
                                         (_lp-tl9877498812_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9877298805_))))
                                     (_loop9877198795_
                                      _lp-tl9877498812_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9877398809_
                                              _clause9877598802_)))))
                                 (let ((_clause9877698815_
                                        (reverse _clause9877598802_)))
                                   ((lambda (_L98819_)
                                      (let ()
                                        (let ((__tmp99286
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99275
                                               (let ((__tmp99284
                                                      (let ((__tmp99285
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99285 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99276
                                                      (let ((__tmp99277
                                                             (let ((__tmp99283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99278
                            (let ((__tmp99282
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99279
                                   (let ((__tmp99280
                                          (let ((__tmp99281
                                                 (lambda (_g9883498837_
                                                          _g9883598840_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9883498837_
                                                           _g9883598840_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99281 '() _L98819_))))
                                     (declare (not safe))
                                     (cons _L98746_ __tmp99280))))
                              (declare (not safe))
                              (cons __tmp99282 __tmp99279))))
                       (declare (not safe))
                       (cons __tmp99283 __tmp99278))))
                (declare (not safe))
                (cons __tmp99277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99284
                                                       __tmp99276))))
                                          (declare (not safe))
                                          (cons __tmp99286 __tmp99275))))
                                    _clause9877698815_))))))
                   (_loop9877198795_ _target9876898789_ '()))
                 (_g9876598782_ _g9876698786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9876598782_
                                                _g9876698786_)))))
                                   (_g9876498843_
                                    (let ((__tmp99289
                                           (lambda (_clause98847_)
                                             (let* ((___stx9921699217_
                                                     _clause98847_)
                                                    (_g9885198878_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9921699217_)))))
                                               (let ((___kont9921999220_
                                                      (lambda (_L98963_
                                                               _L98965_)
                                                        (let ((__tmp99290
                                                               (let ((__tmp99291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99293
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99292
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98963_ '()))))
                                (declare (not safe))
                                (cons __tmp99293 __tmp99292))))
                         (declare (not safe))
                         (cons __tmp99291 '()))))
                  (declare (not safe))
                  (cons _L98965_ __tmp99290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9922199222_
                                                      (lambda (_L98915_
                                                               _L98917_
                                                               _L98918_)
                                                        (let ((__tmp99294
                                                               (let ((__tmp99295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99296
                                     (let ((__tmp99298
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99297
                                            (let ()
                                              (declare (not safe))
                                              (cons _L98915_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99298 __tmp99297))))
                                (declare (not safe))
                                (cons __tmp99296 '()))))
                         (declare (not safe))
                         (cons _L98917_ __tmp99295))))
                  (declare (not safe))
                  (cons _L98918_ __tmp99294)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9921699217_))
                                                     (let ((_e9885798943_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9921699217_))))
                                                       (let ((_tl9885598950_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9885798943_)))
                     (_hd9885698947_
                      (let () (declare (not safe)) (##car _e9885798943_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9885598950_))
                     (let ((_e9886098953_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9885598950_))))
                       (let ((_tl9885898960_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9886098953_)))
                             (_hd9885998957_
                              (let ()
                                (declare (not safe))
                                (##car _e9886098953_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9885898960_))
                             (___kont9921999220_ _hd9885998957_ _hd9885698947_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9885898960_))
                                 (let ((_e9887298905_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9885898960_))))
                                   (let ((_tl9887098912_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9887298905_)))
                                         (_hd9887198909_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9887298905_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9887098912_))
                                         (___kont9922199222_
                                          _hd9887198909_
                                          _hd9885998957_
                                          _hd9885698947_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9885198878_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9885198878_))))))
                     (let () (declare (not safe)) (_g9885198878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9885198878_)))))))
                                          (__tmp99287
                                           (let ((__tmp99288
                                                  (lambda (_g9898198984_
                                                           _g9898298987_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9898198984_
                                                            _g9898298987_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99288
                                                     '()
                                                     _L98744_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99289 __tmp99287))))
                                 (_g9866398687_ _g9866498691_)))
                           _clause9868198740_
                           _hd9867198708_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9867698720_
                                                   _target9867398714_
                                                   '()))
                                                (_g9866398687_
                                                 _g9866498691_)))))
                                      (_g9866398687_ _g9866498691_))))
                              (_g9866398687_ _g9866498691_))))
                      (_g9866398687_ _g9866498691_)))))
          (_g9866298990_ _stx98660_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99259
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           'symbol-table
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           '(gensyms bindings)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           ':init!
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99299 |gxc[1]#_g99300_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99299
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99301 |gxc[1]#_g99302_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99301
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99303 |gxc[1]#_g99304_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99303
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99305
               (let ((__tmp99310
                      (let ((__tmp99311 |gxc[1]#_g99312_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99311)))
                     (__tmp99306
                      (let ((__tmp99307
                             (let ((__tmp99308 |gxc[1]#_g99309_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99308))))
                        (declare (not safe))
                        (cons __tmp99307 '()))))
                 (declare (not safe))
                 (cons __tmp99310 __tmp99306))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99305
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99313
               (let ((__tmp99318
                      (let ((__tmp99319 |gxc[1]#_g99320_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99319)))
                     (__tmp99314
                      (let ((__tmp99315
                             (let ((__tmp99316 |gxc[1]#_g99317_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99316))))
                        (declare (not safe))
                        (cons __tmp99315 '()))))
                 (declare (not safe))
                 (cons __tmp99318 __tmp99314))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99313
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99321
               (let ((__tmp99326
                      (let ((__tmp99327 |gxc[1]#_g99328_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99327)))
                     (__tmp99322
                      (let ((__tmp99323
                             (let ((__tmp99324 |gxc[1]#_g99325_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99324))))
                        (declare (not safe))
                        (cons __tmp99323 '()))))
                 (declare (not safe))
                 (cons __tmp99326 __tmp99322))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99321
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp99329
               (let ((__tmp99334
                      (let ((__tmp99335 |gxc[1]#_g99336_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99335)))
                     (__tmp99330
                      (let ((__tmp99331
                             (let ((__tmp99332 |gxc[1]#_g99333_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99332))))
                        (declare (not safe))
                        (cons __tmp99331 '()))))
                 (declare (not safe))
                 (cons __tmp99334 __tmp99330))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99259
           __tmp99329
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj99259))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx98996_)
        (let* ((_g9900099014_
                (lambda (_g9900199010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9900199010_))))
               (_g9899999055_
                (lambda (_g9900199018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9900199018_))
                      (let ((_e9900599021_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9900199018_))))
                        (let ((_hd9900499025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9900599021_)))
                              (_tl9900399028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9900599021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9900399028_))
                              (let ((_e9900899031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9900399028_))))
                                (let ((_hd9900799035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9900899031_)))
                                      (_tl9900699038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9900899031_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9900699038_))
                                      ((lambda (_L99041_)
                                         (let ((__tmp99344
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99337
                                                (let ((__tmp99343
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99338
                                                       (let ((__tmp99339
                                                              (let ((__tmp99342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99340
                             (let ((__tmp99341
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99041_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99341))))
                        (declare (not safe))
                        (cons __tmp99342 __tmp99340))))
                 (declare (not safe))
                 (cons __tmp99339 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99343
                                                        __tmp99338))))
                                           (declare (not safe))
                                           (cons __tmp99344 __tmp99337)))
                                       _hd9900799035_)
                                      (_g9900099014_ _g9900199018_))))
                              (_g9900099014_ _g9900199018_))))
                      (_g9900099014_ _g9900199018_)))))
          (_g9899999055_ _$stx98996_))))))
