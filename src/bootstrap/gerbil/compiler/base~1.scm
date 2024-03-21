(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99584_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99586_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99588_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99593_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99596_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99601_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99604_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99609_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99612_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99617_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99620_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98941_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98941_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98944_)
        (let* ((_g9894798971_
                (lambda (_g9894898967_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9894898967_))))
               (_g9894699274_
                (lambda (_g9894898975_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9894898975_))
                      (let ((_e9895398978_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9894898975_))))
                        (let ((_hd9895298982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9895398978_)))
                              (_tl9895198985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9895398978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9895198985_))
                              (let ((_e9895698988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9895198985_))))
                                (let ((_hd9895598992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9895698988_)))
                                      (_tl9895498995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9895698988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9895498995_))
                                      (let ((_g99555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9895498995_
                                                '0))))
                                        (begin
                                          (let ((_g99556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99555_)
                                                       (##vector-length
                                                        _g99555_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99556_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99556_)))
                                          (let ((_target9895798998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99555_ 0)))
                                                (_tl9895999001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99555_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9895999001_))
                                                (letrec ((_loop9896099004_
                                                          (lambda (_hd9895899008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9896499011_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9895899008_))
                        (let ((_e9896199014_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9895899008_))))
                          (let ((_lp-hd9896299018_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9896199014_)))
                                (_lp-tl9896399021_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9896199014_))))
                            (_loop9896099004_
                             _lp-tl9896399021_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9896299018_ _clause9896499011_)))))
                        (let ((_clause9896599024_
                               (reverse _clause9896499011_)))
                          ((lambda (_L99028_ _L99030_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L99030_))
                                 (let* ((_g9904999066_
                                         (lambda (_g9905099062_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9905099062_))))
                                        (_g9904899127_
                                         (lambda (_g9905099070_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9905099070_))
                                               (let ((_g99557_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9905099070_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99558_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99557_)
                        (##vector-length _g99557_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99558_ 2)))
                 (error "Context expects 2 values" _g99558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9905299073_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99557_
                                                             0)))
                                                         (_tl9905499076_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99557_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9905499076_))
                                                         (letrec ((_loop9905599079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9905399083_ _clause9905999086_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9905399083_))
                                 (let ((_e9905699089_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9905399083_))))
                                   (let ((_lp-hd9905799093_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9905699089_)))
                                         (_lp-tl9905899096_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9905699089_))))
                                     (_loop9905599079_
                                      _lp-tl9905899096_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9905799093_
                                              _clause9905999086_)))))
                                 (let ((_clause9906099099_
                                        (reverse _clause9905999086_)))
                                   ((lambda (_L99103_)
                                      (let ()
                                        (let ((__tmp99570
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99559
                                               (let ((__tmp99568
                                                      (let ((__tmp99569
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99569 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99560
                                                      (let ((__tmp99561
                                                             (let ((__tmp99567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99562
                            (let ((__tmp99566
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99563
                                   (let ((__tmp99564
                                          (let ((__tmp99565
                                                 (lambda (_g9911899121_
                                                          _g9911999124_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9911899121_
                                                           _g9911999124_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99565 '() _L99103_))))
                                     (declare (not safe))
                                     (cons _L99030_ __tmp99564))))
                              (declare (not safe))
                              (cons __tmp99566 __tmp99563))))
                       (declare (not safe))
                       (cons __tmp99567 __tmp99562))))
                (declare (not safe))
                (cons __tmp99561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99568
                                                       __tmp99560))))
                                          (declare (not safe))
                                          (cons __tmp99570 __tmp99559))))
                                    _clause9906099099_))))))
                   (_loop9905599079_ _target9905299073_ '()))
                 (_g9904999066_ _g9905099070_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9904999066_
                                                _g9905099070_)))))
                                   (_g9904899127_
                                    (let ((__tmp99573
                                           (lambda (_clause99131_)
                                             (let* ((___stx9950099501_
                                                     _clause99131_)
                                                    (_g9913599162_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9950099501_)))))
                                               (let ((___kont9950399504_
                                                      (lambda (_L99247_
                                                               _L99249_)
                                                        (let ((__tmp99574
                                                               (let ((__tmp99575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99577
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99576
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99247_ '()))))
                                (declare (not safe))
                                (cons __tmp99577 __tmp99576))))
                         (declare (not safe))
                         (cons __tmp99575 '()))))
                  (declare (not safe))
                  (cons _L99249_ __tmp99574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9950599506_
                                                      (lambda (_L99199_
                                                               _L99201_
                                                               _L99202_)
                                                        (let ((__tmp99578
                                                               (let ((__tmp99579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99580
                                     (let ((__tmp99582
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99581
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99199_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99582 __tmp99581))))
                                (declare (not safe))
                                (cons __tmp99580 '()))))
                         (declare (not safe))
                         (cons _L99201_ __tmp99579))))
                  (declare (not safe))
                  (cons _L99202_ __tmp99578)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9950099501_))
                                                     (let ((_e9914199227_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9950099501_))))
                                                       (let ((_tl9913999234_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9914199227_)))
                     (_hd9914099231_
                      (let () (declare (not safe)) (##car _e9914199227_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9913999234_))
                     (let ((_e9914499237_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9913999234_))))
                       (let ((_tl9914299244_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9914499237_)))
                             (_hd9914399241_
                              (let ()
                                (declare (not safe))
                                (##car _e9914499237_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9914299244_))
                             (___kont9950399504_ _hd9914399241_ _hd9914099231_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9914299244_))
                                 (let ((_e9915699189_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9914299244_))))
                                   (let ((_tl9915499196_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9915699189_)))
                                         (_hd9915599193_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9915699189_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9915499196_))
                                         (___kont9950599506_
                                          _hd9915599193_
                                          _hd9914399241_
                                          _hd9914099231_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9913599162_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9913599162_))))))
                     (let () (declare (not safe)) (_g9913599162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9913599162_)))))))
                                          (__tmp99571
                                           (let ((__tmp99572
                                                  (lambda (_g9926599268_
                                                           _g9926699271_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9926599268_
                                                            _g9926699271_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99572
                                                     '()
                                                     _L99028_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99573 __tmp99571))))
                                 (_g9894798971_ _g9894898975_)))
                           _clause9896599024_
                           _hd9895598992_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9896099004_
                                                   _target9895798998_
                                                   '()))
                                                (_g9894798971_
                                                 _g9894898975_)))))
                                      (_g9894798971_ _g9894898975_))))
                              (_g9894798971_ _g9894898975_))))
                      (_g9894798971_ _g9894898975_)))))
          (_g9894699274_ _stx98944_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99543
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
           __obj99543
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99583 |gxc[1]#_g99584_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99583
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99585 |gxc[1]#_g99586_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99585
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99587 |gxc[1]#_g99588_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99587
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99589
               (let ((__tmp99594
                      (let ((__tmp99595 |gxc[1]#_g99596_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99595)))
                     (__tmp99590
                      (let ((__tmp99591
                             (let ((__tmp99592 |gxc[1]#_g99593_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99592))))
                        (declare (not safe))
                        (cons __tmp99591 '()))))
                 (declare (not safe))
                 (cons __tmp99594 __tmp99590))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99589
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99597
               (let ((__tmp99602
                      (let ((__tmp99603 |gxc[1]#_g99604_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99603)))
                     (__tmp99598
                      (let ((__tmp99599
                             (let ((__tmp99600 |gxc[1]#_g99601_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99600))))
                        (declare (not safe))
                        (cons __tmp99599 '()))))
                 (declare (not safe))
                 (cons __tmp99602 __tmp99598))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99597
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99605
               (let ((__tmp99610
                      (let ((__tmp99611 |gxc[1]#_g99612_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99611)))
                     (__tmp99606
                      (let ((__tmp99607
                             (let ((__tmp99608 |gxc[1]#_g99609_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99608))))
                        (declare (not safe))
                        (cons __tmp99607 '()))))
                 (declare (not safe))
                 (cons __tmp99610 __tmp99606))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99605
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99613
               (let ((__tmp99618
                      (let ((__tmp99619 |gxc[1]#_g99620_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99619)))
                     (__tmp99614
                      (let ((__tmp99615
                             (let ((__tmp99616 |gxc[1]#_g99617_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99616))))
                        (declare (not safe))
                        (cons __tmp99615 '()))))
                 (declare (not safe))
                 (cons __tmp99618 __tmp99614))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99543
           __tmp99613
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99543))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99280_)
        (let* ((_g9928499298_
                (lambda (_g9928599294_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9928599294_))))
               (_g9928399339_
                (lambda (_g9928599302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9928599302_))
                      (let ((_e9928999305_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9928599302_))))
                        (let ((_hd9928899309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9928999305_)))
                              (_tl9928799312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9928999305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9928799312_))
                              (let ((_e9929299315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9928799312_))))
                                (let ((_hd9929199319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9929299315_)))
                                      (_tl9929099322_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9929299315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9929099322_))
                                      ((lambda (_L99325_)
                                         (let ((__tmp99628
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99621
                                                (let ((__tmp99627
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99622
                                                       (let ((__tmp99623
                                                              (let ((__tmp99626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99624
                             (let ((__tmp99625
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99325_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99625))))
                        (declare (not safe))
                        (cons __tmp99626 __tmp99624))))
                 (declare (not safe))
                 (cons __tmp99623 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99627
                                                        __tmp99622))))
                                           (declare (not safe))
                                           (cons __tmp99628 __tmp99621)))
                                       _hd9929199319_)
                                      (_g9928499298_ _g9928599302_))))
                              (_g9928499298_ _g9928599302_))))
                      (_g9928499298_ _g9928599302_)))))
          (_g9928399339_ _$stx99280_))))))
