(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g96565_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96567_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96569_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96574_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96577_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96582_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96585_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96590_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96593_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96598_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g96601_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx95922_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx95922_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx95925_)
        (let* ((_g9592895952_
                (lambda (_g9592995948_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9592995948_))))
               (_g9592796255_
                (lambda (_g9592995956_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9592995956_))
                      (let ((_e9593295959_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9592995956_))))
                        (let ((_hd9593395963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9593295959_)))
                              (_tl9593495966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9593295959_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9593495966_))
                              (let ((_e9593595969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9593495966_))))
                                (let ((_hd9593695973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9593595969_)))
                                      (_tl9593795976_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9593595969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9593795976_))
                                      (let ((_g96536_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9593795976_
                                                '0))))
                                        (begin
                                          (let ((_g96537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96536_)
                                                       (##vector-length
                                                        _g96536_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96537_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96537_)))
                                          (let ((_target9593895979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96536_ 0)))
                                                (_tl9594095982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96536_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9594095982_))
                                                (letrec ((_loop9594195985_
                                                          (lambda (_hd9593995989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9594595992_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9593995989_))
                        (let ((_e9594295995_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9593995989_))))
                          (let ((_lp-hd9594395999_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9594295995_)))
                                (_lp-tl9594496002_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9594295995_))))
                            (_loop9594195985_
                             _lp-tl9594496002_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9594395999_ _clause9594595992_)))))
                        (let ((_clause9594696005_
                               (reverse _clause9594595992_)))
                          ((lambda (_L96009_ _L96011_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96011_))
                                 (let* ((_g9603096047_
                                         (lambda (_g9603196043_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9603196043_))))
                                        (_g9602996108_
                                         (lambda (_g9603196051_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9603196051_))
                                               (let ((_g96538_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9603196051_
                                                         '0))))
                                                 (begin
                                                   (let ((_g96539_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g96538_)
                        (##vector-length _g96538_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g96539_ 2)))
                 (error "Context expects 2 values" _g96539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9603396054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96538_
                                                             0)))
                                                         (_tl9603596057_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g96538_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9603596057_))
                                                         (letrec ((_loop9603696060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9603496064_ _clause9604096067_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9603496064_))
                                 (let ((_e9603796070_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9603496064_))))
                                   (let ((_lp-hd9603896074_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9603796070_)))
                                         (_lp-tl9603996077_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9603796070_))))
                                     (_loop9603696060_
                                      _lp-tl9603996077_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9603896074_
                                              _clause9604096067_)))))
                                 (let ((_clause9604196080_
                                        (reverse _clause9604096067_)))
                                   ((lambda (_L96084_)
                                      (let ()
                                        (let ((__tmp96551
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp96540
                                               (let ((__tmp96549
                                                      (let ((__tmp96550
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp96550 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp96541
                                                      (let ((__tmp96542
                                                             (let ((__tmp96548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp96543
                            (let ((__tmp96547
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp96544
                                   (let ((__tmp96545
                                          (let ((__tmp96546
                                                 (lambda (_g9609996102_
                                                          _g9610096105_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9609996102_
                                                           _g9610096105_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp96546 '() _L96084_))))
                                     (declare (not safe))
                                     (cons _L96011_ __tmp96545))))
                              (declare (not safe))
                              (cons __tmp96547 __tmp96544))))
                       (declare (not safe))
                       (cons __tmp96548 __tmp96543))))
                (declare (not safe))
                (cons __tmp96542 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp96549
                                                       __tmp96541))))
                                          (declare (not safe))
                                          (cons __tmp96551 __tmp96540))))
                                    _clause9604196080_))))))
                   (_loop9603696060_ _target9603396054_ '()))
                 (_g9603096047_ _g9603196051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9603096047_
                                                _g9603196051_)))))
                                   (_g9602996108_
                                    (let ((__tmp96554
                                           (lambda (_clause96112_)
                                             (let* ((___stx9648196482_
                                                     _clause96112_)
                                                    (_g9611696143_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9648196482_)))))
                                               (let ((___kont9648496485_
                                                      (lambda (_L96228_
                                                               _L96230_)
                                                        (let ((__tmp96555
                                                               (let ((__tmp96556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp96558
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp96557
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96228_ '()))))
                                (declare (not safe))
                                (cons __tmp96558 __tmp96557))))
                         (declare (not safe))
                         (cons __tmp96556 '()))))
                  (declare (not safe))
                  (cons _L96230_ __tmp96555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9648696487_
                                                      (lambda (_L96180_
                                                               _L96182_
                                                               _L96183_)
                                                        (let ((__tmp96559
                                                               (let ((__tmp96560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp96561
                                     (let ((__tmp96563
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp96562
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96180_ '()))))
                                       (declare (not safe))
                                       (cons __tmp96563 __tmp96562))))
                                (declare (not safe))
                                (cons __tmp96561 '()))))
                         (declare (not safe))
                         (cons _L96182_ __tmp96560))))
                  (declare (not safe))
                  (cons _L96183_ __tmp96559)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9648196482_))
                                                     (let ((_e9612096208_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9648196482_))))
                                                       (let ((_tl9612296215_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9612096208_)))
                     (_hd9612196212_
                      (let () (declare (not safe)) (##car _e9612096208_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9612296215_))
                     (let ((_e9612396218_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9612296215_))))
                       (let ((_tl9612596225_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9612396218_)))
                             (_hd9612496222_
                              (let ()
                                (declare (not safe))
                                (##car _e9612396218_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9612596225_))
                             (___kont9648496485_ _hd9612496222_ _hd9612196212_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9612596225_))
                                 (let ((_e9613596170_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9612596225_))))
                                   (let ((_tl9613796177_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9613596170_)))
                                         (_hd9613696174_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9613596170_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9613796177_))
                                         (___kont9648696487_
                                          _hd9613696174_
                                          _hd9612496222_
                                          _hd9612196212_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9611696143_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9611696143_))))))
                     (let () (declare (not safe)) (_g9611696143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9611696143_)))))))
                                          (__tmp96552
                                           (let ((__tmp96553
                                                  (lambda (_g9624696249_
                                                           _g9624796252_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9624696249_
                                                            _g9624796252_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp96553
                                                     '()
                                                     _L96009_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp96554 __tmp96552))))
                                 (_g9592895952_ _g9592995956_)))
                           _clause9594696005_
                           _hd9593695973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9594195985_
                                                   _target9593895979_
                                                   '()))
                                                (_g9592895952_
                                                 _g9592995956_)))))
                                      (_g9592895952_ _g9592995956_))))
                              (_g9592895952_ _g9592995956_))))
                      (_g9592895952_ _g9592995956_)))))
          (_g9592796255_ _stx95925_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj96524
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
           __obj96524
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           'symbol-table
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           '(gensyms bindings)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           ':init!
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96564 |gxc[1]#_g96565_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96564
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96566 |gxc[1]#_g96567_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96566
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96568 |gxc[1]#_g96569_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96568
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96570
               (let ((__tmp96575
                      (let ((__tmp96576 |gxc[1]#_g96577_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96576)))
                     (__tmp96571
                      (let ((__tmp96572
                             (let ((__tmp96573 |gxc[1]#_g96574_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96573))))
                        (declare (not safe))
                        (cons __tmp96572 '()))))
                 (declare (not safe))
                 (cons __tmp96575 __tmp96571))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96570
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96578
               (let ((__tmp96583
                      (let ((__tmp96584 |gxc[1]#_g96585_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96584)))
                     (__tmp96579
                      (let ((__tmp96580
                             (let ((__tmp96581 |gxc[1]#_g96582_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96581))))
                        (declare (not safe))
                        (cons __tmp96580 '()))))
                 (declare (not safe))
                 (cons __tmp96583 __tmp96579))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96578
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96586
               (let ((__tmp96591
                      (let ((__tmp96592 |gxc[1]#_g96593_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96592)))
                     (__tmp96587
                      (let ((__tmp96588
                             (let ((__tmp96589 |gxc[1]#_g96590_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96589))))
                        (declare (not safe))
                        (cons __tmp96588 '()))))
                 (declare (not safe))
                 (cons __tmp96591 __tmp96587))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96586
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp96594
               (let ((__tmp96599
                      (let ((__tmp96600 |gxc[1]#_g96601_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp96600)))
                     (__tmp96595
                      (let ((__tmp96596
                             (let ((__tmp96597 |gxc[1]#_g96598_|))
                               (declare (not safe))
                               (cons 'bindings __tmp96597))))
                        (declare (not safe))
                        (cons __tmp96596 '()))))
                 (declare (not safe))
                 (cons __tmp96599 __tmp96595))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj96524
           __tmp96594
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj96524))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96261_)
        (let* ((_g9626596279_
                (lambda (_g9626696275_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9626696275_))))
               (_g9626496320_
                (lambda (_g9626696283_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9626696283_))
                      (let ((_e9626896286_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9626696283_))))
                        (let ((_hd9626996290_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9626896286_)))
                              (_tl9627096293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9626896286_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9627096293_))
                              (let ((_e9627196296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9627096293_))))
                                (let ((_hd9627296300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9627196296_)))
                                      (_tl9627396303_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9627196296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9627396303_))
                                      ((lambda (_L96306_)
                                         (let ((__tmp96609
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp96602
                                                (let ((__tmp96608
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp96603
                                                       (let ((__tmp96604
                                                              (let ((__tmp96607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp96605
                             (let ((__tmp96606
                                    (let ()
                                      (declare (not safe))
                                      (cons _L96306_ '()))))
                               (declare (not safe))
                               (cons '() __tmp96606))))
                        (declare (not safe))
                        (cons __tmp96607 __tmp96605))))
                 (declare (not safe))
                 (cons __tmp96604 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96608
                                                        __tmp96603))))
                                           (declare (not safe))
                                           (cons __tmp96609 __tmp96602)))
                                       _hd9627296300_)
                                      (_g9626596279_ _g9626696283_))))
                              (_g9626596279_ _g9626696283_))))
                      (_g9626596279_ _g9626696283_)))))
          (_g9626496320_ _$stx96261_))))))
