(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g96613_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96615_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96617_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96622_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96625_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96630_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96633_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96638_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96641_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96646_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96649_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx95970_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx95970_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx95973_)
        (let* ((_g9597696000_
                (lambda (_g9597795996_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9597795996_))))
               (_g9597596303_
                (lambda (_g9597796004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9597796004_))
                      (let ((_e9598096007_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9597796004_))))
                        (let ((_hd9598196011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9598096007_)))
                              (_tl9598296014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9598096007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9598296014_))
                              (let ((_e9598396017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9598296014_))))
                                (let ((_hd9598496021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9598396017_)))
                                      (_tl9598596024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9598396017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9598596024_))
                                      (let ((_g96584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9598596024_
                                                '0))))
                                        (begin
                                          (let ((_g96585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96584_)
                                                       (##vector-length
                                                        _g96584_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96585_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96585_)))
                                          (let ((_target9598696027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96584_ 0)))
                                                (_tl9598896030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96584_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9598896030_))
                                                (letrec ((_loop9598996033_
                                                          (lambda (_hd9598796037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9599396040_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9598796037_))
                        (let ((_e9599096043_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9598796037_))))
                          (let ((_lp-hd9599196047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9599096043_)))
                                (_lp-tl9599296050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9599096043_))))
                            (_loop9598996033_
                             _lp-tl9599296050_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9599196047_ _clause9599396040_)))))
                        (let ((_clause9599496053_
                               (reverse _clause9599396040_)))
                          ((lambda (_L96057_ _L96059_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96059_))
                                 (let* ((_g9607896095_
                                         (lambda (_g9607996091_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9607996091_))))
                                        (_g9607796156_
                                         (lambda (_g9607996099_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9607996099_))
                                               (let ((_g96586_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9607996099_
                                                         '0))))
                                                 (begin
                                                   (let ((_g96587_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g96586_)
                        (##vector-length _g96586_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g96587_ 2)))
                 (error "Context expects 2 values" _g96587_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9608196102_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96586_
                                                             0)))
                                                         (_tl9608396105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96586_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9608396105_))
                                                         (letrec ((_loop9608496108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9608296112_ _clause9608896115_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9608296112_))
                                 (let ((_e9608596118_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9608296112_))))
                                   (let ((_lp-hd9608696122_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9608596118_)))
                                         (_lp-tl9608796125_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9608596118_))))
                                     (_loop9608496108_
                                      _lp-tl9608796125_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9608696122_
                                              _clause9608896115_)))))
                                 (let ((_clause9608996128_
                                        (reverse _clause9608896115_)))
                                   ((lambda (_L96132_)
                                      (let ()
                                        (let ((__tmp96599
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp96588
                                               (let ((__tmp96597
                                                      (let ((__tmp96598
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp96598 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp96589
                                                      (let ((__tmp96590
                                                             (let ((__tmp96596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp96591
                            (let ((__tmp96595
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp96592
                                   (let ((__tmp96593
                                          (let ((__tmp96594
                                                 (lambda (_g9614796150_
                                                          _g9614896153_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9614796150_
                                                           _g9614896153_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp96594 '() _L96132_))))
                                     (declare (not safe))
                                     (cons _L96059_ __tmp96593))))
                              (declare (not safe))
                              (cons __tmp96595 __tmp96592))))
                       (declare (not safe))
                       (cons __tmp96596 __tmp96591))))
                (declare (not safe))
                (cons __tmp96590 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp96597
                                                       __tmp96589))))
                                          (declare (not safe))
                                          (cons __tmp96599 __tmp96588))))
                                    _clause9608996128_))))))
                   (_loop9608496108_ _target9608196102_ '()))
                 (_g9607896095_ _g9607996099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9607896095_
                                                _g9607996099_)))))
                                   (_g9607796156_
                                    (let ((__tmp96602
                                           (lambda (_clause96160_)
                                             (let* ((___stx9652996530_
                                                     _clause96160_)
                                                    (_g9616496191_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9652996530_)))))
                                               (let ((___kont9653296533_
                                                      (lambda (_L96276_
                                                               _L96278_)
                                                        (let ((__tmp96603
                                                               (let ((__tmp96604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp96606
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp96605
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96276_ '()))))
                                (declare (not safe))
                                (cons __tmp96606 __tmp96605))))
                         (declare (not safe))
                         (cons __tmp96604 '()))))
                  (declare (not safe))
                  (cons _L96278_ __tmp96603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9653496535_
                                                      (lambda (_L96228_
                                                               _L96230_
                                                               _L96231_)
                                                        (let ((__tmp96607
                                                               (let ((__tmp96608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp96609
                                     (let ((__tmp96611
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp96610
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96228_ '()))))
                                       (declare (not safe))
                                       (cons __tmp96611 __tmp96610))))
                                (declare (not safe))
                                (cons __tmp96609 '()))))
                         (declare (not safe))
                         (cons _L96230_ __tmp96608))))
                  (declare (not safe))
                  (cons _L96231_ __tmp96607)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9652996530_))
                                                     (let ((_e9616896256_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9652996530_))))
                                                       (let ((_tl9617096263_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9616896256_)))
                     (_hd9616996260_
                      (let () (declare (not safe)) (##car _e9616896256_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9617096263_))
                     (let ((_e9617196266_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9617096263_))))
                       (let ((_tl9617396273_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9617196266_)))
                             (_hd9617296270_
                              (let ()
                                (declare (not safe))
                                (##car _e9617196266_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9617396273_))
                             (___kont9653296533_ _hd9617296270_ _hd9616996260_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9617396273_))
                                 (let ((_e9618396218_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9617396273_))))
                                   (let ((_tl9618596225_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9618396218_)))
                                         (_hd9618496222_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9618396218_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9618596225_))
                                         (___kont9653496535_
                                          _hd9618496222_
                                          _hd9617296270_
                                          _hd9616996260_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9616496191_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9616496191_))))))
                     (let () (declare (not safe)) (_g9616496191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9616496191_)))))))
                                          (__tmp96600
                                           (let ((__tmp96601
                                                  (lambda (_g9629496297_
                                                           _g9629596300_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9629496297_
                                                            _g9629596300_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp96601
                                                     '()
                                                     _L96057_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp96602 __tmp96600))))
                                 (_g9597696000_ _g9597796004_)))
                           _clause9599496053_
                           _hd9598496021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9598996033_
                                                   _target9598696027_
                                                   '()))
                                                (_g9597696000_
                                                 _g9597796004_)))))
                                      (_g9597696000_ _g9597796004_))))
                              (_g9597696000_ _g9597796004_))))
                      (_g9597696000_ _g9597796004_)))))
          (_g9597596303_ _stx95973_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj96572
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
           __obj96572
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           'symbol-table
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           '(gensyms bindings)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           ':init!
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96612 |gxc[1]#_g96613_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96612
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96614 |gxc[1]#_g96615_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96614
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96616 |gxc[1]#_g96617_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96616
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96618
               (let ((__tmp96623
                      (let ((__tmp96624 |gxc[1]#_g96625_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96624)))
                     (__tmp96619
                      (let ((__tmp96620
                             (let ((__tmp96621 |gxc[1]#_g96622_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96621))))
                        (declare (not safe))
                        (cons __tmp96620 '()))))
                 (declare (not safe))
                 (cons __tmp96623 __tmp96619))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96618
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96626
               (let ((__tmp96631
                      (let ((__tmp96632 |gxc[1]#_g96633_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96632)))
                     (__tmp96627
                      (let ((__tmp96628
                             (let ((__tmp96629 |gxc[1]#_g96630_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96629))))
                        (declare (not safe))
                        (cons __tmp96628 '()))))
                 (declare (not safe))
                 (cons __tmp96631 __tmp96627))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96626
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96634
               (let ((__tmp96639
                      (let ((__tmp96640 |gxc[1]#_g96641_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96640)))
                     (__tmp96635
                      (let ((__tmp96636
                             (let ((__tmp96637 |gxc[1]#_g96638_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96637))))
                        (declare (not safe))
                        (cons __tmp96636 '()))))
                 (declare (not safe))
                 (cons __tmp96639 __tmp96635))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96634
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96642
               (let ((__tmp96647
                      (let ((__tmp96648 |gxc[1]#_g96649_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96648)))
                     (__tmp96643
                      (let ((__tmp96644
                             (let ((__tmp96645 |gxc[1]#_g96646_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96645))))
                        (declare (not safe))
                        (cons __tmp96644 '()))))
                 (declare (not safe))
                 (cons __tmp96647 __tmp96643))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96572
           __tmp96642
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj96572))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96309_)
        (let* ((_g9631396327_
                (lambda (_g9631496323_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9631496323_))))
               (_g9631296368_
                (lambda (_g9631496331_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9631496331_))
                      (let ((_e9631696334_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9631496331_))))
                        (let ((_hd9631796338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9631696334_)))
                              (_tl9631896341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9631696334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9631896341_))
                              (let ((_e9631996344_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9631896341_))))
                                (let ((_hd9632096348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9631996344_)))
                                      (_tl9632196351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9631996344_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9632196351_))
                                      ((lambda (_L96354_)
                                         (let ((__tmp96657
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp96650
                                                (let ((__tmp96656
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp96651
                                                       (let ((__tmp96652
                                                              (let ((__tmp96655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp96653
                             (let ((__tmp96654
                                    (let ()
                                      (declare (not safe))
                                      (cons _L96354_ '()))))
                               (declare (not safe))
                               (cons '() __tmp96654))))
                        (declare (not safe))
                        (cons __tmp96655 __tmp96653))))
                 (declare (not safe))
                 (cons __tmp96652 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96656
                                                        __tmp96651))))
                                           (declare (not safe))
                                           (cons __tmp96657 __tmp96650)))
                                       _hd9632096348_)
                                      (_g9631396327_ _g9631496331_))))
                              (_g9631396327_ _g9631496331_))))
                      (_g9631396327_ _g9631496331_)))))
          (_g9631296368_ _$stx96309_))))))
