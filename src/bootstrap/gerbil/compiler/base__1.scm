(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98535_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98537_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98539_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98544_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98547_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98552_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98555_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98560_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98563_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98568_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98571_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97892_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97892_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97895_)
        (let* ((_g9789897922_
                (lambda (_g9789997918_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9789997918_))))
               (_g9789798225_
                (lambda (_g9789997926_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9789997926_))
                      (let ((_e9790497929_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9789997926_))))
                        (let ((_hd9790397933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9790497929_)))
                              (_tl9790297936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9790497929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9790297936_))
                              (let ((_e9790797939_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9790297936_))))
                                (let ((_hd9790697943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9790797939_)))
                                      (_tl9790597946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9790797939_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9790597946_))
                                      (let ((_g98506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9790597946_
                                                '0))))
                                        (begin
                                          (let ((_g98507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98506_)
                                                       (##vector-length
                                                        _g98506_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98507_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98507_)))
                                          (let ((_target9790897949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98506_ 0)))
                                                (_tl9791097952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98506_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9791097952_))
                                                (letrec ((_loop9791197955_
                                                          (lambda (_hd9790997959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9791597962_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9790997959_))
                        (let ((_e9791297965_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9790997959_))))
                          (let ((_lp-hd9791397969_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9791297965_)))
                                (_lp-tl9791497972_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9791297965_))))
                            (_loop9791197955_
                             _lp-tl9791497972_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9791397969_ _clause9791597962_)))))
                        (let ((_clause9791697975_
                               (reverse _clause9791597962_)))
                          ((lambda (_L97979_ _L97981_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97981_))
                                 (let* ((_g9800098017_
                                         (lambda (_g9800198013_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9800198013_))))
                                        (_g9799998078_
                                         (lambda (_g9800198021_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9800198021_))
                                               (let ((_g98508_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9800198021_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98509_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98508_)
                        (##vector-length _g98508_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98509_ 2)))
                 (error "Context expects 2 values" _g98509_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9800398024_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98508_
                                                             0)))
                                                         (_tl9800598027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98508_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9800598027_))
                                                         (letrec ((_loop9800698030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9800498034_ _clause9801098037_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9800498034_))
                                 (let ((_e9800798040_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9800498034_))))
                                   (let ((_lp-hd9800898044_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9800798040_)))
                                         (_lp-tl9800998047_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9800798040_))))
                                     (_loop9800698030_
                                      _lp-tl9800998047_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9800898044_
                                              _clause9801098037_)))))
                                 (let ((_clause9801198050_
                                        (reverse _clause9801098037_)))
                                   ((lambda (_L98054_)
                                      (let ()
                                        (let ((__tmp98521
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98510
                                               (let ((__tmp98519
                                                      (let ((__tmp98520
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98520 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98511
                                                      (let ((__tmp98512
                                                             (let ((__tmp98518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98513
                            (let ((__tmp98517
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98514
                                   (let ((__tmp98515
                                          (let ((__tmp98516
                                                 (lambda (_g9806998072_
                                                          _g9807098075_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9806998072_
                                                           _g9807098075_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98516 '() _L98054_))))
                                     (declare (not safe))
                                     (cons _L97981_ __tmp98515))))
                              (declare (not safe))
                              (cons __tmp98517 __tmp98514))))
                       (declare (not safe))
                       (cons __tmp98518 __tmp98513))))
                (declare (not safe))
                (cons __tmp98512 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98519
                                                       __tmp98511))))
                                          (declare (not safe))
                                          (cons __tmp98521 __tmp98510))))
                                    _clause9801198050_))))))
                   (_loop9800698030_ _target9800398024_ '()))
                 (_g9800098017_ _g9800198021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9800098017_
                                                _g9800198021_)))))
                                   (_g9799998078_
                                    (let ((__tmp98524
                                           (lambda (_clause98082_)
                                             (let* ((___stx9845198452_
                                                     _clause98082_)
                                                    (_g9808698113_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9845198452_)))))
                                               (let ((___kont9845498455_
                                                      (lambda (_L98198_
                                                               _L98200_)
                                                        (let ((__tmp98525
                                                               (let ((__tmp98526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98528
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98527
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98198_ '()))))
                                (declare (not safe))
                                (cons __tmp98528 __tmp98527))))
                         (declare (not safe))
                         (cons __tmp98526 '()))))
                  (declare (not safe))
                  (cons _L98200_ __tmp98525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9845698457_
                                                      (lambda (_L98150_
                                                               _L98152_
                                                               _L98153_)
                                                        (let ((__tmp98529
                                                               (let ((__tmp98530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98531
                                     (let ((__tmp98533
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98532
                                            (let ()
                                              (declare (not safe))
                                              (cons _L98150_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98533 __tmp98532))))
                                (declare (not safe))
                                (cons __tmp98531 '()))))
                         (declare (not safe))
                         (cons _L98152_ __tmp98530))))
                  (declare (not safe))
                  (cons _L98153_ __tmp98529)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9845198452_))
                                                     (let ((_e9809298178_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9845198452_))))
                                                       (let ((_tl9809098185_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9809298178_)))
                     (_hd9809198182_
                      (let () (declare (not safe)) (##car _e9809298178_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9809098185_))
                     (let ((_e9809598188_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9809098185_))))
                       (let ((_tl9809398195_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9809598188_)))
                             (_hd9809498192_
                              (let ()
                                (declare (not safe))
                                (##car _e9809598188_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9809398195_))
                             (___kont9845498455_ _hd9809498192_ _hd9809198182_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9809398195_))
                                 (let ((_e9810798140_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9809398195_))))
                                   (let ((_tl9810598147_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9810798140_)))
                                         (_hd9810698144_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9810798140_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9810598147_))
                                         (___kont9845698457_
                                          _hd9810698144_
                                          _hd9809498192_
                                          _hd9809198182_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9808698113_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9808698113_))))))
                     (let () (declare (not safe)) (_g9808698113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9808698113_)))))))
                                          (__tmp98522
                                           (let ((__tmp98523
                                                  (lambda (_g9821698219_
                                                           _g9821798222_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9821698219_
                                                            _g9821798222_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98523
                                                     '()
                                                     _L97979_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98524 __tmp98522))))
                                 (_g9789897922_ _g9789997926_)))
                           _clause9791697975_
                           _hd9790697943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9791197955_
                                                   _target9790897949_
                                                   '()))
                                                (_g9789897922_
                                                 _g9789997926_)))))
                                      (_g9789897922_ _g9789997926_))))
                              (_g9789897922_ _g9789997926_))))
                      (_g9789897922_ _g9789997926_)))))
          (_g9789798225_ _stx97895_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98494
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
           __obj98494
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98534 |gxc[1]#_g98535_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98534
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98536 |gxc[1]#_g98537_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98536
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98538 |gxc[1]#_g98539_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98538
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98540
               (let ((__tmp98545
                      (let ((__tmp98546 |gxc[1]#_g98547_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98546)))
                     (__tmp98541
                      (let ((__tmp98542
                             (let ((__tmp98543 |gxc[1]#_g98544_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98543))))
                        (declare (not safe))
                        (cons __tmp98542 '()))))
                 (declare (not safe))
                 (cons __tmp98545 __tmp98541))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98540
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98548
               (let ((__tmp98553
                      (let ((__tmp98554 |gxc[1]#_g98555_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98554)))
                     (__tmp98549
                      (let ((__tmp98550
                             (let ((__tmp98551 |gxc[1]#_g98552_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98551))))
                        (declare (not safe))
                        (cons __tmp98550 '()))))
                 (declare (not safe))
                 (cons __tmp98553 __tmp98549))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98548
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98556
               (let ((__tmp98561
                      (let ((__tmp98562 |gxc[1]#_g98563_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98562)))
                     (__tmp98557
                      (let ((__tmp98558
                             (let ((__tmp98559 |gxc[1]#_g98560_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98559))))
                        (declare (not safe))
                        (cons __tmp98558 '()))))
                 (declare (not safe))
                 (cons __tmp98561 __tmp98557))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98556
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98564
               (let ((__tmp98569
                      (let ((__tmp98570 |gxc[1]#_g98571_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98570)))
                     (__tmp98565
                      (let ((__tmp98566
                             (let ((__tmp98567 |gxc[1]#_g98568_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98567))))
                        (declare (not safe))
                        (cons __tmp98566 '()))))
                 (declare (not safe))
                 (cons __tmp98569 __tmp98565))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98494
           __tmp98564
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98494))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx98231_)
        (let* ((_g9823598249_
                (lambda (_g9823698245_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9823698245_))))
               (_g9823498290_
                (lambda (_g9823698253_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9823698253_))
                      (let ((_e9824098256_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9823698253_))))
                        (let ((_hd9823998260_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9824098256_)))
                              (_tl9823898263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9824098256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9823898263_))
                              (let ((_e9824398266_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9823898263_))))
                                (let ((_hd9824298270_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9824398266_)))
                                      (_tl9824198273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9824398266_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9824198273_))
                                      ((lambda (_L98276_)
                                         (let ((__tmp98579
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98572
                                                (let ((__tmp98578
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98573
                                                       (let ((__tmp98574
                                                              (let ((__tmp98577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98575
                             (let ((__tmp98576
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98276_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98576))))
                        (declare (not safe))
                        (cons __tmp98577 __tmp98575))))
                 (declare (not safe))
                 (cons __tmp98574 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98578
                                                        __tmp98573))))
                                           (declare (not safe))
                                           (cons __tmp98579 __tmp98572)))
                                       _hd9824298270_)
                                      (_g9823598249_ _g9823698253_))))
                              (_g9823598249_ _g9823698253_))))
                      (_g9823598249_ _g9823698253_)))))
          (_g9823498290_ _$stx98231_))))))
