(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99593_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99595_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99597_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99602_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99605_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99610_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99613_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99618_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99621_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99626_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99629_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98950_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98950_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98953_)
        (let* ((_g9895698980_
                (lambda (_g9895798976_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9895798976_))))
               (_g9895599283_
                (lambda (_g9895798984_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9895798984_))
                      (let ((_e9896298987_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9895798984_))))
                        (let ((_hd9896198991_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9896298987_)))
                              (_tl9896098994_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9896298987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9896098994_))
                              (let ((_e9896598997_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9896098994_))))
                                (let ((_hd9896499001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9896598997_)))
                                      (_tl9896399004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9896598997_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9896399004_))
                                      (let ((_g99564_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9896399004_
                                                '0))))
                                        (begin
                                          (let ((_g99565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99564_)
                                                       (##vector-length
                                                        _g99564_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99565_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99565_)))
                                          (let ((_target9896699007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99564_ 0)))
                                                (_tl9896899010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99564_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9896899010_))
                                                (letrec ((_loop9896999013_
                                                          (lambda (_hd9896799017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9897399020_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9896799017_))
                        (let ((_e9897099023_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9896799017_))))
                          (let ((_lp-hd9897199027_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9897099023_)))
                                (_lp-tl9897299030_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9897099023_))))
                            (_loop9896999013_
                             _lp-tl9897299030_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9897199027_ _clause9897399020_)))))
                        (let ((_clause9897499033_
                               (reverse _clause9897399020_)))
                          ((lambda (_L99037_ _L99039_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L99039_))
                                 (let* ((_g9905899075_
                                         (lambda (_g9905999071_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9905999071_))))
                                        (_g9905799136_
                                         (lambda (_g9905999079_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9905999079_))
                                               (let ((_g99566_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9905999079_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99567_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99566_)
                        (##vector-length _g99566_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99567_ 2)))
                 (error "Context expects 2 values" _g99567_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9906199082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99566_
                                                             0)))
                                                         (_tl9906399085_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99566_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9906399085_))
                                                         (letrec ((_loop9906499088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9906299092_ _clause9906899095_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9906299092_))
                                 (let ((_e9906599098_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9906299092_))))
                                   (let ((_lp-hd9906699102_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9906599098_)))
                                         (_lp-tl9906799105_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9906599098_))))
                                     (_loop9906499088_
                                      _lp-tl9906799105_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9906699102_
                                              _clause9906899095_)))))
                                 (let ((_clause9906999108_
                                        (reverse _clause9906899095_)))
                                   ((lambda (_L99112_)
                                      (let ()
                                        (let ((__tmp99579
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99568
                                               (let ((__tmp99577
                                                      (let ((__tmp99578
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99578 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99569
                                                      (let ((__tmp99570
                                                             (let ((__tmp99576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99571
                            (let ((__tmp99575
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99572
                                   (let ((__tmp99573
                                          (let ((__tmp99574
                                                 (lambda (_g9912799130_
                                                          _g9912899133_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9912799130_
                                                           _g9912899133_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99574 '() _L99112_))))
                                     (declare (not safe))
                                     (cons _L99039_ __tmp99573))))
                              (declare (not safe))
                              (cons __tmp99575 __tmp99572))))
                       (declare (not safe))
                       (cons __tmp99576 __tmp99571))))
                (declare (not safe))
                (cons __tmp99570 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99577
                                                       __tmp99569))))
                                          (declare (not safe))
                                          (cons __tmp99579 __tmp99568))))
                                    _clause9906999108_))))))
                   (_loop9906499088_ _target9906199082_ '()))
                 (_g9905899075_ _g9905999079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9905899075_
                                                _g9905999079_)))))
                                   (_g9905799136_
                                    (let ((__tmp99582
                                           (lambda (_clause99140_)
                                             (let* ((___stx9950999510_
                                                     _clause99140_)
                                                    (_g9914499171_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9950999510_)))))
                                               (let ((___kont9951299513_
                                                      (lambda (_L99256_
                                                               _L99258_)
                                                        (let ((__tmp99583
                                                               (let ((__tmp99584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99586
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99585
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99256_ '()))))
                                (declare (not safe))
                                (cons __tmp99586 __tmp99585))))
                         (declare (not safe))
                         (cons __tmp99584 '()))))
                  (declare (not safe))
                  (cons _L99258_ __tmp99583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9951499515_
                                                      (lambda (_L99208_
                                                               _L99210_
                                                               _L99211_)
                                                        (let ((__tmp99587
                                                               (let ((__tmp99588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99589
                                     (let ((__tmp99591
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99590
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99208_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99591 __tmp99590))))
                                (declare (not safe))
                                (cons __tmp99589 '()))))
                         (declare (not safe))
                         (cons _L99210_ __tmp99588))))
                  (declare (not safe))
                  (cons _L99211_ __tmp99587)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9950999510_))
                                                     (let ((_e9915099236_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9950999510_))))
                                                       (let ((_tl9914899243_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9915099236_)))
                     (_hd9914999240_
                      (let () (declare (not safe)) (##car _e9915099236_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9914899243_))
                     (let ((_e9915399246_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9914899243_))))
                       (let ((_tl9915199253_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9915399246_)))
                             (_hd9915299250_
                              (let ()
                                (declare (not safe))
                                (##car _e9915399246_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9915199253_))
                             (___kont9951299513_ _hd9915299250_ _hd9914999240_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9915199253_))
                                 (let ((_e9916599198_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9915199253_))))
                                   (let ((_tl9916399205_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9916599198_)))
                                         (_hd9916499202_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9916599198_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9916399205_))
                                         (___kont9951499515_
                                          _hd9916499202_
                                          _hd9915299250_
                                          _hd9914999240_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9914499171_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9914499171_))))))
                     (let () (declare (not safe)) (_g9914499171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9914499171_)))))))
                                          (__tmp99580
                                           (let ((__tmp99581
                                                  (lambda (_g9927499277_
                                                           _g9927599280_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9927499277_
                                                            _g9927599280_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99581
                                                     '()
                                                     _L99037_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99582 __tmp99580))))
                                 (_g9895698980_ _g9895798984_)))
                           _clause9897499033_
                           _hd9896499001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9896999013_
                                                   _target9896699007_
                                                   '()))
                                                (_g9895698980_
                                                 _g9895798984_)))))
                                      (_g9895698980_ _g9895798984_))))
                              (_g9895698980_ _g9895798984_))))
                      (_g9895698980_ _g9895798984_)))))
          (_g9895599283_ _stx98953_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99552
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
           __obj99552
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99592 |gxc[1]#_g99593_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99592
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99594 |gxc[1]#_g99595_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99594
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99596 |gxc[1]#_g99597_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99596
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99598
               (let ((__tmp99603
                      (let ((__tmp99604 |gxc[1]#_g99605_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99604)))
                     (__tmp99599
                      (let ((__tmp99600
                             (let ((__tmp99601 |gxc[1]#_g99602_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99601))))
                        (declare (not safe))
                        (cons __tmp99600 '()))))
                 (declare (not safe))
                 (cons __tmp99603 __tmp99599))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99598
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99606
               (let ((__tmp99611
                      (let ((__tmp99612 |gxc[1]#_g99613_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99612)))
                     (__tmp99607
                      (let ((__tmp99608
                             (let ((__tmp99609 |gxc[1]#_g99610_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99609))))
                        (declare (not safe))
                        (cons __tmp99608 '()))))
                 (declare (not safe))
                 (cons __tmp99611 __tmp99607))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99606
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99614
               (let ((__tmp99619
                      (let ((__tmp99620 |gxc[1]#_g99621_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99620)))
                     (__tmp99615
                      (let ((__tmp99616
                             (let ((__tmp99617 |gxc[1]#_g99618_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99617))))
                        (declare (not safe))
                        (cons __tmp99616 '()))))
                 (declare (not safe))
                 (cons __tmp99619 __tmp99615))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99614
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99622
               (let ((__tmp99627
                      (let ((__tmp99628 |gxc[1]#_g99629_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99628)))
                     (__tmp99623
                      (let ((__tmp99624
                             (let ((__tmp99625 |gxc[1]#_g99626_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99625))))
                        (declare (not safe))
                        (cons __tmp99624 '()))))
                 (declare (not safe))
                 (cons __tmp99627 __tmp99623))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99552
           __tmp99622
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99552))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99289_)
        (let* ((_g9929399307_
                (lambda (_g9929499303_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9929499303_))))
               (_g9929299348_
                (lambda (_g9929499311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9929499311_))
                      (let ((_e9929899314_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9929499311_))))
                        (let ((_hd9929799318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9929899314_)))
                              (_tl9929699321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9929899314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9929699321_))
                              (let ((_e9930199324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9929699321_))))
                                (let ((_hd9930099328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9930199324_)))
                                      (_tl9929999331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9930199324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9929999331_))
                                      ((lambda (_L99334_)
                                         (let ((__tmp99637
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99630
                                                (let ((__tmp99636
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99631
                                                       (let ((__tmp99632
                                                              (let ((__tmp99635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99633
                             (let ((__tmp99634
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99334_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99634))))
                        (declare (not safe))
                        (cons __tmp99635 __tmp99633))))
                 (declare (not safe))
                 (cons __tmp99632 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99636
                                                        __tmp99631))))
                                           (declare (not safe))
                                           (cons __tmp99637 __tmp99630)))
                                       _hd9930099328_)
                                      (_g9929399307_ _g9929499311_))))
                              (_g9929399307_ _g9929499311_))))
                      (_g9929399307_ _g9929499311_)))))
          (_g9929299348_ _$stx99289_))))))
