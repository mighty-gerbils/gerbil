(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192559_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192561_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192563_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192568_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192571_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192576_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192579_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192584_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192587_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192592_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192595_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187451_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187451_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187454_)
        (let* ((_g187457187481_
                (lambda (_g187458187477_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187458187477_))))
               (_g187456187784_
                (lambda (_g187458187485_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187458187485_))
                      (let ((_e187463187488_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187458187485_))))
                        (let ((_hd187462187492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187463187488_)))
                              (_tl187461187495_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187463187488_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187461187495_))
                              (let ((_e187466187498_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187461187495_))))
                                (let ((_hd187465187502_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187466187498_)))
                                      (_tl187464187505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187466187498_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187464187505_))
                                      (let ((_g192530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187464187505_
                                                '0))))
                                        (begin
                                          (let ((_g192531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192530_)
                                                       (##vector-length
                                                        _g192530_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192531_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192531_)))
                                          (let ((_target187467187508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192530_ 0)))
                                                (_tl187469187511_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192530_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187469187511_))
                                                (letrec ((_loop187470187514_
                                                          (lambda (_hd187468187518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187474187521_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187468187518_))
                        (let ((_e187471187524_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187468187518_))))
                          (let ((_lp-hd187472187528_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187471187524_)))
                                (_lp-tl187473187531_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187471187524_))))
                            (_loop187470187514_
                             _lp-tl187473187531_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187472187528_
                                     _clause187474187521_)))))
                        (let ((_clause187475187534_
                               (reverse _clause187474187521_)))
                          ((lambda (_L187538_ _L187540_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187540_))
                                 (let* ((_g187559187576_
                                         (lambda (_g187560187572_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187560187572_))))
                                        (_g187558187637_
                                         (lambda (_g187560187580_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187560187580_))
                                               (let ((_g192532_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187560187580_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192533_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192532_)
                        (##vector-length _g192532_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192533_ 2)))
                 (error "Context expects 2 values" _g192533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187562187583_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192532_
                                                             0)))
                                                         (_tl187564187586_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192532_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187564187586_))
                                                         (letrec ((_loop187565187589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187563187593_ _clause187569187596_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187563187593_))
                                 (let ((_e187566187599_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187563187593_))))
                                   (let ((_lp-hd187567187603_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187566187599_)))
                                         (_lp-tl187568187606_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187566187599_))))
                                     (_loop187565187589_
                                      _lp-tl187568187606_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187567187603_
                                              _clause187569187596_)))))
                                 (let ((_clause187570187609_
                                        (reverse _clause187569187596_)))
                                   ((lambda (_L187613_)
                                      (let ()
                                        (let ((__tmp192545
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192534
                                               (let ((__tmp192543
                                                      (let ((__tmp192544
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192544 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192535
                                                      (let ((__tmp192536
                                                             (let ((__tmp192542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192537
                            (let ((__tmp192541
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192538
                                   (let ((__tmp192539
                                          (let ((__tmp192540
                                                 (lambda (_g187628187631_
                                                          _g187629187634_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187628187631_
                                                           _g187629187634_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192540
                                                    '()
                                                    _L187613_))))
                                     (declare (not safe))
                                     (cons _L187540_ __tmp192539))))
                              (declare (not safe))
                              (cons __tmp192541 __tmp192538))))
                       (declare (not safe))
                       (cons __tmp192542 __tmp192537))))
                (declare (not safe))
                (cons __tmp192536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192543
                                                       __tmp192535))))
                                          (declare (not safe))
                                          (cons __tmp192545 __tmp192534))))
                                    _clause187570187609_))))))
                   (_loop187565187589_ _target187562187583_ '()))
                 (_g187559187576_ _g187560187580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187559187576_
                                                _g187560187580_)))))
                                   (_g187558187637_
                                    (let ((__tmp192548
                                           (lambda (_clause187641_)
                                             (let* ((___stx192478192479_
                                                     _clause187641_)
                                                    (_g187645187672_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192478192479_)))))
                                               (let ((___kont192481192482_
                                                      (lambda (_L187757_
                                                               _L187759_)
                                                        (let ((__tmp192549
                                                               (let ((__tmp192550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192552
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192551
                                     (let ()
                                       (declare (not safe))
                                       (cons _L187757_ '()))))
                                (declare (not safe))
                                (cons __tmp192552 __tmp192551))))
                         (declare (not safe))
                         (cons __tmp192550 '()))))
                  (declare (not safe))
                  (cons _L187759_ __tmp192549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192483192484_
                                                      (lambda (_L187709_
                                                               _L187711_
                                                               _L187712_)
                                                        (let ((__tmp192553
                                                               (let ((__tmp192554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192555
                                     (let ((__tmp192557
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192556
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187709_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192557 __tmp192556))))
                                (declare (not safe))
                                (cons __tmp192555 '()))))
                         (declare (not safe))
                         (cons _L187711_ __tmp192554))))
                  (declare (not safe))
                  (cons _L187712_ __tmp192553)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192478192479_))
                                                     (let ((_e187651187737_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192478192479_))))
                                                       (let ((_tl187649187744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187651187737_)))
                     (_hd187650187741_
                      (let () (declare (not safe)) (##car _e187651187737_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187649187744_))
                     (let ((_e187654187747_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187649187744_))))
                       (let ((_tl187652187754_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187654187747_)))
                             (_hd187653187751_
                              (let ()
                                (declare (not safe))
                                (##car _e187654187747_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187652187754_))
                             (___kont192481192482_
                              _hd187653187751_
                              _hd187650187741_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187652187754_))
                                 (let ((_e187666187699_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187652187754_))))
                                   (let ((_tl187664187706_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187666187699_)))
                                         (_hd187665187703_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187666187699_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187664187706_))
                                         (___kont192483192484_
                                          _hd187665187703_
                                          _hd187653187751_
                                          _hd187650187741_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187645187672_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187645187672_))))))
                     (let () (declare (not safe)) (_g187645187672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187645187672_)))))))
                                          (__tmp192546
                                           (let ((__tmp192547
                                                  (lambda (_g187775187778_
                                                           _g187776187781_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g187775187778_
                                                            _g187776187781_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192547
                                                     '()
                                                     _L187538_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192548 __tmp192546))))
                                 (_g187457187481_ _g187458187485_)))
                           _clause187475187534_
                           _hd187465187502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187470187514_
                                                   _target187467187508_
                                                   '()))
                                                (_g187457187481_
                                                 _g187458187485_)))))
                                      (_g187457187481_ _g187458187485_))))
                              (_g187457187481_ _g187458187485_))))
                      (_g187457187481_ _g187458187485_)))))
          (_g187456187784_ _stx187454_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192521
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192558 |gxc[1]#_g192559_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192558
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192560 |gxc[1]#_g192561_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192560
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192562 |gxc[1]#_g192563_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192562
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192564
               (let ((__tmp192569
                      (let ((__tmp192570 |gxc[1]#_g192571_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192570)))
                     (__tmp192565
                      (let ((__tmp192566
                             (let ((__tmp192567 |gxc[1]#_g192568_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192567))))
                        (declare (not safe))
                        (cons __tmp192566 '()))))
                 (declare (not safe))
                 (cons __tmp192569 __tmp192565))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192564
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192572
               (let ((__tmp192577
                      (let ((__tmp192578 |gxc[1]#_g192579_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192578)))
                     (__tmp192573
                      (let ((__tmp192574
                             (let ((__tmp192575 |gxc[1]#_g192576_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192575))))
                        (declare (not safe))
                        (cons __tmp192574 '()))))
                 (declare (not safe))
                 (cons __tmp192577 __tmp192573))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192572
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192580
               (let ((__tmp192585
                      (let ((__tmp192586 |gxc[1]#_g192587_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192586)))
                     (__tmp192581
                      (let ((__tmp192582
                             (let ((__tmp192583 |gxc[1]#_g192584_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192583))))
                        (declare (not safe))
                        (cons __tmp192582 '()))))
                 (declare (not safe))
                 (cons __tmp192585 __tmp192581))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192580
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192588
               (let ((__tmp192593
                      (let ((__tmp192594 |gxc[1]#_g192595_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192594)))
                     (__tmp192589
                      (let ((__tmp192590
                             (let ((__tmp192591 |gxc[1]#_g192592_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192591))))
                        (declare (not safe))
                        (cons __tmp192590 '()))))
                 (declare (not safe))
                 (cons __tmp192593 __tmp192589))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192521
           __tmp192588
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192521))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx187790_)
        (let* ((_g187794187808_
                (lambda (_g187795187804_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187795187804_))))
               (_g187793187849_
                (lambda (_g187795187812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187795187812_))
                      (let ((_e187799187815_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187795187812_))))
                        (let ((_hd187798187819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187799187815_)))
                              (_tl187797187822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187799187815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187797187822_))
                              (let ((_e187802187825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187797187822_))))
                                (let ((_hd187801187829_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187802187825_)))
                                      (_tl187800187832_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187802187825_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl187800187832_))
                                      ((lambda (_L187835_)
                                         (let ((__tmp192603
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192596
                                                (let ((__tmp192602
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192597
                                                       (let ((__tmp192598
                                                              (let ((__tmp192601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192599
                             (let ((__tmp192600
                                    (let ()
                                      (declare (not safe))
                                      (cons _L187835_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192600))))
                        (declare (not safe))
                        (cons __tmp192601 __tmp192599))))
                 (declare (not safe))
                 (cons __tmp192598 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192602
                                                        __tmp192597))))
                                           (declare (not safe))
                                           (cons __tmp192603 __tmp192596)))
                                       _hd187801187829_)
                                      (_g187794187808_ _g187795187812_))))
                              (_g187794187808_ _g187795187812_))))
                      (_g187794187808_ _g187795187812_)))))
          (_g187793187849_ _$stx187790_))))))
