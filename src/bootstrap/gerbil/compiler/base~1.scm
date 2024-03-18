(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99598_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99600_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99602_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99607_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99610_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99615_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99618_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99623_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99626_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99631_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99634_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98955_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98955_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98958_)
        (let* ((_g9896198985_
                (lambda (_g9896298981_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9896298981_))))
               (_g9896099288_
                (lambda (_g9896298989_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9896298989_))
                      (let ((_e9896798992_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9896298989_))))
                        (let ((_hd9896698996_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9896798992_)))
                              (_tl9896598999_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9896798992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9896598999_))
                              (let ((_e9897099002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9896598999_))))
                                (let ((_hd9896999006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9897099002_)))
                                      (_tl9896899009_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9897099002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9896899009_))
                                      (let ((_g99569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9896899009_
                                                '0))))
                                        (begin
                                          (let ((_g99570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99569_)
                                                       (##vector-length
                                                        _g99569_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99570_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99570_)))
                                          (let ((_target9897199012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99569_ 0)))
                                                (_tl9897399015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99569_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9897399015_))
                                                (letrec ((_loop9897499018_
                                                          (lambda (_hd9897299022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9897899025_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9897299022_))
                        (let ((_e9897599028_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9897299022_))))
                          (let ((_lp-hd9897699032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9897599028_)))
                                (_lp-tl9897799035_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9897599028_))))
                            (_loop9897499018_
                             _lp-tl9897799035_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9897699032_ _clause9897899025_)))))
                        (let ((_clause9897999038_
                               (reverse _clause9897899025_)))
                          ((lambda (_L99042_ _L99044_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L99044_))
                                 (let* ((_g9906399080_
                                         (lambda (_g9906499076_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9906499076_))))
                                        (_g9906299141_
                                         (lambda (_g9906499084_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9906499084_))
                                               (let ((_g99571_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9906499084_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99572_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99571_)
                        (##vector-length _g99571_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99572_ 2)))
                 (error "Context expects 2 values" _g99572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9906699087_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99571_
                                                             0)))
                                                         (_tl9906899090_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99571_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9906899090_))
                                                         (letrec ((_loop9906999093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9906799097_ _clause9907399100_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9906799097_))
                                 (let ((_e9907099103_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9906799097_))))
                                   (let ((_lp-hd9907199107_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9907099103_)))
                                         (_lp-tl9907299110_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9907099103_))))
                                     (_loop9906999093_
                                      _lp-tl9907299110_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9907199107_
                                              _clause9907399100_)))))
                                 (let ((_clause9907499113_
                                        (reverse _clause9907399100_)))
                                   ((lambda (_L99117_)
                                      (let ()
                                        (let ((__tmp99584
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99573
                                               (let ((__tmp99582
                                                      (let ((__tmp99583
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99583 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99574
                                                      (let ((__tmp99575
                                                             (let ((__tmp99581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99576
                            (let ((__tmp99580
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99577
                                   (let ((__tmp99578
                                          (let ((__tmp99579
                                                 (lambda (_g9913299135_
                                                          _g9913399138_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9913299135_
                                                           _g9913399138_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99579 '() _L99117_))))
                                     (declare (not safe))
                                     (cons _L99044_ __tmp99578))))
                              (declare (not safe))
                              (cons __tmp99580 __tmp99577))))
                       (declare (not safe))
                       (cons __tmp99581 __tmp99576))))
                (declare (not safe))
                (cons __tmp99575 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99582
                                                       __tmp99574))))
                                          (declare (not safe))
                                          (cons __tmp99584 __tmp99573))))
                                    _clause9907499113_))))))
                   (_loop9906999093_ _target9906699087_ '()))
                 (_g9906399080_ _g9906499084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9906399080_
                                                _g9906499084_)))))
                                   (_g9906299141_
                                    (let ((__tmp99587
                                           (lambda (_clause99145_)
                                             (let* ((___stx9951499515_
                                                     _clause99145_)
                                                    (_g9914999176_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9951499515_)))))
                                               (let ((___kont9951799518_
                                                      (lambda (_L99261_
                                                               _L99263_)
                                                        (let ((__tmp99588
                                                               (let ((__tmp99589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99591
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99590
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99261_ '()))))
                                (declare (not safe))
                                (cons __tmp99591 __tmp99590))))
                         (declare (not safe))
                         (cons __tmp99589 '()))))
                  (declare (not safe))
                  (cons _L99263_ __tmp99588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9951999520_
                                                      (lambda (_L99213_
                                                               _L99215_
                                                               _L99216_)
                                                        (let ((__tmp99592
                                                               (let ((__tmp99593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99594
                                     (let ((__tmp99596
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99595
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99213_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99596 __tmp99595))))
                                (declare (not safe))
                                (cons __tmp99594 '()))))
                         (declare (not safe))
                         (cons _L99215_ __tmp99593))))
                  (declare (not safe))
                  (cons _L99216_ __tmp99592)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9951499515_))
                                                     (let ((_e9915599241_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9951499515_))))
                                                       (let ((_tl9915399248_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9915599241_)))
                     (_hd9915499245_
                      (let () (declare (not safe)) (##car _e9915599241_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9915399248_))
                     (let ((_e9915899251_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9915399248_))))
                       (let ((_tl9915699258_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9915899251_)))
                             (_hd9915799255_
                              (let ()
                                (declare (not safe))
                                (##car _e9915899251_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9915699258_))
                             (___kont9951799518_ _hd9915799255_ _hd9915499245_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9915699258_))
                                 (let ((_e9917099203_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9915699258_))))
                                   (let ((_tl9916899210_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9917099203_)))
                                         (_hd9916999207_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9917099203_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9916899210_))
                                         (___kont9951999520_
                                          _hd9916999207_
                                          _hd9915799255_
                                          _hd9915499245_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9914999176_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9914999176_))))))
                     (let () (declare (not safe)) (_g9914999176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9914999176_)))))))
                                          (__tmp99585
                                           (let ((__tmp99586
                                                  (lambda (_g9927999282_
                                                           _g9928099285_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9927999282_
                                                            _g9928099285_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99586
                                                     '()
                                                     _L99042_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99587 __tmp99585))))
                                 (_g9896198985_ _g9896298989_)))
                           _clause9897999038_
                           _hd9896999006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9897499018_
                                                   _target9897199012_
                                                   '()))
                                                (_g9896198985_
                                                 _g9896298989_)))))
                                      (_g9896198985_ _g9896298989_))))
                              (_g9896198985_ _g9896298989_))))
                      (_g9896198985_ _g9896298989_)))))
          (_g9896099288_ _stx98958_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99557
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
           __obj99557
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99597 |gxc[1]#_g99598_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99597
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99599 |gxc[1]#_g99600_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99599
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99601 |gxc[1]#_g99602_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99601
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99603
               (let ((__tmp99608
                      (let ((__tmp99609 |gxc[1]#_g99610_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99609)))
                     (__tmp99604
                      (let ((__tmp99605
                             (let ((__tmp99606 |gxc[1]#_g99607_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99606))))
                        (declare (not safe))
                        (cons __tmp99605 '()))))
                 (declare (not safe))
                 (cons __tmp99608 __tmp99604))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99603
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99611
               (let ((__tmp99616
                      (let ((__tmp99617 |gxc[1]#_g99618_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99617)))
                     (__tmp99612
                      (let ((__tmp99613
                             (let ((__tmp99614 |gxc[1]#_g99615_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99614))))
                        (declare (not safe))
                        (cons __tmp99613 '()))))
                 (declare (not safe))
                 (cons __tmp99616 __tmp99612))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99611
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99619
               (let ((__tmp99624
                      (let ((__tmp99625 |gxc[1]#_g99626_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99625)))
                     (__tmp99620
                      (let ((__tmp99621
                             (let ((__tmp99622 |gxc[1]#_g99623_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99622))))
                        (declare (not safe))
                        (cons __tmp99621 '()))))
                 (declare (not safe))
                 (cons __tmp99624 __tmp99620))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99619
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99627
               (let ((__tmp99632
                      (let ((__tmp99633 |gxc[1]#_g99634_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99633)))
                     (__tmp99628
                      (let ((__tmp99629
                             (let ((__tmp99630 |gxc[1]#_g99631_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99630))))
                        (declare (not safe))
                        (cons __tmp99629 '()))))
                 (declare (not safe))
                 (cons __tmp99632 __tmp99628))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99557
           __tmp99627
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99557))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99294_)
        (let* ((_g9929899312_
                (lambda (_g9929999308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9929999308_))))
               (_g9929799353_
                (lambda (_g9929999316_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9929999316_))
                      (let ((_e9930399319_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9929999316_))))
                        (let ((_hd9930299323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9930399319_)))
                              (_tl9930199326_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9930399319_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9930199326_))
                              (let ((_e9930699329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9930199326_))))
                                (let ((_hd9930599333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9930699329_)))
                                      (_tl9930499336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9930699329_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9930499336_))
                                      ((lambda (_L99339_)
                                         (let ((__tmp99642
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99635
                                                (let ((__tmp99641
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99636
                                                       (let ((__tmp99637
                                                              (let ((__tmp99640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99638
                             (let ((__tmp99639
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99339_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99639))))
                        (declare (not safe))
                        (cons __tmp99640 __tmp99638))))
                 (declare (not safe))
                 (cons __tmp99637 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99641
                                                        __tmp99636))))
                                           (declare (not safe))
                                           (cons __tmp99642 __tmp99635)))
                                       _hd9930599333_)
                                      (_g9929899312_ _g9929999316_))))
                              (_g9929899312_ _g9929999316_))))
                      (_g9929899312_ _g9929999316_)))))
          (_g9929799353_ _$stx99294_))))))
