(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98266_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98268_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98270_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98275_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98278_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98283_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98286_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98291_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98294_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98299_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98302_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97623_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97623_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97626_)
        (let* ((_g9762997653_
                (lambda (_g9763097649_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9763097649_))))
               (_g9762897956_
                (lambda (_g9763097657_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9763097657_))
                      (let ((_e9763597660_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9763097657_))))
                        (let ((_hd9763497664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9763597660_)))
                              (_tl9763397667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9763597660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9763397667_))
                              (let ((_e9763897670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9763397667_))))
                                (let ((_hd9763797674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9763897670_)))
                                      (_tl9763697677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9763897670_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9763697677_))
                                      (let ((_g98237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9763697677_
                                                '0))))
                                        (begin
                                          (let ((_g98238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98237_)
                                                       (##vector-length
                                                        _g98237_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98238_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98238_)))
                                          (let ((_target9763997680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98237_ 0)))
                                                (_tl9764197683_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98237_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9764197683_))
                                                (letrec ((_loop9764297686_
                                                          (lambda (_hd9764097690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9764697693_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9764097690_))
                        (let ((_e9764397696_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9764097690_))))
                          (let ((_lp-hd9764497700_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9764397696_)))
                                (_lp-tl9764597703_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9764397696_))))
                            (_loop9764297686_
                             _lp-tl9764597703_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9764497700_ _clause9764697693_)))))
                        (let ((_clause9764797706_
                               (reverse _clause9764697693_)))
                          ((lambda (_L97710_ _L97712_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97712_))
                                 (let* ((_g9773197748_
                                         (lambda (_g9773297744_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9773297744_))))
                                        (_g9773097809_
                                         (lambda (_g9773297752_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9773297752_))
                                               (let ((_g98239_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9773297752_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98240_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98239_)
                        (##vector-length _g98239_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98240_ 2)))
                 (error "Context expects 2 values" _g98240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9773497755_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98239_
                                                             0)))
                                                         (_tl9773697758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98239_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9773697758_))
                                                         (letrec ((_loop9773797761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9773597765_ _clause9774197768_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9773597765_))
                                 (let ((_e9773897771_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9773597765_))))
                                   (let ((_lp-hd9773997775_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9773897771_)))
                                         (_lp-tl9774097778_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9773897771_))))
                                     (_loop9773797761_
                                      _lp-tl9774097778_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9773997775_
                                              _clause9774197768_)))))
                                 (let ((_clause9774297781_
                                        (reverse _clause9774197768_)))
                                   ((lambda (_L97785_)
                                      (let ()
                                        (let ((__tmp98252
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98241
                                               (let ((__tmp98250
                                                      (let ((__tmp98251
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98251 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98242
                                                      (let ((__tmp98243
                                                             (let ((__tmp98249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98244
                            (let ((__tmp98248
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98245
                                   (let ((__tmp98246
                                          (let ((__tmp98247
                                                 (lambda (_g9780097803_
                                                          _g9780197806_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9780097803_
                                                           _g9780197806_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98247 '() _L97785_))))
                                     (declare (not safe))
                                     (cons _L97712_ __tmp98246))))
                              (declare (not safe))
                              (cons __tmp98248 __tmp98245))))
                       (declare (not safe))
                       (cons __tmp98249 __tmp98244))))
                (declare (not safe))
                (cons __tmp98243 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98250
                                                       __tmp98242))))
                                          (declare (not safe))
                                          (cons __tmp98252 __tmp98241))))
                                    _clause9774297781_))))))
                   (_loop9773797761_ _target9773497755_ '()))
                 (_g9773197748_ _g9773297752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9773197748_
                                                _g9773297752_)))))
                                   (_g9773097809_
                                    (let ((__tmp98255
                                           (lambda (_clause97813_)
                                             (let* ((___stx9818298183_
                                                     _clause97813_)
                                                    (_g9781797844_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9818298183_)))))
                                               (let ((___kont9818598186_
                                                      (lambda (_L97929_
                                                               _L97931_)
                                                        (let ((__tmp98256
                                                               (let ((__tmp98257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98259
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98258
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97929_ '()))))
                                (declare (not safe))
                                (cons __tmp98259 __tmp98258))))
                         (declare (not safe))
                         (cons __tmp98257 '()))))
                  (declare (not safe))
                  (cons _L97931_ __tmp98256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9818798188_
                                                      (lambda (_L97881_
                                                               _L97883_
                                                               _L97884_)
                                                        (let ((__tmp98260
                                                               (let ((__tmp98261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98262
                                     (let ((__tmp98264
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98263
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97881_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98264 __tmp98263))))
                                (declare (not safe))
                                (cons __tmp98262 '()))))
                         (declare (not safe))
                         (cons _L97883_ __tmp98261))))
                  (declare (not safe))
                  (cons _L97884_ __tmp98260)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9818298183_))
                                                     (let ((_e9782397909_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9818298183_))))
                                                       (let ((_tl9782197916_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9782397909_)))
                     (_hd9782297913_
                      (let () (declare (not safe)) (##car _e9782397909_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9782197916_))
                     (let ((_e9782697919_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9782197916_))))
                       (let ((_tl9782497926_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9782697919_)))
                             (_hd9782597923_
                              (let ()
                                (declare (not safe))
                                (##car _e9782697919_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9782497926_))
                             (___kont9818598186_ _hd9782597923_ _hd9782297913_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9782497926_))
                                 (let ((_e9783897871_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9782497926_))))
                                   (let ((_tl9783697878_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9783897871_)))
                                         (_hd9783797875_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9783897871_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9783697878_))
                                         (___kont9818798188_
                                          _hd9783797875_
                                          _hd9782597923_
                                          _hd9782297913_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9781797844_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9781797844_))))))
                     (let () (declare (not safe)) (_g9781797844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9781797844_)))))))
                                          (__tmp98253
                                           (let ((__tmp98254
                                                  (lambda (_g9794797950_
                                                           _g9794897953_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9794797950_
                                                            _g9794897953_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98254
                                                     '()
                                                     _L97710_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98255 __tmp98253))))
                                 (_g9762997653_ _g9763097657_)))
                           _clause9764797706_
                           _hd9763797674_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9764297686_
                                                   _target9763997680_
                                                   '()))
                                                (_g9762997653_
                                                 _g9763097657_)))))
                                      (_g9762997653_ _g9763097657_))))
                              (_g9762997653_ _g9763097657_))))
                      (_g9762997653_ _g9763097657_)))))
          (_g9762897956_ _stx97626_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98225
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
           __obj98225
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98265 |gxc[1]#_g98266_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98265
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98267 |gxc[1]#_g98268_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98267
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98269 |gxc[1]#_g98270_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98269
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98271
               (let ((__tmp98276
                      (let ((__tmp98277 |gxc[1]#_g98278_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98277)))
                     (__tmp98272
                      (let ((__tmp98273
                             (let ((__tmp98274 |gxc[1]#_g98275_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98274))))
                        (declare (not safe))
                        (cons __tmp98273 '()))))
                 (declare (not safe))
                 (cons __tmp98276 __tmp98272))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98271
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98279
               (let ((__tmp98284
                      (let ((__tmp98285 |gxc[1]#_g98286_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98285)))
                     (__tmp98280
                      (let ((__tmp98281
                             (let ((__tmp98282 |gxc[1]#_g98283_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98282))))
                        (declare (not safe))
                        (cons __tmp98281 '()))))
                 (declare (not safe))
                 (cons __tmp98284 __tmp98280))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98279
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98287
               (let ((__tmp98292
                      (let ((__tmp98293 |gxc[1]#_g98294_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98293)))
                     (__tmp98288
                      (let ((__tmp98289
                             (let ((__tmp98290 |gxc[1]#_g98291_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98290))))
                        (declare (not safe))
                        (cons __tmp98289 '()))))
                 (declare (not safe))
                 (cons __tmp98292 __tmp98288))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98287
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98295
               (let ((__tmp98300
                      (let ((__tmp98301 |gxc[1]#_g98302_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98301)))
                     (__tmp98296
                      (let ((__tmp98297
                             (let ((__tmp98298 |gxc[1]#_g98299_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98298))))
                        (declare (not safe))
                        (cons __tmp98297 '()))))
                 (declare (not safe))
                 (cons __tmp98300 __tmp98296))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98225
           __tmp98295
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98225))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97962_)
        (let* ((_g9796697980_
                (lambda (_g9796797976_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9796797976_))))
               (_g9796598021_
                (lambda (_g9796797984_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9796797984_))
                      (let ((_e9797197987_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9796797984_))))
                        (let ((_hd9797097991_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9797197987_)))
                              (_tl9796997994_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9797197987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9796997994_))
                              (let ((_e9797497997_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9796997994_))))
                                (let ((_hd9797398001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9797497997_)))
                                      (_tl9797298004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9797497997_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9797298004_))
                                      ((lambda (_L98007_)
                                         (let ((__tmp98310
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98303
                                                (let ((__tmp98309
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98304
                                                       (let ((__tmp98305
                                                              (let ((__tmp98308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98306
                             (let ((__tmp98307
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98007_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98307))))
                        (declare (not safe))
                        (cons __tmp98308 __tmp98306))))
                 (declare (not safe))
                 (cons __tmp98305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98309
                                                        __tmp98304))))
                                           (declare (not safe))
                                           (cons __tmp98310 __tmp98303)))
                                       _hd9797398001_)
                                      (_g9796697980_ _g9796797984_))))
                              (_g9796697980_ _g9796797984_))))
                      (_g9796697980_ _g9796797984_)))))
          (_g9796598021_ _$stx97962_))))))
