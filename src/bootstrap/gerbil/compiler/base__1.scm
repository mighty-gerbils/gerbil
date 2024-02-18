(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g195682_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195684_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195686_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195691_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195694_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195699_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195702_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195707_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195710_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195715_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g195718_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx190973_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx190973_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx190976_)
        (let* ((_g190979191003_
                (lambda (_g190980190999_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190980190999_))))
               (_g190978191306_
                (lambda (_g190980191007_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190980191007_))
                      (let ((_e190985191010_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190980191007_))))
                        (let ((_hd190984191014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190985191010_)))
                              (_tl190983191017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190985191010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190983191017_))
                              (let ((_e190988191020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190983191017_))))
                                (let ((_hd190987191024_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190988191020_)))
                                      (_tl190986191027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190988191020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl190986191027_))
                                      (let ((_g195653_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl190986191027_
                                                '0))))
                                        (begin
                                          (let ((_g195654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195653_)
                                                       (##vector-length
                                                        _g195653_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195654_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195654_)))
                                          (let ((_target190989191030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g195653_ 0)))
                                                (_tl190991191033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g195653_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl190991191033_))
                                                (letrec ((_loop190992191036_
                                                          (lambda (_hd190990191040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause190996191043_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd190990191040_))
                        (let ((_e190993191046_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd190990191040_))))
                          (let ((_lp-hd190994191050_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e190993191046_)))
                                (_lp-tl190995191053_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e190993191046_))))
                            (_loop190992191036_
                             _lp-tl190995191053_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd190994191050_
                                     _clause190996191043_)))))
                        (let ((_clause190997191056_
                               (reverse _clause190996191043_)))
                          ((lambda (_L191060_ _L191062_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L191062_))
                                 (let* ((_g191081191098_
                                         (lambda (_g191082191094_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g191082191094_))))
                                        (_g191080191159_
                                         (lambda (_g191082191102_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g191082191102_))
                                               (let ((_g195655_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g191082191102_
                                                         '0))))
                                                 (begin
                                                   (let ((_g195656_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g195655_)
                        (##vector-length _g195655_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g195656_ 2)))
                 (error "Context expects 2 values" _g195656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target191084191105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195655_
                                                             0)))
                                                         (_tl191086191108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g195655_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl191086191108_))
                                                         (letrec ((_loop191087191111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd191085191115_ _clause191091191118_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd191085191115_))
                                 (let ((_e191088191121_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd191085191115_))))
                                   (let ((_lp-hd191089191125_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191088191121_)))
                                         (_lp-tl191090191128_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191088191121_))))
                                     (_loop191087191111_
                                      _lp-tl191090191128_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd191089191125_
                                              _clause191091191118_)))))
                                 (let ((_clause191092191131_
                                        (reverse _clause191091191118_)))
                                   ((lambda (_L191135_)
                                      (let ()
                                        (let ((__tmp195668
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp195657
                                               (let ((__tmp195666
                                                      (let ((__tmp195667
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp195667 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp195658
                                                      (let ((__tmp195659
                                                             (let ((__tmp195665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp195660
                            (let ((__tmp195664
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp195661
                                   (let ((__tmp195662
                                          (let ((__tmp195663
                                                 (lambda (_g191150191153_
                                                          _g191151191156_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g191150191153_
                                                           _g191151191156_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp195663
                                                    '()
                                                    _L191135_))))
                                     (declare (not safe))
                                     (cons _L191062_ __tmp195662))))
                              (declare (not safe))
                              (cons __tmp195664 __tmp195661))))
                       (declare (not safe))
                       (cons __tmp195665 __tmp195660))))
                (declare (not safe))
                (cons __tmp195659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp195666
                                                       __tmp195658))))
                                          (declare (not safe))
                                          (cons __tmp195668 __tmp195657))))
                                    _clause191092191131_))))))
                   (_loop191087191111_ _target191084191105_ '()))
                 (_g191081191098_ _g191082191102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g191081191098_
                                                _g191082191102_)))))
                                   (_g191080191159_
                                    (let ((__tmp195671
                                           (lambda (_clause191163_)
                                             (let* ((___stx195599195600_
                                                     _clause191163_)
                                                    (_g191167191194_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx195599195600_)))))
                                               (let ((___kont195602195603_
                                                      (lambda (_L191279_
                                                               _L191281_)
                                                        (let ((__tmp195672
                                                               (let ((__tmp195673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195675
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp195674
                                     (let ()
                                       (declare (not safe))
                                       (cons _L191279_ '()))))
                                (declare (not safe))
                                (cons __tmp195675 __tmp195674))))
                         (declare (not safe))
                         (cons __tmp195673 '()))))
                  (declare (not safe))
                  (cons _L191281_ __tmp195672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont195604195605_
                                                      (lambda (_L191231_
                                                               _L191233_
                                                               _L191234_)
                                                        (let ((__tmp195676
                                                               (let ((__tmp195677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp195678
                                     (let ((__tmp195680
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp195679
                                            (let ()
                                              (declare (not safe))
                                              (cons _L191231_ '()))))
                                       (declare (not safe))
                                       (cons __tmp195680 __tmp195679))))
                                (declare (not safe))
                                (cons __tmp195678 '()))))
                         (declare (not safe))
                         (cons _L191233_ __tmp195677))))
                  (declare (not safe))
                  (cons _L191234_ __tmp195676)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx195599195600_))
                                                     (let ((_e191173191259_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx195599195600_))))
                                                       (let ((_tl191171191266_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e191173191259_)))
                     (_hd191172191263_
                      (let () (declare (not safe)) (##car _e191173191259_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl191171191266_))
                     (let ((_e191176191269_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl191171191266_))))
                       (let ((_tl191174191276_
                              (let ()
                                (declare (not safe))
                                (##cdr _e191176191269_)))
                             (_hd191175191273_
                              (let ()
                                (declare (not safe))
                                (##car _e191176191269_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl191174191276_))
                             (___kont195602195603_
                              _hd191175191273_
                              _hd191172191263_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl191174191276_))
                                 (let ((_e191188191221_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl191174191276_))))
                                   (let ((_tl191186191228_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191188191221_)))
                                         (_hd191187191225_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191188191221_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl191186191228_))
                                         (___kont195604195605_
                                          _hd191187191225_
                                          _hd191175191273_
                                          _hd191172191263_)
                                         (let ()
                                           (declare (not safe))
                                           (_g191167191194_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g191167191194_))))))
                     (let () (declare (not safe)) (_g191167191194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g191167191194_)))))))
                                          (__tmp195669
                                           (let ((__tmp195670
                                                  (lambda (_g191297191300_
                                                           _g191298191303_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g191297191300_
                                                            _g191298191303_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp195670
                                                     '()
                                                     _L191060_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp195671 __tmp195669))))
                                 (_g190979191003_ _g190980191007_)))
                           _clause190997191056_
                           _hd190987191024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop190992191036_
                                                   _target190989191030_
                                                   '()))
                                                (_g190979191003_
                                                 _g190980191007_)))))
                                      (_g190979191003_ _g190980191007_))))
                              (_g190979191003_ _g190980191007_))))
                      (_g190979191003_ _g190980191007_)))))
          (_g190978191306_ _stx190976_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj195642
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
           __obj195642
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195681 |gxc[1]#_g195682_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195681
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195683 |gxc[1]#_g195684_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195683
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195685 |gxc[1]#_g195686_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195685
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195687
               (let ((__tmp195692
                      (let ((__tmp195693 |gxc[1]#_g195694_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195693)))
                     (__tmp195688
                      (let ((__tmp195689
                             (let ((__tmp195690 |gxc[1]#_g195691_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195690))))
                        (declare (not safe))
                        (cons __tmp195689 '()))))
                 (declare (not safe))
                 (cons __tmp195692 __tmp195688))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195687
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195695
               (let ((__tmp195700
                      (let ((__tmp195701 |gxc[1]#_g195702_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195701)))
                     (__tmp195696
                      (let ((__tmp195697
                             (let ((__tmp195698 |gxc[1]#_g195699_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195698))))
                        (declare (not safe))
                        (cons __tmp195697 '()))))
                 (declare (not safe))
                 (cons __tmp195700 __tmp195696))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195695
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195703
               (let ((__tmp195708
                      (let ((__tmp195709 |gxc[1]#_g195710_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195709)))
                     (__tmp195704
                      (let ((__tmp195705
                             (let ((__tmp195706 |gxc[1]#_g195707_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195706))))
                        (declare (not safe))
                        (cons __tmp195705 '()))))
                 (declare (not safe))
                 (cons __tmp195708 __tmp195704))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195703
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp195711
               (let ((__tmp195716
                      (let ((__tmp195717 |gxc[1]#_g195718_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp195717)))
                     (__tmp195712
                      (let ((__tmp195713
                             (let ((__tmp195714 |gxc[1]#_g195715_|))
                               (declare (not safe))
                               (cons 'bindings __tmp195714))))
                        (declare (not safe))
                        (cons __tmp195713 '()))))
                 (declare (not safe))
                 (cons __tmp195716 __tmp195712))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj195642
           __tmp195711
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj195642))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx191312_)
        (let* ((_g191316191330_
                (lambda (_g191317191326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191317191326_))))
               (_g191315191371_
                (lambda (_g191317191334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191317191334_))
                      (let ((_e191321191337_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191317191334_))))
                        (let ((_hd191320191341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191321191337_)))
                              (_tl191319191344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191321191337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191319191344_))
                              (let ((_e191324191347_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191319191344_))))
                                (let ((_hd191323191351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191324191347_)))
                                      (_tl191322191354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191324191347_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl191322191354_))
                                      ((lambda (_L191357_)
                                         (let ((__tmp195726
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp195719
                                                (let ((__tmp195725
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp195720
                                                       (let ((__tmp195721
                                                              (let ((__tmp195724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp195722
                             (let ((__tmp195723
                                    (let ()
                                      (declare (not safe))
                                      (cons _L191357_ '()))))
                               (declare (not safe))
                               (cons '() __tmp195723))))
                        (declare (not safe))
                        (cons __tmp195724 __tmp195722))))
                 (declare (not safe))
                 (cons __tmp195721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp195725
                                                        __tmp195720))))
                                           (declare (not safe))
                                           (cons __tmp195726 __tmp195719)))
                                       _hd191323191351_)
                                      (_g191316191330_ _g191317191334_))))
                              (_g191316191330_ _g191317191334_))))
                      (_g191316191330_ _g191317191334_)))))
          (_g191315191371_ _$stx191312_))))))
