(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g204299_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204301_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204303_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204308_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204311_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204316_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204319_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204324_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204327_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204332_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204335_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx199590_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx199590_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx199593_)
        (let* ((_g199596199620_
                (lambda (_g199597199616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g199597199616_))))
               (_g199595199923_
                (lambda (_g199597199624_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g199597199624_))
                      (let ((_e199602199627_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g199597199624_))))
                        (let ((_hd199601199631_
                               (let ()
                                 (declare (not safe))
                                 (##car _e199602199627_)))
                              (_tl199600199634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e199602199627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl199600199634_))
                              (let ((_e199605199637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl199600199634_))))
                                (let ((_hd199604199641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e199605199637_)))
                                      (_tl199603199644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e199605199637_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl199603199644_))
                                      (let ((_g204270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl199603199644_
                                                '0))))
                                        (begin
                                          (let ((_g204271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204270_)
                                                       (##vector-length
                                                        _g204270_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204271_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204271_)))
                                          (let ((_target199606199647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204270_ 0)))
                                                (_tl199608199650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204270_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl199608199650_))
                                                (letrec ((_loop199609199653_
                                                          (lambda (_hd199607199657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause199613199660_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd199607199657_))
                        (let ((_e199610199663_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd199607199657_))))
                          (let ((_lp-hd199611199667_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e199610199663_)))
                                (_lp-tl199612199670_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e199610199663_))))
                            (_loop199609199653_
                             _lp-tl199612199670_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd199611199667_
                                     _clause199613199660_)))))
                        (let ((_clause199614199673_
                               (reverse _clause199613199660_)))
                          ((lambda (_L199677_ _L199679_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L199679_))
                                 (let* ((_g199698199715_
                                         (lambda (_g199699199711_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g199699199711_))))
                                        (_g199697199776_
                                         (lambda (_g199699199719_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g199699199719_))
                                               (let ((_g204272_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g199699199719_
                                                         '0))))
                                                 (begin
                                                   (let ((_g204273_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g204272_)
                        (##vector-length _g204272_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g204273_ 2)))
                 (error "Context expects 2 values" _g204273_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target199701199722_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204272_
                                                             0)))
                                                         (_tl199703199725_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204272_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl199703199725_))
                                                         (letrec ((_loop199704199728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd199702199732_ _clause199708199735_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd199702199732_))
                                 (let ((_e199705199738_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd199702199732_))))
                                   (let ((_lp-hd199706199742_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e199705199738_)))
                                         (_lp-tl199707199745_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e199705199738_))))
                                     (_loop199704199728_
                                      _lp-tl199707199745_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd199706199742_
                                              _clause199708199735_)))))
                                 (let ((_clause199709199748_
                                        (reverse _clause199708199735_)))
                                   ((lambda (_L199752_)
                                      (let ()
                                        (let ((__tmp204285
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp204274
                                               (let ((__tmp204283
                                                      (let ((__tmp204284
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp204284 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp204275
                                                      (let ((__tmp204276
                                                             (let ((__tmp204282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp204277
                            (let ((__tmp204281
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp204278
                                   (let ((__tmp204279
                                          (let ((__tmp204280
                                                 (lambda (_g199767199770_
                                                          _g199768199773_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g199767199770_
                                                           _g199768199773_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp204280
                                                    '()
                                                    _L199752_))))
                                     (declare (not safe))
                                     (cons _L199679_ __tmp204279))))
                              (declare (not safe))
                              (cons __tmp204281 __tmp204278))))
                       (declare (not safe))
                       (cons __tmp204282 __tmp204277))))
                (declare (not safe))
                (cons __tmp204276 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp204283
                                                       __tmp204275))))
                                          (declare (not safe))
                                          (cons __tmp204285 __tmp204274))))
                                    _clause199709199748_))))))
                   (_loop199704199728_ _target199701199722_ '()))
                 (_g199698199715_ _g199699199719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g199698199715_
                                                _g199699199719_)))))
                                   (_g199697199776_
                                    (let ((__tmp204288
                                           (lambda (_clause199780_)
                                             (let* ((___stx204216204217_
                                                     _clause199780_)
                                                    (_g199784199811_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx204216204217_)))))
                                               (let ((___kont204219204220_
                                                      (lambda (_L199896_
                                                               _L199898_)
                                                        (let ((__tmp204289
                                                               (let ((__tmp204290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp204292
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp204291
                                     (let ()
                                       (declare (not safe))
                                       (cons _L199896_ '()))))
                                (declare (not safe))
                                (cons __tmp204292 __tmp204291))))
                         (declare (not safe))
                         (cons __tmp204290 '()))))
                  (declare (not safe))
                  (cons _L199898_ __tmp204289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont204221204222_
                                                      (lambda (_L199848_
                                                               _L199850_
                                                               _L199851_)
                                                        (let ((__tmp204293
                                                               (let ((__tmp204294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp204295
                                     (let ((__tmp204297
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp204296
                                            (let ()
                                              (declare (not safe))
                                              (cons _L199848_ '()))))
                                       (declare (not safe))
                                       (cons __tmp204297 __tmp204296))))
                                (declare (not safe))
                                (cons __tmp204295 '()))))
                         (declare (not safe))
                         (cons _L199850_ __tmp204294))))
                  (declare (not safe))
                  (cons _L199851_ __tmp204293)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx204216204217_))
                                                     (let ((_e199790199876_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx204216204217_))))
                                                       (let ((_tl199788199883_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e199790199876_)))
                     (_hd199789199880_
                      (let () (declare (not safe)) (##car _e199790199876_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl199788199883_))
                     (let ((_e199793199886_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl199788199883_))))
                       (let ((_tl199791199893_
                              (let ()
                                (declare (not safe))
                                (##cdr _e199793199886_)))
                             (_hd199792199890_
                              (let ()
                                (declare (not safe))
                                (##car _e199793199886_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl199791199893_))
                             (___kont204219204220_
                              _hd199792199890_
                              _hd199789199880_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl199791199893_))
                                 (let ((_e199805199838_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl199791199893_))))
                                   (let ((_tl199803199845_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e199805199838_)))
                                         (_hd199804199842_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e199805199838_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl199803199845_))
                                         (___kont204221204222_
                                          _hd199804199842_
                                          _hd199792199890_
                                          _hd199789199880_)
                                         (let ()
                                           (declare (not safe))
                                           (_g199784199811_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g199784199811_))))))
                     (let () (declare (not safe)) (_g199784199811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g199784199811_)))))))
                                          (__tmp204286
                                           (let ((__tmp204287
                                                  (lambda (_g199914199917_
                                                           _g199915199920_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g199914199917_
                                                            _g199915199920_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp204287
                                                     '()
                                                     _L199677_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp204288 __tmp204286))))
                                 (_g199596199620_ _g199597199624_)))
                           _clause199614199673_
                           _hd199604199641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop199609199653_
                                                   _target199606199647_
                                                   '()))
                                                (_g199596199620_
                                                 _g199597199624_)))))
                                      (_g199596199620_ _g199597199624_))))
                              (_g199596199620_ _g199597199624_))))
                      (_g199596199620_ _g199597199624_)))))
          (_g199595199923_ _stx199593_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj204259
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
           __obj204259
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204298 |gxc[1]#_g204299_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204298
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204300 |gxc[1]#_g204301_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204300
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204302 |gxc[1]#_g204303_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204302
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204304
               (let ((__tmp204309
                      (let ((__tmp204310 |gxc[1]#_g204311_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204310)))
                     (__tmp204305
                      (let ((__tmp204306
                             (let ((__tmp204307 |gxc[1]#_g204308_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204307))))
                        (declare (not safe))
                        (cons __tmp204306 '()))))
                 (declare (not safe))
                 (cons __tmp204309 __tmp204305))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204304
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204312
               (let ((__tmp204317
                      (let ((__tmp204318 |gxc[1]#_g204319_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204318)))
                     (__tmp204313
                      (let ((__tmp204314
                             (let ((__tmp204315 |gxc[1]#_g204316_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204315))))
                        (declare (not safe))
                        (cons __tmp204314 '()))))
                 (declare (not safe))
                 (cons __tmp204317 __tmp204313))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204312
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204320
               (let ((__tmp204325
                      (let ((__tmp204326 |gxc[1]#_g204327_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204326)))
                     (__tmp204321
                      (let ((__tmp204322
                             (let ((__tmp204323 |gxc[1]#_g204324_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204323))))
                        (declare (not safe))
                        (cons __tmp204322 '()))))
                 (declare (not safe))
                 (cons __tmp204325 __tmp204321))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204320
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp204328
               (let ((__tmp204333
                      (let ((__tmp204334 |gxc[1]#_g204335_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp204334)))
                     (__tmp204329
                      (let ((__tmp204330
                             (let ((__tmp204331 |gxc[1]#_g204332_|))
                               (declare (not safe))
                               (cons 'bindings __tmp204331))))
                        (declare (not safe))
                        (cons __tmp204330 '()))))
                 (declare (not safe))
                 (cons __tmp204333 __tmp204329))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj204259
           __tmp204328
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj204259))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx199929_)
        (let* ((_g199933199947_
                (lambda (_g199934199943_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g199934199943_))))
               (_g199932199988_
                (lambda (_g199934199951_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g199934199951_))
                      (let ((_e199938199954_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g199934199951_))))
                        (let ((_hd199937199958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e199938199954_)))
                              (_tl199936199961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e199938199954_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl199936199961_))
                              (let ((_e199941199964_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl199936199961_))))
                                (let ((_hd199940199968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e199941199964_)))
                                      (_tl199939199971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e199941199964_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl199939199971_))
                                      ((lambda (_L199974_)
                                         (let ((__tmp204343
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp204336
                                                (let ((__tmp204342
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp204337
                                                       (let ((__tmp204338
                                                              (let ((__tmp204341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp204339
                             (let ((__tmp204340
                                    (let ()
                                      (declare (not safe))
                                      (cons _L199974_ '()))))
                               (declare (not safe))
                               (cons '() __tmp204340))))
                        (declare (not safe))
                        (cons __tmp204341 __tmp204339))))
                 (declare (not safe))
                 (cons __tmp204338 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp204342
                                                        __tmp204337))))
                                           (declare (not safe))
                                           (cons __tmp204343 __tmp204336)))
                                       _hd199940199968_)
                                      (_g199933199947_ _g199934199951_))))
                              (_g199933199947_ _g199934199951_))))
                      (_g199933199947_ _g199934199951_)))))
          (_g199932199988_ _$stx199929_))))))
