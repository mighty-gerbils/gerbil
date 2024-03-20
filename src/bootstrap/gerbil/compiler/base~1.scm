(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99603_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99605_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99607_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99612_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99615_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99620_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99623_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99628_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99631_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99636_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99639_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98960_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98960_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98963_)
        (let* ((_g9896698990_
                (lambda (_g9896798986_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9896798986_))))
               (_g9896599293_
                (lambda (_g9896798994_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9896798994_))
                      (let ((_e9897298997_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9896798994_))))
                        (let ((_hd9897199001_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9897298997_)))
                              (_tl9897099004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9897298997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9897099004_))
                              (let ((_e9897599007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9897099004_))))
                                (let ((_hd9897499011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9897599007_)))
                                      (_tl9897399014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9897599007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9897399014_))
                                      (let ((_g99574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9897399014_
                                                '0))))
                                        (begin
                                          (let ((_g99575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99574_)
                                                       (##vector-length
                                                        _g99574_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99575_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99575_)))
                                          (let ((_target9897699017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99574_ 0)))
                                                (_tl9897899020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99574_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9897899020_))
                                                (letrec ((_loop9897999023_
                                                          (lambda (_hd9897799027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9898399030_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9897799027_))
                        (let ((_e9898099033_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9897799027_))))
                          (let ((_lp-hd9898199037_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9898099033_)))
                                (_lp-tl9898299040_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9898099033_))))
                            (_loop9897999023_
                             _lp-tl9898299040_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9898199037_ _clause9898399030_)))))
                        (let ((_clause9898499043_
                               (reverse _clause9898399030_)))
                          ((lambda (_L99047_ _L99049_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L99049_))
                                 (let* ((_g9906899085_
                                         (lambda (_g9906999081_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9906999081_))))
                                        (_g9906799146_
                                         (lambda (_g9906999089_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9906999089_))
                                               (let ((_g99576_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9906999089_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99577_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99576_)
                        (##vector-length _g99576_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99577_ 2)))
                 (error "Context expects 2 values" _g99577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9907199092_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99576_
                                                             0)))
                                                         (_tl9907399095_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99576_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9907399095_))
                                                         (letrec ((_loop9907499098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9907299102_ _clause9907899105_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9907299102_))
                                 (let ((_e9907599108_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9907299102_))))
                                   (let ((_lp-hd9907699112_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9907599108_)))
                                         (_lp-tl9907799115_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9907599108_))))
                                     (_loop9907499098_
                                      _lp-tl9907799115_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9907699112_
                                              _clause9907899105_)))))
                                 (let ((_clause9907999118_
                                        (reverse _clause9907899105_)))
                                   ((lambda (_L99122_)
                                      (let ()
                                        (let ((__tmp99589
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99578
                                               (let ((__tmp99587
                                                      (let ((__tmp99588
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99588 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99579
                                                      (let ((__tmp99580
                                                             (let ((__tmp99586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99581
                            (let ((__tmp99585
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99582
                                   (let ((__tmp99583
                                          (let ((__tmp99584
                                                 (lambda (_g9913799140_
                                                          _g9913899143_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9913799140_
                                                           _g9913899143_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99584 '() _L99122_))))
                                     (declare (not safe))
                                     (cons _L99049_ __tmp99583))))
                              (declare (not safe))
                              (cons __tmp99585 __tmp99582))))
                       (declare (not safe))
                       (cons __tmp99586 __tmp99581))))
                (declare (not safe))
                (cons __tmp99580 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99587
                                                       __tmp99579))))
                                          (declare (not safe))
                                          (cons __tmp99589 __tmp99578))))
                                    _clause9907999118_))))))
                   (_loop9907499098_ _target9907199092_ '()))
                 (_g9906899085_ _g9906999089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9906899085_
                                                _g9906999089_)))))
                                   (_g9906799146_
                                    (let ((__tmp99592
                                           (lambda (_clause99150_)
                                             (let* ((___stx9951999520_
                                                     _clause99150_)
                                                    (_g9915499181_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9951999520_)))))
                                               (let ((___kont9952299523_
                                                      (lambda (_L99266_
                                                               _L99268_)
                                                        (let ((__tmp99593
                                                               (let ((__tmp99594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99596
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99595
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99266_ '()))))
                                (declare (not safe))
                                (cons __tmp99596 __tmp99595))))
                         (declare (not safe))
                         (cons __tmp99594 '()))))
                  (declare (not safe))
                  (cons _L99268_ __tmp99593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9952499525_
                                                      (lambda (_L99218_
                                                               _L99220_
                                                               _L99221_)
                                                        (let ((__tmp99597
                                                               (let ((__tmp99598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99599
                                     (let ((__tmp99601
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99600
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99218_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99601 __tmp99600))))
                                (declare (not safe))
                                (cons __tmp99599 '()))))
                         (declare (not safe))
                         (cons _L99220_ __tmp99598))))
                  (declare (not safe))
                  (cons _L99221_ __tmp99597)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9951999520_))
                                                     (let ((_e9916099246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9951999520_))))
                                                       (let ((_tl9915899253_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9916099246_)))
                     (_hd9915999250_
                      (let () (declare (not safe)) (##car _e9916099246_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9915899253_))
                     (let ((_e9916399256_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9915899253_))))
                       (let ((_tl9916199263_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9916399256_)))
                             (_hd9916299260_
                              (let ()
                                (declare (not safe))
                                (##car _e9916399256_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9916199263_))
                             (___kont9952299523_ _hd9916299260_ _hd9915999250_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9916199263_))
                                 (let ((_e9917599208_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9916199263_))))
                                   (let ((_tl9917399215_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9917599208_)))
                                         (_hd9917499212_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9917599208_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9917399215_))
                                         (___kont9952499525_
                                          _hd9917499212_
                                          _hd9916299260_
                                          _hd9915999250_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9915499181_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9915499181_))))))
                     (let () (declare (not safe)) (_g9915499181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9915499181_)))))))
                                          (__tmp99590
                                           (let ((__tmp99591
                                                  (lambda (_g9928499287_
                                                           _g9928599290_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9928499287_
                                                            _g9928599290_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99591
                                                     '()
                                                     _L99047_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99592 __tmp99590))))
                                 (_g9896698990_ _g9896798994_)))
                           _clause9898499043_
                           _hd9897499011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9897999023_
                                                   _target9897699017_
                                                   '()))
                                                (_g9896698990_
                                                 _g9896798994_)))))
                                      (_g9896698990_ _g9896798994_))))
                              (_g9896698990_ _g9896798994_))))
                      (_g9896698990_ _g9896798994_)))))
          (_g9896599293_ _stx98963_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99562
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
           __obj99562
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99602 |gxc[1]#_g99603_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99602
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99604 |gxc[1]#_g99605_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99604
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99606 |gxc[1]#_g99607_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99606
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99608
               (let ((__tmp99613
                      (let ((__tmp99614 |gxc[1]#_g99615_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99614)))
                     (__tmp99609
                      (let ((__tmp99610
                             (let ((__tmp99611 |gxc[1]#_g99612_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99611))))
                        (declare (not safe))
                        (cons __tmp99610 '()))))
                 (declare (not safe))
                 (cons __tmp99613 __tmp99609))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99608
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99616
               (let ((__tmp99621
                      (let ((__tmp99622 |gxc[1]#_g99623_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99622)))
                     (__tmp99617
                      (let ((__tmp99618
                             (let ((__tmp99619 |gxc[1]#_g99620_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99619))))
                        (declare (not safe))
                        (cons __tmp99618 '()))))
                 (declare (not safe))
                 (cons __tmp99621 __tmp99617))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99616
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99624
               (let ((__tmp99629
                      (let ((__tmp99630 |gxc[1]#_g99631_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99630)))
                     (__tmp99625
                      (let ((__tmp99626
                             (let ((__tmp99627 |gxc[1]#_g99628_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99627))))
                        (declare (not safe))
                        (cons __tmp99626 '()))))
                 (declare (not safe))
                 (cons __tmp99629 __tmp99625))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99624
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99632
               (let ((__tmp99637
                      (let ((__tmp99638 |gxc[1]#_g99639_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99638)))
                     (__tmp99633
                      (let ((__tmp99634
                             (let ((__tmp99635 |gxc[1]#_g99636_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99635))))
                        (declare (not safe))
                        (cons __tmp99634 '()))))
                 (declare (not safe))
                 (cons __tmp99637 __tmp99633))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99562
           __tmp99632
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99562))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99299_)
        (let* ((_g9930399317_
                (lambda (_g9930499313_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9930499313_))))
               (_g9930299358_
                (lambda (_g9930499321_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9930499321_))
                      (let ((_e9930899324_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9930499321_))))
                        (let ((_hd9930799328_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9930899324_)))
                              (_tl9930699331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9930899324_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9930699331_))
                              (let ((_e9931199334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9930699331_))))
                                (let ((_hd9931099338_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9931199334_)))
                                      (_tl9930999341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9931199334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9930999341_))
                                      ((lambda (_L99344_)
                                         (let ((__tmp99647
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99640
                                                (let ((__tmp99646
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99641
                                                       (let ((__tmp99642
                                                              (let ((__tmp99645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99643
                             (let ((__tmp99644
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99344_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99644))))
                        (declare (not safe))
                        (cons __tmp99645 __tmp99643))))
                 (declare (not safe))
                 (cons __tmp99642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99646
                                                        __tmp99641))))
                                           (declare (not safe))
                                           (cons __tmp99647 __tmp99640)))
                                       _hd9931099338_)
                                      (_g9930399317_ _g9930499321_))))
                              (_g9930399317_ _g9930499321_))))
                      (_g9930399317_ _g9930499321_)))))
          (_g9930299358_ _$stx99299_))))))
