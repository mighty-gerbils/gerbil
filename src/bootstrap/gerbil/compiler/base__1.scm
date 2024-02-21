(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97616_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97618_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97620_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97625_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97628_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97633_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97636_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97641_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97644_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97649_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97652_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx96973_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx96973_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx96976_)
        (let* ((_g9697997003_
                (lambda (_g9698096999_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9698096999_))))
               (_g9697897306_
                (lambda (_g9698097007_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9698097007_))
                      (let ((_e9698597010_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9698097007_))))
                        (let ((_hd9698497014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9698597010_)))
                              (_tl9698397017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9698597010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9698397017_))
                              (let ((_e9698897020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9698397017_))))
                                (let ((_hd9698797024_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9698897020_)))
                                      (_tl9698697027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9698897020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9698697027_))
                                      (let ((_g97587_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9698697027_
                                                '0))))
                                        (begin
                                          (let ((_g97588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97587_)
                                                       (##vector-length
                                                        _g97587_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97588_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97588_)))
                                          (let ((_target9698997030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97587_ 0)))
                                                (_tl9699197033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97587_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9699197033_))
                                                (letrec ((_loop9699297036_
                                                          (lambda (_hd9699097040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9699697043_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9699097040_))
                        (let ((_e9699397046_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9699097040_))))
                          (let ((_lp-hd9699497050_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9699397046_)))
                                (_lp-tl9699597053_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9699397046_))))
                            (_loop9699297036_
                             _lp-tl9699597053_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9699497050_ _clause9699697043_)))))
                        (let ((_clause9699797056_
                               (reverse _clause9699697043_)))
                          ((lambda (_L97060_ _L97062_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97062_))
                                 (let* ((_g9708197098_
                                         (lambda (_g9708297094_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9708297094_))))
                                        (_g9708097159_
                                         (lambda (_g9708297102_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9708297102_))
                                               (let ((_g97589_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9708297102_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97590_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97589_)
                        (##vector-length _g97589_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97590_ 2)))
                 (error "Context expects 2 values" _g97590_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9708497105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97589_
                                                             0)))
                                                         (_tl9708697108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97589_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9708697108_))
                                                         (letrec ((_loop9708797111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9708597115_ _clause9709197118_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9708597115_))
                                 (let ((_e9708897121_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9708597115_))))
                                   (let ((_lp-hd9708997125_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9708897121_)))
                                         (_lp-tl9709097128_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9708897121_))))
                                     (_loop9708797111_
                                      _lp-tl9709097128_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9708997125_
                                              _clause9709197118_)))))
                                 (let ((_clause9709297131_
                                        (reverse _clause9709197118_)))
                                   ((lambda (_L97135_)
                                      (let ()
                                        (let ((__tmp97602
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97591
                                               (let ((__tmp97600
                                                      (let ((__tmp97601
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97601 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97592
                                                      (let ((__tmp97593
                                                             (let ((__tmp97599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97594
                            (let ((__tmp97598
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97595
                                   (let ((__tmp97596
                                          (let ((__tmp97597
                                                 (lambda (_g9715097153_
                                                          _g9715197156_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9715097153_
                                                           _g9715197156_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97597 '() _L97135_))))
                                     (declare (not safe))
                                     (cons _L97062_ __tmp97596))))
                              (declare (not safe))
                              (cons __tmp97598 __tmp97595))))
                       (declare (not safe))
                       (cons __tmp97599 __tmp97594))))
                (declare (not safe))
                (cons __tmp97593 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97600
                                                       __tmp97592))))
                                          (declare (not safe))
                                          (cons __tmp97602 __tmp97591))))
                                    _clause9709297131_))))))
                   (_loop9708797111_ _target9708497105_ '()))
                 (_g9708197098_ _g9708297102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9708197098_
                                                _g9708297102_)))))
                                   (_g9708097159_
                                    (let ((__tmp97605
                                           (lambda (_clause97163_)
                                             (let* ((___stx9753297533_
                                                     _clause97163_)
                                                    (_g9716797194_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9753297533_)))))
                                               (let ((___kont9753597536_
                                                      (lambda (_L97279_
                                                               _L97281_)
                                                        (let ((__tmp97606
                                                               (let ((__tmp97607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97609
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97608
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97279_ '()))))
                                (declare (not safe))
                                (cons __tmp97609 __tmp97608))))
                         (declare (not safe))
                         (cons __tmp97607 '()))))
                  (declare (not safe))
                  (cons _L97281_ __tmp97606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9753797538_
                                                      (lambda (_L97231_
                                                               _L97233_
                                                               _L97234_)
                                                        (let ((__tmp97610
                                                               (let ((__tmp97611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97612
                                     (let ((__tmp97614
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97613
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97231_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97614 __tmp97613))))
                                (declare (not safe))
                                (cons __tmp97612 '()))))
                         (declare (not safe))
                         (cons _L97233_ __tmp97611))))
                  (declare (not safe))
                  (cons _L97234_ __tmp97610)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9753297533_))
                                                     (let ((_e9717397259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9753297533_))))
                                                       (let ((_tl9717197266_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9717397259_)))
                     (_hd9717297263_
                      (let () (declare (not safe)) (##car _e9717397259_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9717197266_))
                     (let ((_e9717697269_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9717197266_))))
                       (let ((_tl9717497276_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9717697269_)))
                             (_hd9717597273_
                              (let ()
                                (declare (not safe))
                                (##car _e9717697269_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9717497276_))
                             (___kont9753597536_ _hd9717597273_ _hd9717297263_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9717497276_))
                                 (let ((_e9718897221_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9717497276_))))
                                   (let ((_tl9718697228_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9718897221_)))
                                         (_hd9718797225_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9718897221_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9718697228_))
                                         (___kont9753797538_
                                          _hd9718797225_
                                          _hd9717597273_
                                          _hd9717297263_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9716797194_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9716797194_))))))
                     (let () (declare (not safe)) (_g9716797194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9716797194_)))))))
                                          (__tmp97603
                                           (let ((__tmp97604
                                                  (lambda (_g9729797300_
                                                           _g9729897303_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9729797300_
                                                            _g9729897303_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97604
                                                     '()
                                                     _L97060_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97605 __tmp97603))))
                                 (_g9697997003_ _g9698097007_)))
                           _clause9699797056_
                           _hd9698797024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9699297036_
                                                   _target9698997030_
                                                   '()))
                                                (_g9697997003_
                                                 _g9698097007_)))))
                                      (_g9697997003_ _g9698097007_))))
                              (_g9697997003_ _g9698097007_))))
                      (_g9697997003_ _g9698097007_)))))
          (_g9697897306_ _stx96976_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97575
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
           __obj97575
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97615 |gxc[1]#_g97616_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97615
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97617 |gxc[1]#_g97618_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97617
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97619 |gxc[1]#_g97620_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97619
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97621
               (let ((__tmp97626
                      (let ((__tmp97627 |gxc[1]#_g97628_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97627)))
                     (__tmp97622
                      (let ((__tmp97623
                             (let ((__tmp97624 |gxc[1]#_g97625_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97624))))
                        (declare (not safe))
                        (cons __tmp97623 '()))))
                 (declare (not safe))
                 (cons __tmp97626 __tmp97622))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97621
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97629
               (let ((__tmp97634
                      (let ((__tmp97635 |gxc[1]#_g97636_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97635)))
                     (__tmp97630
                      (let ((__tmp97631
                             (let ((__tmp97632 |gxc[1]#_g97633_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97632))))
                        (declare (not safe))
                        (cons __tmp97631 '()))))
                 (declare (not safe))
                 (cons __tmp97634 __tmp97630))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97629
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97637
               (let ((__tmp97642
                      (let ((__tmp97643 |gxc[1]#_g97644_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97643)))
                     (__tmp97638
                      (let ((__tmp97639
                             (let ((__tmp97640 |gxc[1]#_g97641_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97640))))
                        (declare (not safe))
                        (cons __tmp97639 '()))))
                 (declare (not safe))
                 (cons __tmp97642 __tmp97638))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97637
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97645
               (let ((__tmp97650
                      (let ((__tmp97651 |gxc[1]#_g97652_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97651)))
                     (__tmp97646
                      (let ((__tmp97647
                             (let ((__tmp97648 |gxc[1]#_g97649_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97648))))
                        (declare (not safe))
                        (cons __tmp97647 '()))))
                 (declare (not safe))
                 (cons __tmp97650 __tmp97646))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97575
           __tmp97645
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97575))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97312_)
        (let* ((_g9731697330_
                (lambda (_g9731797326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9731797326_))))
               (_g9731597371_
                (lambda (_g9731797334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9731797334_))
                      (let ((_e9732197337_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9731797334_))))
                        (let ((_hd9732097341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9732197337_)))
                              (_tl9731997344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9732197337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9731997344_))
                              (let ((_e9732497347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9731997344_))))
                                (let ((_hd9732397351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9732497347_)))
                                      (_tl9732297354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9732497347_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9732297354_))
                                      ((lambda (_L97357_)
                                         (let ((__tmp97660
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97653
                                                (let ((__tmp97659
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97654
                                                       (let ((__tmp97655
                                                              (let ((__tmp97658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97656
                             (let ((__tmp97657
                                    (let ()
                                      (declare (not safe))
                                      (cons _L97357_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97657))))
                        (declare (not safe))
                        (cons __tmp97658 __tmp97656))))
                 (declare (not safe))
                 (cons __tmp97655 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97659
                                                        __tmp97654))))
                                           (declare (not safe))
                                           (cons __tmp97660 __tmp97653)))
                                       _hd9732397351_)
                                      (_g9731697330_ _g9731797334_))))
                              (_g9731697330_ _g9731797334_))))
                      (_g9731697330_ _g9731797334_)))))
          (_g9731597371_ _$stx97312_))))))
