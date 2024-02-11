(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192494_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192496_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192498_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192503_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192506_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192511_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192514_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192519_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192522_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192527_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192530_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187384_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187384_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187387_)
        (let* ((_g187390187414_
                (lambda (_g187391187410_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187391187410_))))
               (_g187389187717_
                (lambda (_g187391187418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187391187418_))
                      (let ((_e187396187421_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187391187418_))))
                        (let ((_hd187395187425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187396187421_)))
                              (_tl187394187428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187396187421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187394187428_))
                              (let ((_e187399187431_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187394187428_))))
                                (let ((_hd187398187435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187399187431_)))
                                      (_tl187397187438_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187399187431_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187397187438_))
                                      (let ((_g192465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187397187438_
                                                '0))))
                                        (begin
                                          (let ((_g192466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192465_)
                                                       (##vector-length
                                                        _g192465_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192466_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192466_)))
                                          (let ((_target187400187441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192465_ 0)))
                                                (_tl187402187444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192465_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187402187444_))
                                                (letrec ((_loop187403187447_
                                                          (lambda (_hd187401187451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187407187454_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187401187451_))
                        (let ((_e187404187457_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187401187451_))))
                          (let ((_lp-hd187405187461_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187404187457_)))
                                (_lp-tl187406187464_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187404187457_))))
                            (_loop187403187447_
                             _lp-tl187406187464_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187405187461_
                                     _clause187407187454_)))))
                        (let ((_clause187408187467_
                               (reverse _clause187407187454_)))
                          ((lambda (_L187471_ _L187473_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187473_))
                                 (let* ((_g187492187509_
                                         (lambda (_g187493187505_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187493187505_))))
                                        (_g187491187570_
                                         (lambda (_g187493187513_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187493187513_))
                                               (let ((_g192467_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187493187513_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192468_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192467_)
                        (##vector-length _g192467_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192468_ 2)))
                 (error "Context expects 2 values" _g192468_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187495187516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192467_
                                                             0)))
                                                         (_tl187497187519_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192467_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187497187519_))
                                                         (letrec ((_loop187498187522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187496187526_ _clause187502187529_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187496187526_))
                                 (let ((_e187499187532_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187496187526_))))
                                   (let ((_lp-hd187500187536_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187499187532_)))
                                         (_lp-tl187501187539_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187499187532_))))
                                     (_loop187498187522_
                                      _lp-tl187501187539_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187500187536_
                                              _clause187502187529_)))))
                                 (let ((_clause187503187542_
                                        (reverse _clause187502187529_)))
                                   ((lambda (_L187546_)
                                      (let ()
                                        (let ((__tmp192480
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192469
                                               (let ((__tmp192478
                                                      (let ((__tmp192479
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192479 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192470
                                                      (let ((__tmp192471
                                                             (let ((__tmp192477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192472
                            (let ((__tmp192476
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192473
                                   (let ((__tmp192474
                                          (let ((__tmp192475
                                                 (lambda (_g187561187564_
                                                          _g187562187567_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187561187564_
                                                           _g187562187567_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192475
                                                    '()
                                                    _L187546_))))
                                     (declare (not safe))
                                     (cons _L187473_ __tmp192474))))
                              (declare (not safe))
                              (cons __tmp192476 __tmp192473))))
                       (declare (not safe))
                       (cons __tmp192477 __tmp192472))))
                (declare (not safe))
                (cons __tmp192471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192478
                                                       __tmp192470))))
                                          (declare (not safe))
                                          (cons __tmp192480 __tmp192469))))
                                    _clause187503187542_))))))
                   (_loop187498187522_ _target187495187516_ '()))
                 (_g187492187509_ _g187493187513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187492187509_
                                                _g187493187513_)))))
                                   (_g187491187570_
                                    (let ((__tmp192483
                                           (lambda (_clause187574_)
                                             (let* ((___stx192411192412_
                                                     _clause187574_)
                                                    (_g187578187605_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192411192412_)))))
                                               (let ((___kont192414192415_
                                                      (lambda (_L187690_
                                                               _L187692_)
                                                        (let ((__tmp192484
                                                               (let ((__tmp192485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192487
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192486
                                     (let ()
                                       (declare (not safe))
                                       (cons _L187690_ '()))))
                                (declare (not safe))
                                (cons __tmp192487 __tmp192486))))
                         (declare (not safe))
                         (cons __tmp192485 '()))))
                  (declare (not safe))
                  (cons _L187692_ __tmp192484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192416192417_
                                                      (lambda (_L187642_
                                                               _L187644_
                                                               _L187645_)
                                                        (let ((__tmp192488
                                                               (let ((__tmp192489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192490
                                     (let ((__tmp192492
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192491
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187642_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192492 __tmp192491))))
                                (declare (not safe))
                                (cons __tmp192490 '()))))
                         (declare (not safe))
                         (cons _L187644_ __tmp192489))))
                  (declare (not safe))
                  (cons _L187645_ __tmp192488)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192411192412_))
                                                     (let ((_e187584187670_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192411192412_))))
                                                       (let ((_tl187582187677_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187584187670_)))
                     (_hd187583187674_
                      (let () (declare (not safe)) (##car _e187584187670_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187582187677_))
                     (let ((_e187587187680_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187582187677_))))
                       (let ((_tl187585187687_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187587187680_)))
                             (_hd187586187684_
                              (let ()
                                (declare (not safe))
                                (##car _e187587187680_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187585187687_))
                             (___kont192414192415_
                              _hd187586187684_
                              _hd187583187674_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187585187687_))
                                 (let ((_e187599187632_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187585187687_))))
                                   (let ((_tl187597187639_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187599187632_)))
                                         (_hd187598187636_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187599187632_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187597187639_))
                                         (___kont192416192417_
                                          _hd187598187636_
                                          _hd187586187684_
                                          _hd187583187674_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187578187605_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187578187605_))))))
                     (let () (declare (not safe)) (_g187578187605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187578187605_)))))))
                                          (__tmp192481
                                           (let ((__tmp192482
                                                  (lambda (_g187708187711_
                                                           _g187709187714_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g187708187711_
                                                            _g187709187714_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192482
                                                     '()
                                                     _L187471_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192483 __tmp192481))))
                                 (_g187390187414_ _g187391187418_)))
                           _clause187408187467_
                           _hd187398187435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187403187447_
                                                   _target187400187441_
                                                   '()))
                                                (_g187390187414_
                                                 _g187391187418_)))))
                                      (_g187390187414_ _g187391187418_))))
                              (_g187390187414_ _g187391187418_))))
                      (_g187390187414_ _g187391187418_)))))
          (_g187389187717_ _stx187387_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192454
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
           __obj192454
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192493 |gxc[1]#_g192494_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192493
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192495 |gxc[1]#_g192496_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192495
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192497 |gxc[1]#_g192498_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192497
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192499
               (let ((__tmp192504
                      (let ((__tmp192505 |gxc[1]#_g192506_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192505)))
                     (__tmp192500
                      (let ((__tmp192501
                             (let ((__tmp192502 |gxc[1]#_g192503_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192502))))
                        (declare (not safe))
                        (cons __tmp192501 '()))))
                 (declare (not safe))
                 (cons __tmp192504 __tmp192500))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192499
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192507
               (let ((__tmp192512
                      (let ((__tmp192513 |gxc[1]#_g192514_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192513)))
                     (__tmp192508
                      (let ((__tmp192509
                             (let ((__tmp192510 |gxc[1]#_g192511_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192510))))
                        (declare (not safe))
                        (cons __tmp192509 '()))))
                 (declare (not safe))
                 (cons __tmp192512 __tmp192508))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192507
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192515
               (let ((__tmp192520
                      (let ((__tmp192521 |gxc[1]#_g192522_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192521)))
                     (__tmp192516
                      (let ((__tmp192517
                             (let ((__tmp192518 |gxc[1]#_g192519_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192518))))
                        (declare (not safe))
                        (cons __tmp192517 '()))))
                 (declare (not safe))
                 (cons __tmp192520 __tmp192516))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192515
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192523
               (let ((__tmp192528
                      (let ((__tmp192529 |gxc[1]#_g192530_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192529)))
                     (__tmp192524
                      (let ((__tmp192525
                             (let ((__tmp192526 |gxc[1]#_g192527_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192526))))
                        (declare (not safe))
                        (cons __tmp192525 '()))))
                 (declare (not safe))
                 (cons __tmp192528 __tmp192524))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192454
           __tmp192523
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192454))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx187723_)
        (let* ((_g187727187741_
                (lambda (_g187728187737_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187728187737_))))
               (_g187726187782_
                (lambda (_g187728187745_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187728187745_))
                      (let ((_e187732187748_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187728187745_))))
                        (let ((_hd187731187752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187732187748_)))
                              (_tl187730187755_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187732187748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187730187755_))
                              (let ((_e187735187758_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187730187755_))))
                                (let ((_hd187734187762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187735187758_)))
                                      (_tl187733187765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187735187758_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl187733187765_))
                                      ((lambda (_L187768_)
                                         (let ((__tmp192538
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192531
                                                (let ((__tmp192537
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192532
                                                       (let ((__tmp192533
                                                              (let ((__tmp192536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192534
                             (let ((__tmp192535
                                    (let ()
                                      (declare (not safe))
                                      (cons _L187768_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192535))))
                        (declare (not safe))
                        (cons __tmp192536 __tmp192534))))
                 (declare (not safe))
                 (cons __tmp192533 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192537
                                                        __tmp192532))))
                                           (declare (not safe))
                                           (cons __tmp192538 __tmp192531)))
                                       _hd187734187762_)
                                      (_g187727187741_ _g187728187745_))))
                              (_g187727187741_ _g187728187745_))))
                      (_g187727187741_ _g187728187745_)))))
          (_g187726187782_ _$stx187723_))))))
