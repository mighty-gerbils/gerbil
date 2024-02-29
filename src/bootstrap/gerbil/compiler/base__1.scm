(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98273_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98275_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98277_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98282_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98285_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98290_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98293_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98298_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98301_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98306_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98309_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97630_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97630_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97633_)
        (let* ((_g9763697660_
                (lambda (_g9763797656_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9763797656_))))
               (_g9763597963_
                (lambda (_g9763797664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9763797664_))
                      (let ((_e9764297667_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9763797664_))))
                        (let ((_hd9764197671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9764297667_)))
                              (_tl9764097674_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9764297667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9764097674_))
                              (let ((_e9764597677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9764097674_))))
                                (let ((_hd9764497681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9764597677_)))
                                      (_tl9764397684_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9764597677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9764397684_))
                                      (let ((_g98244_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9764397684_
                                                '0))))
                                        (begin
                                          (let ((_g98245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98244_)
                                                       (##vector-length
                                                        _g98244_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98245_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98245_)))
                                          (let ((_target9764697687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98244_ 0)))
                                                (_tl9764897690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98244_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9764897690_))
                                                (letrec ((_loop9764997693_
                                                          (lambda (_hd9764797697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9765397700_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9764797697_))
                        (let ((_e9765097703_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9764797697_))))
                          (let ((_lp-hd9765197707_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9765097703_)))
                                (_lp-tl9765297710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9765097703_))))
                            (_loop9764997693_
                             _lp-tl9765297710_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9765197707_ _clause9765397700_)))))
                        (let ((_clause9765497713_
                               (reverse _clause9765397700_)))
                          ((lambda (_L97717_ _L97719_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97719_))
                                 (let* ((_g9773897755_
                                         (lambda (_g9773997751_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9773997751_))))
                                        (_g9773797816_
                                         (lambda (_g9773997759_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9773997759_))
                                               (let ((_g98246_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9773997759_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98247_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98246_)
                        (##vector-length _g98246_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98247_ 2)))
                 (error "Context expects 2 values" _g98247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9774197762_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98246_
                                                             0)))
                                                         (_tl9774397765_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98246_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9774397765_))
                                                         (letrec ((_loop9774497768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9774297772_ _clause9774897775_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9774297772_))
                                 (let ((_e9774597778_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9774297772_))))
                                   (let ((_lp-hd9774697782_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9774597778_)))
                                         (_lp-tl9774797785_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9774597778_))))
                                     (_loop9774497768_
                                      _lp-tl9774797785_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9774697782_
                                              _clause9774897775_)))))
                                 (let ((_clause9774997788_
                                        (reverse _clause9774897775_)))
                                   ((lambda (_L97792_)
                                      (let ()
                                        (let ((__tmp98259
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98248
                                               (let ((__tmp98257
                                                      (let ((__tmp98258
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98258 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98249
                                                      (let ((__tmp98250
                                                             (let ((__tmp98256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98251
                            (let ((__tmp98255
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98252
                                   (let ((__tmp98253
                                          (let ((__tmp98254
                                                 (lambda (_g9780797810_
                                                          _g9780897813_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9780797810_
                                                           _g9780897813_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98254 '() _L97792_))))
                                     (declare (not safe))
                                     (cons _L97719_ __tmp98253))))
                              (declare (not safe))
                              (cons __tmp98255 __tmp98252))))
                       (declare (not safe))
                       (cons __tmp98256 __tmp98251))))
                (declare (not safe))
                (cons __tmp98250 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98257
                                                       __tmp98249))))
                                          (declare (not safe))
                                          (cons __tmp98259 __tmp98248))))
                                    _clause9774997788_))))))
                   (_loop9774497768_ _target9774197762_ '()))
                 (_g9773897755_ _g9773997759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9773897755_
                                                _g9773997759_)))))
                                   (_g9773797816_
                                    (let ((__tmp98262
                                           (lambda (_clause97820_)
                                             (let* ((___stx9818998190_
                                                     _clause97820_)
                                                    (_g9782497851_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9818998190_)))))
                                               (let ((___kont9819298193_
                                                      (lambda (_L97936_
                                                               _L97938_)
                                                        (let ((__tmp98263
                                                               (let ((__tmp98264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98266
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98265
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97936_ '()))))
                                (declare (not safe))
                                (cons __tmp98266 __tmp98265))))
                         (declare (not safe))
                         (cons __tmp98264 '()))))
                  (declare (not safe))
                  (cons _L97938_ __tmp98263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9819498195_
                                                      (lambda (_L97888_
                                                               _L97890_
                                                               _L97891_)
                                                        (let ((__tmp98267
                                                               (let ((__tmp98268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98269
                                     (let ((__tmp98271
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98270
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97888_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98271 __tmp98270))))
                                (declare (not safe))
                                (cons __tmp98269 '()))))
                         (declare (not safe))
                         (cons _L97890_ __tmp98268))))
                  (declare (not safe))
                  (cons _L97891_ __tmp98267)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9818998190_))
                                                     (let ((_e9783097916_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9818998190_))))
                                                       (let ((_tl9782897923_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9783097916_)))
                     (_hd9782997920_
                      (let () (declare (not safe)) (##car _e9783097916_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9782897923_))
                     (let ((_e9783397926_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9782897923_))))
                       (let ((_tl9783197933_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9783397926_)))
                             (_hd9783297930_
                              (let ()
                                (declare (not safe))
                                (##car _e9783397926_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9783197933_))
                             (___kont9819298193_ _hd9783297930_ _hd9782997920_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9783197933_))
                                 (let ((_e9784597878_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9783197933_))))
                                   (let ((_tl9784397885_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9784597878_)))
                                         (_hd9784497882_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9784597878_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9784397885_))
                                         (___kont9819498195_
                                          _hd9784497882_
                                          _hd9783297930_
                                          _hd9782997920_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9782497851_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9782497851_))))))
                     (let () (declare (not safe)) (_g9782497851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9782497851_)))))))
                                          (__tmp98260
                                           (let ((__tmp98261
                                                  (lambda (_g9795497957_
                                                           _g9795597960_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9795497957_
                                                            _g9795597960_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98261
                                                     '()
                                                     _L97717_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98262 __tmp98260))))
                                 (_g9763697660_ _g9763797664_)))
                           _clause9765497713_
                           _hd9764497681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9764997693_
                                                   _target9764697687_
                                                   '()))
                                                (_g9763697660_
                                                 _g9763797664_)))))
                                      (_g9763697660_ _g9763797664_))))
                              (_g9763697660_ _g9763797664_))))
                      (_g9763697660_ _g9763797664_)))))
          (_g9763597963_ _stx97633_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98232
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
           __obj98232
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98272 |gxc[1]#_g98273_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98272
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98274 |gxc[1]#_g98275_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98274
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98276 |gxc[1]#_g98277_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98276
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98278
               (let ((__tmp98283
                      (let ((__tmp98284 |gxc[1]#_g98285_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98284)))
                     (__tmp98279
                      (let ((__tmp98280
                             (let ((__tmp98281 |gxc[1]#_g98282_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98281))))
                        (declare (not safe))
                        (cons __tmp98280 '()))))
                 (declare (not safe))
                 (cons __tmp98283 __tmp98279))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98278
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98286
               (let ((__tmp98291
                      (let ((__tmp98292 |gxc[1]#_g98293_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98292)))
                     (__tmp98287
                      (let ((__tmp98288
                             (let ((__tmp98289 |gxc[1]#_g98290_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98289))))
                        (declare (not safe))
                        (cons __tmp98288 '()))))
                 (declare (not safe))
                 (cons __tmp98291 __tmp98287))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98286
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98294
               (let ((__tmp98299
                      (let ((__tmp98300 |gxc[1]#_g98301_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98300)))
                     (__tmp98295
                      (let ((__tmp98296
                             (let ((__tmp98297 |gxc[1]#_g98298_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98297))))
                        (declare (not safe))
                        (cons __tmp98296 '()))))
                 (declare (not safe))
                 (cons __tmp98299 __tmp98295))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98294
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98302
               (let ((__tmp98307
                      (let ((__tmp98308 |gxc[1]#_g98309_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98308)))
                     (__tmp98303
                      (let ((__tmp98304
                             (let ((__tmp98305 |gxc[1]#_g98306_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98305))))
                        (declare (not safe))
                        (cons __tmp98304 '()))))
                 (declare (not safe))
                 (cons __tmp98307 __tmp98303))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98232
           __tmp98302
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98232))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97969_)
        (let* ((_g9797397987_
                (lambda (_g9797497983_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9797497983_))))
               (_g9797298028_
                (lambda (_g9797497991_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9797497991_))
                      (let ((_e9797897994_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9797497991_))))
                        (let ((_hd9797797998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9797897994_)))
                              (_tl9797698001_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9797897994_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9797698001_))
                              (let ((_e9798198004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9797698001_))))
                                (let ((_hd9798098008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9798198004_)))
                                      (_tl9797998011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9798198004_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9797998011_))
                                      ((lambda (_L98014_)
                                         (let ((__tmp98317
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98310
                                                (let ((__tmp98316
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98311
                                                       (let ((__tmp98312
                                                              (let ((__tmp98315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98313
                             (let ((__tmp98314
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98014_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98314))))
                        (declare (not safe))
                        (cons __tmp98315 __tmp98313))))
                 (declare (not safe))
                 (cons __tmp98312 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98316
                                                        __tmp98311))))
                                           (declare (not safe))
                                           (cons __tmp98317 __tmp98310)))
                                       _hd9798098008_)
                                      (_g9797397987_ _g9797497991_))))
                              (_g9797397987_ _g9797497991_))))
                      (_g9797397987_ _g9797497991_)))))
          (_g9797298028_ _$stx97969_))))))
