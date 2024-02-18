(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202784_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202786_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202788_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202793_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202796_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202801_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202804_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202809_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202812_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202817_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202820_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx198075_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx198075_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx198078_)
        (let* ((_g198081198105_
                (lambda (_g198082198101_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g198082198101_))))
               (_g198080198408_
                (lambda (_g198082198109_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g198082198109_))
                      (let ((_e198087198112_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g198082198109_))))
                        (let ((_hd198086198116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e198087198112_)))
                              (_tl198085198119_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e198087198112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl198085198119_))
                              (let ((_e198090198122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl198085198119_))))
                                (let ((_hd198089198126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e198090198122_)))
                                      (_tl198088198129_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e198090198122_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl198088198129_))
                                      (let ((_g202755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl198088198129_
                                                '0))))
                                        (begin
                                          (let ((_g202756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202755_)
                                                       (##vector-length
                                                        _g202755_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202756_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202756_)))
                                          (let ((_target198091198132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202755_ 0)))
                                                (_tl198093198135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202755_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl198093198135_))
                                                (letrec ((_loop198094198138_
                                                          (lambda (_hd198092198142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause198098198145_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd198092198142_))
                        (let ((_e198095198148_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd198092198142_))))
                          (let ((_lp-hd198096198152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e198095198148_)))
                                (_lp-tl198097198155_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e198095198148_))))
                            (_loop198094198138_
                             _lp-tl198097198155_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd198096198152_
                                     _clause198098198145_)))))
                        (let ((_clause198099198158_
                               (reverse _clause198098198145_)))
                          ((lambda (_L198162_ _L198164_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L198164_))
                                 (let* ((_g198183198200_
                                         (lambda (_g198184198196_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g198184198196_))))
                                        (_g198182198261_
                                         (lambda (_g198184198204_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g198184198204_))
                                               (let ((_g202757_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g198184198204_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202757_)
                        (##vector-length _g202757_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202758_ 2)))
                 (error "Context expects 2 values" _g202758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target198186198207_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202757_
                                                             0)))
                                                         (_tl198188198210_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202757_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl198188198210_))
                                                         (letrec ((_loop198189198213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd198187198217_ _clause198193198220_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd198187198217_))
                                 (let ((_e198190198223_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd198187198217_))))
                                   (let ((_lp-hd198191198227_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e198190198223_)))
                                         (_lp-tl198192198230_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e198190198223_))))
                                     (_loop198189198213_
                                      _lp-tl198192198230_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd198191198227_
                                              _clause198193198220_)))))
                                 (let ((_clause198194198233_
                                        (reverse _clause198193198220_)))
                                   ((lambda (_L198237_)
                                      (let ()
                                        (let ((__tmp202770
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp202759
                                               (let ((__tmp202768
                                                      (let ((__tmp202769
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp202769 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202760
                                                      (let ((__tmp202761
                                                             (let ((__tmp202767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp202762
                            (let ((__tmp202766
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp202763
                                   (let ((__tmp202764
                                          (let ((__tmp202765
                                                 (lambda (_g198252198255_
                                                          _g198253198258_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g198252198255_
                                                           _g198253198258_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp202765
                                                    '()
                                                    _L198237_))))
                                     (declare (not safe))
                                     (cons _L198164_ __tmp202764))))
                              (declare (not safe))
                              (cons __tmp202766 __tmp202763))))
                       (declare (not safe))
                       (cons __tmp202767 __tmp202762))))
                (declare (not safe))
                (cons __tmp202761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp202768
                                                       __tmp202760))))
                                          (declare (not safe))
                                          (cons __tmp202770 __tmp202759))))
                                    _clause198194198233_))))))
                   (_loop198189198213_ _target198186198207_ '()))
                 (_g198183198200_ _g198184198204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g198183198200_
                                                _g198184198204_)))))
                                   (_g198182198261_
                                    (let ((__tmp202773
                                           (lambda (_clause198265_)
                                             (let* ((___stx202701202702_
                                                     _clause198265_)
                                                    (_g198269198296_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx202701202702_)))))
                                               (let ((___kont202704202705_
                                                      (lambda (_L198381_
                                                               _L198383_)
                                                        (let ((__tmp202774
                                                               (let ((__tmp202775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202777
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp202776
                                     (let ()
                                       (declare (not safe))
                                       (cons _L198381_ '()))))
                                (declare (not safe))
                                (cons __tmp202777 __tmp202776))))
                         (declare (not safe))
                         (cons __tmp202775 '()))))
                  (declare (not safe))
                  (cons _L198383_ __tmp202774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont202706202707_
                                                      (lambda (_L198333_
                                                               _L198335_
                                                               _L198336_)
                                                        (let ((__tmp202778
                                                               (let ((__tmp202779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202780
                                     (let ((__tmp202782
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp202781
                                            (let ()
                                              (declare (not safe))
                                              (cons _L198333_ '()))))
                                       (declare (not safe))
                                       (cons __tmp202782 __tmp202781))))
                                (declare (not safe))
                                (cons __tmp202780 '()))))
                         (declare (not safe))
                         (cons _L198335_ __tmp202779))))
                  (declare (not safe))
                  (cons _L198336_ __tmp202778)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx202701202702_))
                                                     (let ((_e198275198361_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx202701202702_))))
                                                       (let ((_tl198273198368_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e198275198361_)))
                     (_hd198274198365_
                      (let () (declare (not safe)) (##car _e198275198361_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl198273198368_))
                     (let ((_e198278198371_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl198273198368_))))
                       (let ((_tl198276198378_
                              (let ()
                                (declare (not safe))
                                (##cdr _e198278198371_)))
                             (_hd198277198375_
                              (let ()
                                (declare (not safe))
                                (##car _e198278198371_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl198276198378_))
                             (___kont202704202705_
                              _hd198277198375_
                              _hd198274198365_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl198276198378_))
                                 (let ((_e198290198323_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl198276198378_))))
                                   (let ((_tl198288198330_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e198290198323_)))
                                         (_hd198289198327_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e198290198323_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl198288198330_))
                                         (___kont202706202707_
                                          _hd198289198327_
                                          _hd198277198375_
                                          _hd198274198365_)
                                         (let ()
                                           (declare (not safe))
                                           (_g198269198296_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g198269198296_))))))
                     (let () (declare (not safe)) (_g198269198296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g198269198296_)))))))
                                          (__tmp202771
                                           (let ((__tmp202772
                                                  (lambda (_g198399198402_
                                                           _g198400198405_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g198399198402_
                                                            _g198400198405_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp202772
                                                     '()
                                                     _L198162_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp202773 __tmp202771))))
                                 (_g198081198105_ _g198082198109_)))
                           _clause198099198158_
                           _hd198089198126_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop198094198138_
                                                   _target198091198132_
                                                   '()))
                                                (_g198081198105_
                                                 _g198082198109_)))))
                                      (_g198081198105_ _g198082198109_))))
                              (_g198081198105_ _g198082198109_))))
                      (_g198081198105_ _g198082198109_)))))
          (_g198080198408_ _stx198078_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj202744
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
           __obj202744
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202783 |gxc[1]#_g202784_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202783
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202785 |gxc[1]#_g202786_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202785
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202787 |gxc[1]#_g202788_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202787
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202789
               (let ((__tmp202794
                      (let ((__tmp202795 |gxc[1]#_g202796_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202795)))
                     (__tmp202790
                      (let ((__tmp202791
                             (let ((__tmp202792 |gxc[1]#_g202793_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202792))))
                        (declare (not safe))
                        (cons __tmp202791 '()))))
                 (declare (not safe))
                 (cons __tmp202794 __tmp202790))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202789
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202797
               (let ((__tmp202802
                      (let ((__tmp202803 |gxc[1]#_g202804_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202803)))
                     (__tmp202798
                      (let ((__tmp202799
                             (let ((__tmp202800 |gxc[1]#_g202801_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202800))))
                        (declare (not safe))
                        (cons __tmp202799 '()))))
                 (declare (not safe))
                 (cons __tmp202802 __tmp202798))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202797
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202805
               (let ((__tmp202810
                      (let ((__tmp202811 |gxc[1]#_g202812_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202811)))
                     (__tmp202806
                      (let ((__tmp202807
                             (let ((__tmp202808 |gxc[1]#_g202809_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202808))))
                        (declare (not safe))
                        (cons __tmp202807 '()))))
                 (declare (not safe))
                 (cons __tmp202810 __tmp202806))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202805
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202813
               (let ((__tmp202818
                      (let ((__tmp202819 |gxc[1]#_g202820_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202819)))
                     (__tmp202814
                      (let ((__tmp202815
                             (let ((__tmp202816 |gxc[1]#_g202817_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202816))))
                        (declare (not safe))
                        (cons __tmp202815 '()))))
                 (declare (not safe))
                 (cons __tmp202818 __tmp202814))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202744
           __tmp202813
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj202744))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx198414_)
        (let* ((_g198418198432_
                (lambda (_g198419198428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g198419198428_))))
               (_g198417198473_
                (lambda (_g198419198436_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g198419198436_))
                      (let ((_e198423198439_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g198419198436_))))
                        (let ((_hd198422198443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e198423198439_)))
                              (_tl198421198446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e198423198439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl198421198446_))
                              (let ((_e198426198449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl198421198446_))))
                                (let ((_hd198425198453_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e198426198449_)))
                                      (_tl198424198456_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e198426198449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl198424198456_))
                                      ((lambda (_L198459_)
                                         (let ((__tmp202828
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp202821
                                                (let ((__tmp202827
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp202822
                                                       (let ((__tmp202823
                                                              (let ((__tmp202826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp202824
                             (let ((__tmp202825
                                    (let ()
                                      (declare (not safe))
                                      (cons _L198459_ '()))))
                               (declare (not safe))
                               (cons '() __tmp202825))))
                        (declare (not safe))
                        (cons __tmp202826 __tmp202824))))
                 (declare (not safe))
                 (cons __tmp202823 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp202827
                                                        __tmp202822))))
                                           (declare (not safe))
                                           (cons __tmp202828 __tmp202821)))
                                       _hd198425198453_)
                                      (_g198418198432_ _g198419198436_))))
                              (_g198418198432_ _g198419198436_))))
                      (_g198418198432_ _g198419198436_)))))
          (_g198417198473_ _$stx198414_))))))
