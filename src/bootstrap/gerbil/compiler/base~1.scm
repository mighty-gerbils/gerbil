(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99602_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99604_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99606_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99611_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99614_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99619_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99622_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99627_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99630_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99635_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99638_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98959_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98959_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98962_)
        (let* ((_g9896598989_
                (lambda (_g9896698985_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9896698985_))))
               (_g9896499292_
                (lambda (_g9896698993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9896698993_))
                      (let ((_e9897198996_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9896698993_))))
                        (let ((_hd9897099000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9897198996_)))
                              (_tl9896999003_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9897198996_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9896999003_))
                              (let ((_e9897499006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9896999003_))))
                                (let ((_hd9897399010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9897499006_)))
                                      (_tl9897299013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9897499006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9897299013_))
                                      (let ((_g99573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9897299013_
                                                '0))))
                                        (begin
                                          (let ((_g99574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99573_)
                                                       (##vector-length
                                                        _g99573_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99574_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99574_)))
                                          (let ((_target9897599016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99573_ 0)))
                                                (_tl9897799019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99573_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9897799019_))
                                                (letrec ((_loop9897899022_
                                                          (lambda (_hd9897699026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9898299029_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9897699026_))
                        (let ((_e9897999032_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9897699026_))))
                          (let ((_lp-hd9898099036_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9897999032_)))
                                (_lp-tl9898199039_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9897999032_))))
                            (_loop9897899022_
                             _lp-tl9898199039_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9898099036_ _clause9898299029_)))))
                        (let ((_clause9898399042_
                               (reverse _clause9898299029_)))
                          ((lambda (_L99046_ _L99048_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L99048_))
                                 (let* ((_g9906799084_
                                         (lambda (_g9906899080_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9906899080_))))
                                        (_g9906699145_
                                         (lambda (_g9906899088_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9906899088_))
                                               (let ((_g99575_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9906899088_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99576_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99575_)
                        (##vector-length _g99575_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99576_ 2)))
                 (error "Context expects 2 values" _g99576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9907099091_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99575_
                                                             0)))
                                                         (_tl9907299094_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99575_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9907299094_))
                                                         (letrec ((_loop9907399097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9907199101_ _clause9907799104_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9907199101_))
                                 (let ((_e9907499107_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9907199101_))))
                                   (let ((_lp-hd9907599111_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9907499107_)))
                                         (_lp-tl9907699114_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9907499107_))))
                                     (_loop9907399097_
                                      _lp-tl9907699114_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9907599111_
                                              _clause9907799104_)))))
                                 (let ((_clause9907899117_
                                        (reverse _clause9907799104_)))
                                   ((lambda (_L99121_)
                                      (let ()
                                        (let ((__tmp99588
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99577
                                               (let ((__tmp99586
                                                      (let ((__tmp99587
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99587 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99578
                                                      (let ((__tmp99579
                                                             (let ((__tmp99585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99580
                            (let ((__tmp99584
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99581
                                   (let ((__tmp99582
                                          (let ((__tmp99583
                                                 (lambda (_g9913699139_
                                                          _g9913799142_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9913699139_
                                                           _g9913799142_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99583 '() _L99121_))))
                                     (declare (not safe))
                                     (cons _L99048_ __tmp99582))))
                              (declare (not safe))
                              (cons __tmp99584 __tmp99581))))
                       (declare (not safe))
                       (cons __tmp99585 __tmp99580))))
                (declare (not safe))
                (cons __tmp99579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99586
                                                       __tmp99578))))
                                          (declare (not safe))
                                          (cons __tmp99588 __tmp99577))))
                                    _clause9907899117_))))))
                   (_loop9907399097_ _target9907099091_ '()))
                 (_g9906799084_ _g9906899088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9906799084_
                                                _g9906899088_)))))
                                   (_g9906699145_
                                    (let ((__tmp99591
                                           (lambda (_clause99149_)
                                             (let* ((___stx9951899519_
                                                     _clause99149_)
                                                    (_g9915399180_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9951899519_)))))
                                               (let ((___kont9952199522_
                                                      (lambda (_L99265_
                                                               _L99267_)
                                                        (let ((__tmp99592
                                                               (let ((__tmp99593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99595
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99594
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99265_ '()))))
                                (declare (not safe))
                                (cons __tmp99595 __tmp99594))))
                         (declare (not safe))
                         (cons __tmp99593 '()))))
                  (declare (not safe))
                  (cons _L99267_ __tmp99592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9952399524_
                                                      (lambda (_L99217_
                                                               _L99219_
                                                               _L99220_)
                                                        (let ((__tmp99596
                                                               (let ((__tmp99597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99598
                                     (let ((__tmp99600
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99599
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99217_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99600 __tmp99599))))
                                (declare (not safe))
                                (cons __tmp99598 '()))))
                         (declare (not safe))
                         (cons _L99219_ __tmp99597))))
                  (declare (not safe))
                  (cons _L99220_ __tmp99596)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9951899519_))
                                                     (let ((_e9915999245_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9951899519_))))
                                                       (let ((_tl9915799252_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9915999245_)))
                     (_hd9915899249_
                      (let () (declare (not safe)) (##car _e9915999245_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9915799252_))
                     (let ((_e9916299255_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9915799252_))))
                       (let ((_tl9916099262_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9916299255_)))
                             (_hd9916199259_
                              (let ()
                                (declare (not safe))
                                (##car _e9916299255_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9916099262_))
                             (___kont9952199522_ _hd9916199259_ _hd9915899249_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9916099262_))
                                 (let ((_e9917499207_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9916099262_))))
                                   (let ((_tl9917299214_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9917499207_)))
                                         (_hd9917399211_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9917499207_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9917299214_))
                                         (___kont9952399524_
                                          _hd9917399211_
                                          _hd9916199259_
                                          _hd9915899249_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9915399180_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9915399180_))))))
                     (let () (declare (not safe)) (_g9915399180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9915399180_)))))))
                                          (__tmp99589
                                           (let ((__tmp99590
                                                  (lambda (_g9928399286_
                                                           _g9928499289_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9928399286_
                                                            _g9928499289_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99590
                                                     '()
                                                     _L99046_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99591 __tmp99589))))
                                 (_g9896598989_ _g9896698993_)))
                           _clause9898399042_
                           _hd9897399010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9897899022_
                                                   _target9897599016_
                                                   '()))
                                                (_g9896598989_
                                                 _g9896698993_)))))
                                      (_g9896598989_ _g9896698993_))))
                              (_g9896598989_ _g9896698993_))))
                      (_g9896598989_ _g9896698993_)))))
          (_g9896499292_ _stx98962_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99561
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
           __obj99561
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99601 |gxc[1]#_g99602_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99601
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99603 |gxc[1]#_g99604_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99603
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99605 |gxc[1]#_g99606_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99605
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99607
               (let ((__tmp99612
                      (let ((__tmp99613 |gxc[1]#_g99614_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99613)))
                     (__tmp99608
                      (let ((__tmp99609
                             (let ((__tmp99610 |gxc[1]#_g99611_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99610))))
                        (declare (not safe))
                        (cons __tmp99609 '()))))
                 (declare (not safe))
                 (cons __tmp99612 __tmp99608))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99607
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99615
               (let ((__tmp99620
                      (let ((__tmp99621 |gxc[1]#_g99622_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99621)))
                     (__tmp99616
                      (let ((__tmp99617
                             (let ((__tmp99618 |gxc[1]#_g99619_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99618))))
                        (declare (not safe))
                        (cons __tmp99617 '()))))
                 (declare (not safe))
                 (cons __tmp99620 __tmp99616))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99615
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99623
               (let ((__tmp99628
                      (let ((__tmp99629 |gxc[1]#_g99630_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99629)))
                     (__tmp99624
                      (let ((__tmp99625
                             (let ((__tmp99626 |gxc[1]#_g99627_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99626))))
                        (declare (not safe))
                        (cons __tmp99625 '()))))
                 (declare (not safe))
                 (cons __tmp99628 __tmp99624))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99623
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99631
               (let ((__tmp99636
                      (let ((__tmp99637 |gxc[1]#_g99638_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99637)))
                     (__tmp99632
                      (let ((__tmp99633
                             (let ((__tmp99634 |gxc[1]#_g99635_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99634))))
                        (declare (not safe))
                        (cons __tmp99633 '()))))
                 (declare (not safe))
                 (cons __tmp99636 __tmp99632))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99561
           __tmp99631
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99561))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99298_)
        (let* ((_g9930299316_
                (lambda (_g9930399312_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9930399312_))))
               (_g9930199357_
                (lambda (_g9930399320_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9930399320_))
                      (let ((_e9930799323_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9930399320_))))
                        (let ((_hd9930699327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9930799323_)))
                              (_tl9930599330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9930799323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9930599330_))
                              (let ((_e9931099333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9930599330_))))
                                (let ((_hd9930999337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9931099333_)))
                                      (_tl9930899340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9931099333_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9930899340_))
                                      ((lambda (_L99343_)
                                         (let ((__tmp99646
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99639
                                                (let ((__tmp99645
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99640
                                                       (let ((__tmp99641
                                                              (let ((__tmp99644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99642
                             (let ((__tmp99643
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99343_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99643))))
                        (declare (not safe))
                        (cons __tmp99644 __tmp99642))))
                 (declare (not safe))
                 (cons __tmp99641 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99645
                                                        __tmp99640))))
                                           (declare (not safe))
                                           (cons __tmp99646 __tmp99639)))
                                       _hd9930999337_)
                                      (_g9930299316_ _g9930399320_))))
                              (_g9930299316_ _g9930399320_))))
                      (_g9930299316_ _g9930399320_)))))
          (_g9930199357_ _$stx99298_))))))
