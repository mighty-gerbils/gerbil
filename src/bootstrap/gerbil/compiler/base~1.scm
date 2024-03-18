(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99551_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99553_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99555_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99560_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99563_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99568_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99571_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99576_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99579_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99584_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99587_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98908_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98908_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98911_)
        (let* ((_g9891498938_
                (lambda (_g9891598934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9891598934_))))
               (_g9891399241_
                (lambda (_g9891598942_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9891598942_))
                      (let ((_e9892098945_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9891598942_))))
                        (let ((_hd9891998949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9892098945_)))
                              (_tl9891898952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9892098945_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9891898952_))
                              (let ((_e9892398955_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9891898952_))))
                                (let ((_hd9892298959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9892398955_)))
                                      (_tl9892198962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9892398955_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9892198962_))
                                      (let ((_g99522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9892198962_
                                                '0))))
                                        (begin
                                          (let ((_g99523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99522_)
                                                       (##vector-length
                                                        _g99522_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99523_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99523_)))
                                          (let ((_target9892498965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99522_ 0)))
                                                (_tl9892698968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99522_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9892698968_))
                                                (letrec ((_loop9892798971_
                                                          (lambda (_hd9892598975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9893198978_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9892598975_))
                        (let ((_e9892898981_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9892598975_))))
                          (let ((_lp-hd9892998985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9892898981_)))
                                (_lp-tl9893098988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9892898981_))))
                            (_loop9892798971_
                             _lp-tl9893098988_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9892998985_ _clause9893198978_)))))
                        (let ((_clause9893298991_
                               (reverse _clause9893198978_)))
                          ((lambda (_L98995_ _L98997_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L98997_))
                                 (let* ((_g9901699033_
                                         (lambda (_g9901799029_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9901799029_))))
                                        (_g9901599094_
                                         (lambda (_g9901799037_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9901799037_))
                                               (let ((_g99524_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9901799037_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99525_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99524_)
                        (##vector-length _g99524_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99525_ 2)))
                 (error "Context expects 2 values" _g99525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9901999040_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99524_
                                                             0)))
                                                         (_tl9902199043_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99524_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9902199043_))
                                                         (letrec ((_loop9902299046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9902099050_ _clause9902699053_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9902099050_))
                                 (let ((_e9902399056_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9902099050_))))
                                   (let ((_lp-hd9902499060_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9902399056_)))
                                         (_lp-tl9902599063_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9902399056_))))
                                     (_loop9902299046_
                                      _lp-tl9902599063_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9902499060_
                                              _clause9902699053_)))))
                                 (let ((_clause9902799066_
                                        (reverse _clause9902699053_)))
                                   ((lambda (_L99070_)
                                      (let ()
                                        (let ((__tmp99537
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99526
                                               (let ((__tmp99535
                                                      (let ((__tmp99536
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99536 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99527
                                                      (let ((__tmp99528
                                                             (let ((__tmp99534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99529
                            (let ((__tmp99533
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99530
                                   (let ((__tmp99531
                                          (let ((__tmp99532
                                                 (lambda (_g9908599088_
                                                          _g9908699091_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9908599088_
                                                           _g9908699091_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99532 '() _L99070_))))
                                     (declare (not safe))
                                     (cons _L98997_ __tmp99531))))
                              (declare (not safe))
                              (cons __tmp99533 __tmp99530))))
                       (declare (not safe))
                       (cons __tmp99534 __tmp99529))))
                (declare (not safe))
                (cons __tmp99528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99535
                                                       __tmp99527))))
                                          (declare (not safe))
                                          (cons __tmp99537 __tmp99526))))
                                    _clause9902799066_))))))
                   (_loop9902299046_ _target9901999040_ '()))
                 (_g9901699033_ _g9901799037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9901699033_
                                                _g9901799037_)))))
                                   (_g9901599094_
                                    (let ((__tmp99540
                                           (lambda (_clause99098_)
                                             (let* ((___stx9946799468_
                                                     _clause99098_)
                                                    (_g9910299129_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9946799468_)))))
                                               (let ((___kont9947099471_
                                                      (lambda (_L99214_
                                                               _L99216_)
                                                        (let ((__tmp99541
                                                               (let ((__tmp99542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99544
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99543
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99214_ '()))))
                                (declare (not safe))
                                (cons __tmp99544 __tmp99543))))
                         (declare (not safe))
                         (cons __tmp99542 '()))))
                  (declare (not safe))
                  (cons _L99216_ __tmp99541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9947299473_
                                                      (lambda (_L99166_
                                                               _L99168_
                                                               _L99169_)
                                                        (let ((__tmp99545
                                                               (let ((__tmp99546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99547
                                     (let ((__tmp99549
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99548
                                            (let ()
                                              (declare (not safe))
                                              (cons _L99166_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99549 __tmp99548))))
                                (declare (not safe))
                                (cons __tmp99547 '()))))
                         (declare (not safe))
                         (cons _L99168_ __tmp99546))))
                  (declare (not safe))
                  (cons _L99169_ __tmp99545)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9946799468_))
                                                     (let ((_e9910899194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9946799468_))))
                                                       (let ((_tl9910699201_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9910899194_)))
                     (_hd9910799198_
                      (let () (declare (not safe)) (##car _e9910899194_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9910699201_))
                     (let ((_e9911199204_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9910699201_))))
                       (let ((_tl9910999211_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9911199204_)))
                             (_hd9911099208_
                              (let ()
                                (declare (not safe))
                                (##car _e9911199204_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9910999211_))
                             (___kont9947099471_ _hd9911099208_ _hd9910799198_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9910999211_))
                                 (let ((_e9912399156_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9910999211_))))
                                   (let ((_tl9912199163_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9912399156_)))
                                         (_hd9912299160_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9912399156_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9912199163_))
                                         (___kont9947299473_
                                          _hd9912299160_
                                          _hd9911099208_
                                          _hd9910799198_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9910299129_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9910299129_))))))
                     (let () (declare (not safe)) (_g9910299129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9910299129_)))))))
                                          (__tmp99538
                                           (let ((__tmp99539
                                                  (lambda (_g9923299235_
                                                           _g9923399238_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9923299235_
                                                            _g9923399238_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99539
                                                     '()
                                                     _L98995_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99540 __tmp99538))))
                                 (_g9891498938_ _g9891598942_)))
                           _clause9893298991_
                           _hd9892298959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9892798971_
                                                   _target9892498965_
                                                   '()))
                                                (_g9891498938_
                                                 _g9891598942_)))))
                                      (_g9891498938_ _g9891598942_))))
                              (_g9891498938_ _g9891598942_))))
                      (_g9891498938_ _g9891598942_)))))
          (_g9891399241_ _stx98911_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99510
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
           __obj99510
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99550 |gxc[1]#_g99551_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99550
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99552 |gxc[1]#_g99553_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99552
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99554 |gxc[1]#_g99555_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99554
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99556
               (let ((__tmp99561
                      (let ((__tmp99562 |gxc[1]#_g99563_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99562)))
                     (__tmp99557
                      (let ((__tmp99558
                             (let ((__tmp99559 |gxc[1]#_g99560_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99559))))
                        (declare (not safe))
                        (cons __tmp99558 '()))))
                 (declare (not safe))
                 (cons __tmp99561 __tmp99557))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99556
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99564
               (let ((__tmp99569
                      (let ((__tmp99570 |gxc[1]#_g99571_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99570)))
                     (__tmp99565
                      (let ((__tmp99566
                             (let ((__tmp99567 |gxc[1]#_g99568_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99567))))
                        (declare (not safe))
                        (cons __tmp99566 '()))))
                 (declare (not safe))
                 (cons __tmp99569 __tmp99565))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99564
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99572
               (let ((__tmp99577
                      (let ((__tmp99578 |gxc[1]#_g99579_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99578)))
                     (__tmp99573
                      (let ((__tmp99574
                             (let ((__tmp99575 |gxc[1]#_g99576_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99575))))
                        (declare (not safe))
                        (cons __tmp99574 '()))))
                 (declare (not safe))
                 (cons __tmp99577 __tmp99573))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99572
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99580
               (let ((__tmp99585
                      (let ((__tmp99586 |gxc[1]#_g99587_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99586)))
                     (__tmp99581
                      (let ((__tmp99582
                             (let ((__tmp99583 |gxc[1]#_g99584_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99583))))
                        (declare (not safe))
                        (cons __tmp99582 '()))))
                 (declare (not safe))
                 (cons __tmp99585 __tmp99581))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99510
           __tmp99580
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99510))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx99247_)
        (let* ((_g9925199265_
                (lambda (_g9925299261_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9925299261_))))
               (_g9925099306_
                (lambda (_g9925299269_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9925299269_))
                      (let ((_e9925699272_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9925299269_))))
                        (let ((_hd9925599276_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9925699272_)))
                              (_tl9925499279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9925699272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9925499279_))
                              (let ((_e9925999282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9925499279_))))
                                (let ((_hd9925899286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9925999282_)))
                                      (_tl9925799289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9925999282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9925799289_))
                                      ((lambda (_L99292_)
                                         (let ((__tmp99595
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99588
                                                (let ((__tmp99594
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99589
                                                       (let ((__tmp99590
                                                              (let ((__tmp99593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99591
                             (let ((__tmp99592
                                    (let ()
                                      (declare (not safe))
                                      (cons _L99292_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99592))))
                        (declare (not safe))
                        (cons __tmp99593 __tmp99591))))
                 (declare (not safe))
                 (cons __tmp99590 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99594
                                                        __tmp99589))))
                                           (declare (not safe))
                                           (cons __tmp99595 __tmp99588)))
                                       _hd9925899286_)
                                      (_g9925199265_ _g9925299269_))))
                              (_g9925199265_ _g9925299269_))))
                      (_g9925199265_ _g9925299269_)))))
          (_g9925099306_ _$stx99247_))))))
