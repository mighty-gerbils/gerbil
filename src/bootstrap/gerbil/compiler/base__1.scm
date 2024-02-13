(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g195614_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195616_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195618_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195623_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195626_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195631_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195634_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195639_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195642_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195647_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195650_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx190404_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190404_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx190407_)
        (let* ((_g190410190434_
                (lambda (_g190411190430_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190411190430_))))
               (_g190409190737_
                (lambda (_g190411190438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190411190438_))
                      (let ((_e190414190441_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190411190438_))))
                        (let ((_hd190415190445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190414190441_)))
                              (_tl190416190448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190414190441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190416190448_))
                              (let ((_e190417190451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190416190448_))))
                                (let ((_hd190418190455_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190417190451_)))
                                      (_tl190419190458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190417190451_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl190419190458_))
                                      (let ((_g195585_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl190419190458_
                                                '0))))
                                        (begin
                                          (let ((_g195586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195585_)
                                                       (##vector-length
                                                        _g195585_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195586_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195586_)))
                                          (let ((_target190420190461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g195585_ 0)))
                                                (_tl190422190464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g195585_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl190422190464_))
                                                (letrec ((_loop190423190467_
                                                          (lambda (_hd190421190471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause190427190474_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd190421190471_))
                        (let ((_e190424190477_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd190421190471_))))
                          (let ((_lp-hd190425190481_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e190424190477_)))
                                (_lp-tl190426190484_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e190424190477_))))
                            (_loop190423190467_
                             _lp-tl190426190484_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd190425190481_
                                     _clause190427190474_)))))
                        (let ((_clause190428190487_
                               (reverse _clause190427190474_)))
                          ((lambda (_L190491_ _L190493_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L190493_))
                                 (let* ((_g190512190529_
                                         (lambda (_g190513190525_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g190513190525_))))
                                        (_g190511190590_
                                         (lambda (_g190513190533_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g190513190533_))
                                               (let ((_g195587_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g190513190533_
                                                         '0))))
                                                 (begin
                                                   (let ((_g195588_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g195587_)
                        (##vector-length _g195587_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g195588_ 2)))
                 (error "Context expects 2 values" _g195588_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target190515190536_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195587_
                                                             0)))
                                                         (_tl190517190539_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195587_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl190517190539_))
                                                         (letrec ((_loop190518190542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd190516190546_ _clause190522190549_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd190516190546_))
                                 (let ((_e190519190552_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd190516190546_))))
                                   (let ((_lp-hd190520190556_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e190519190552_)))
                                         (_lp-tl190521190559_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e190519190552_))))
                                     (_loop190518190542_
                                      _lp-tl190521190559_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd190520190556_
                                              _clause190522190549_)))))
                                 (let ((_clause190523190562_
                                        (reverse _clause190522190549_)))
                                   ((lambda (_L190566_)
                                      (let ()
                                        (let ((__tmp195600
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp195589
                                               (let ((__tmp195598
                                                      (let ((__tmp195599
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp195599 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp195590
                                                      (let ((__tmp195591
                                                             (let ((__tmp195597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp195592
                            (let ((__tmp195596
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp195593
                                   (let ((__tmp195594
                                          (let ((__tmp195595
                                                 (lambda (_g190581190584_
                                                          _g190582190587_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g190581190584_
                                                           _g190582190587_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp195595
                                                    '()
                                                    _L190566_))))
                                     (declare (not safe))
                                     (cons _L190493_ __tmp195594))))
                              (declare (not safe))
                              (cons __tmp195596 __tmp195593))))
                       (declare (not safe))
                       (cons __tmp195597 __tmp195592))))
                (declare (not safe))
                (cons __tmp195591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp195598
                                                       __tmp195590))))
                                          (declare (not safe))
                                          (cons __tmp195600 __tmp195589))))
                                    _clause190523190562_))))))
                   (_loop190518190542_ _target190515190536_ '()))
                 (_g190512190529_ _g190513190533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g190512190529_
                                                _g190513190533_)))))
                                   (_g190511190590_
                                    (let ((__tmp195603
                                           (lambda (_clause190594_)
                                             (let* ((___stx195531195532_
                                                     _clause190594_)
                                                    (_g190598190625_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx195531195532_)))))
                                               (let ((___kont195534195535_
                                                      (lambda (_L190710_
                                                               _L190712_)
                                                        (let ((__tmp195604
                                                               (let ((__tmp195605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195607
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp195606
                                     (let ()
                                       (declare (not safe))
                                       (cons _L190710_ '()))))
                                (declare (not safe))
                                (cons __tmp195607 __tmp195606))))
                         (declare (not safe))
                         (cons __tmp195605 '()))))
                  (declare (not safe))
                  (cons _L190712_ __tmp195604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont195536195537_
                                                      (lambda (_L190662_
                                                               _L190664_
                                                               _L190665_)
                                                        (let ((__tmp195608
                                                               (let ((__tmp195609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195610
                                     (let ((__tmp195612
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp195611
                                            (let ()
                                              (declare (not safe))
                                              (cons _L190662_ '()))))
                                       (declare (not safe))
                                       (cons __tmp195612 __tmp195611))))
                                (declare (not safe))
                                (cons __tmp195610 '()))))
                         (declare (not safe))
                         (cons _L190664_ __tmp195609))))
                  (declare (not safe))
                  (cons _L190665_ __tmp195608)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx195531195532_))
                                                     (let ((_e190602190690_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx195531195532_))))
                                                       (let ((_tl190604190697_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e190602190690_)))
                     (_hd190603190694_
                      (let () (declare (not safe)) (##car _e190602190690_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl190604190697_))
                     (let ((_e190605190700_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl190604190697_))))
                       (let ((_tl190607190707_
                              (let ()
                                (declare (not safe))
                                (##cdr _e190605190700_)))
                             (_hd190606190704_
                              (let ()
                                (declare (not safe))
                                (##car _e190605190700_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl190607190707_))
                             (___kont195534195535_
                              _hd190606190704_
                              _hd190603190694_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl190607190707_))
                                 (let ((_e190617190652_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl190607190707_))))
                                   (let ((_tl190619190659_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e190617190652_)))
                                         (_hd190618190656_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e190617190652_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl190619190659_))
                                         (___kont195536195537_
                                          _hd190618190656_
                                          _hd190606190704_
                                          _hd190603190694_)
                                         (let ()
                                           (declare (not safe))
                                           (_g190598190625_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g190598190625_))))))
                     (let () (declare (not safe)) (_g190598190625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g190598190625_)))))))
                                          (__tmp195601
                                           (let ((__tmp195602
                                                  (lambda (_g190728190731_
                                                           _g190729190734_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g190728190731_
                                                            _g190729190734_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp195602
                                                     '()
                                                     _L190491_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp195603 __tmp195601))))
                                 (_g190410190434_ _g190411190438_)))
                           _clause190428190487_
                           _hd190418190455_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop190423190467_
                                                   _target190420190461_
                                                   '()))
                                                (_g190410190434_
                                                 _g190411190438_)))))
                                      (_g190410190434_ _g190411190438_))))
                              (_g190410190434_ _g190411190438_))))
                      (_g190410190434_ _g190411190438_)))))
          (_g190409190737_ _stx190407_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj195574
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
           __obj195574
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195613 |gxc[1]#_g195614_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195613
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195615 |gxc[1]#_g195616_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195615
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195617 |gxc[1]#_g195618_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195617
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195619
               (let ((__tmp195624
                      (let ((__tmp195625 |gxc[1]#_g195626_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195625)))
                     (__tmp195620
                      (let ((__tmp195621
                             (let ((__tmp195622 |gxc[1]#_g195623_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195622))))
                        (declare (not safe))
                        (cons __tmp195621 '()))))
                 (declare (not safe))
                 (cons __tmp195624 __tmp195620))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195619
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195627
               (let ((__tmp195632
                      (let ((__tmp195633 |gxc[1]#_g195634_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195633)))
                     (__tmp195628
                      (let ((__tmp195629
                             (let ((__tmp195630 |gxc[1]#_g195631_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195630))))
                        (declare (not safe))
                        (cons __tmp195629 '()))))
                 (declare (not safe))
                 (cons __tmp195632 __tmp195628))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195627
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195635
               (let ((__tmp195640
                      (let ((__tmp195641 |gxc[1]#_g195642_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195641)))
                     (__tmp195636
                      (let ((__tmp195637
                             (let ((__tmp195638 |gxc[1]#_g195639_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195638))))
                        (declare (not safe))
                        (cons __tmp195637 '()))))
                 (declare (not safe))
                 (cons __tmp195640 __tmp195636))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195635
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195643
               (let ((__tmp195648
                      (let ((__tmp195649 |gxc[1]#_g195650_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195649)))
                     (__tmp195644
                      (let ((__tmp195645
                             (let ((__tmp195646 |gxc[1]#_g195647_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195646))))
                        (declare (not safe))
                        (cons __tmp195645 '()))))
                 (declare (not safe))
                 (cons __tmp195648 __tmp195644))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195574
           __tmp195643
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj195574))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190743_)
        (let* ((_g190747190761_
                (lambda (_g190748190757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190748190757_))))
               (_g190746190802_
                (lambda (_g190748190765_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190748190765_))
                      (let ((_e190750190768_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190748190765_))))
                        (let ((_hd190751190772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190750190768_)))
                              (_tl190752190775_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190750190768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190752190775_))
                              (let ((_e190753190778_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190752190775_))))
                                (let ((_hd190754190782_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190753190778_)))
                                      (_tl190755190785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190753190778_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190755190785_))
                                      ((lambda (_L190788_)
                                         (let ((__tmp195658
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp195651
                                                (let ((__tmp195657
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp195652
                                                       (let ((__tmp195653
                                                              (let ((__tmp195656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp195654
                             (let ((__tmp195655
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190788_ '()))))
                               (declare (not safe))
                               (cons '() __tmp195655))))
                        (declare (not safe))
                        (cons __tmp195656 __tmp195654))))
                 (declare (not safe))
                 (cons __tmp195653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp195657
                                                        __tmp195652))))
                                           (declare (not safe))
                                           (cons __tmp195658 __tmp195651)))
                                       _hd190754190782_)
                                      (_g190747190761_ _g190748190765_))))
                              (_g190747190761_ _g190748190765_))))
                      (_g190747190761_ _g190748190765_)))))
          (_g190746190802_ _$stx190743_))))))
