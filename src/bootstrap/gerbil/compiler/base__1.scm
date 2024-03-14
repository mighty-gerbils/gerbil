(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97847_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97849_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97851_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97856_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97859_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97864_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97867_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97872_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97875_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97880_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97883_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97204_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97204_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97207_)
        (let* ((_g9721097234_
                (lambda (_g9721197230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9721197230_))))
               (_g9720997537_
                (lambda (_g9721197238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9721197238_))
                      (let ((_e9721697241_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9721197238_))))
                        (let ((_hd9721597245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9721697241_)))
                              (_tl9721497248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9721697241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9721497248_))
                              (let ((_e9721997251_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9721497248_))))
                                (let ((_hd9721897255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9721997251_)))
                                      (_tl9721797258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9721997251_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9721797258_))
                                      (let ((_g97818_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9721797258_
                                                '0))))
                                        (begin
                                          (let ((_g97819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97818_)
                                                       (##vector-length
                                                        _g97818_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97819_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97819_)))
                                          (let ((_target9722097261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97818_ 0)))
                                                (_tl9722297264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97818_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9722297264_))
                                                (letrec ((_loop9722397267_
                                                          (lambda (_hd9722197271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9722797274_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9722197271_))
                        (let ((_e9722497277_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9722197271_))))
                          (let ((_lp-hd9722597281_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9722497277_)))
                                (_lp-tl9722697284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9722497277_))))
                            (_loop9722397267_
                             _lp-tl9722697284_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9722597281_ _clause9722797274_)))))
                        (let ((_clause9722897287_
                               (reverse _clause9722797274_)))
                          ((lambda (_L97291_ _L97293_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97293_))
                                 (let* ((_g9731297329_
                                         (lambda (_g9731397325_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9731397325_))))
                                        (_g9731197390_
                                         (lambda (_g9731397333_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9731397333_))
                                               (let ((_g97820_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9731397333_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97821_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97820_)
                        (##vector-length _g97820_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97821_ 2)))
                 (error "Context expects 2 values" _g97821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9731597336_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97820_
                                                             0)))
                                                         (_tl9731797339_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97820_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9731797339_))
                                                         (letrec ((_loop9731897342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9731697346_ _clause9732297349_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9731697346_))
                                 (let ((_e9731997352_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9731697346_))))
                                   (let ((_lp-hd9732097356_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9731997352_)))
                                         (_lp-tl9732197359_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9731997352_))))
                                     (_loop9731897342_
                                      _lp-tl9732197359_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9732097356_
                                              _clause9732297349_)))))
                                 (let ((_clause9732397362_
                                        (reverse _clause9732297349_)))
                                   ((lambda (_L97366_)
                                      (let ()
                                        (let ((__tmp97833
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97822
                                               (let ((__tmp97831
                                                      (let ((__tmp97832
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97832 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97823
                                                      (let ((__tmp97824
                                                             (let ((__tmp97830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97825
                            (let ((__tmp97829
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97826
                                   (let ((__tmp97827
                                          (let ((__tmp97828
                                                 (lambda (_g9738197384_
                                                          _g9738297387_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9738197384_
                                                           _g9738297387_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97828 '() _L97366_))))
                                     (declare (not safe))
                                     (cons _L97293_ __tmp97827))))
                              (declare (not safe))
                              (cons __tmp97829 __tmp97826))))
                       (declare (not safe))
                       (cons __tmp97830 __tmp97825))))
                (declare (not safe))
                (cons __tmp97824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97831
                                                       __tmp97823))))
                                          (declare (not safe))
                                          (cons __tmp97833 __tmp97822))))
                                    _clause9732397362_))))))
                   (_loop9731897342_ _target9731597336_ '()))
                 (_g9731297329_ _g9731397333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9731297329_
                                                _g9731397333_)))))
                                   (_g9731197390_
                                    (let ((__tmp97836
                                           (lambda (_clause97394_)
                                             (let* ((___stx9776397764_
                                                     _clause97394_)
                                                    (_g9739897425_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9776397764_)))))
                                               (let ((___kont9776697767_
                                                      (lambda (_L97510_
                                                               _L97512_)
                                                        (let ((__tmp97837
                                                               (let ((__tmp97838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97840
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97839
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97510_ '()))))
                                (declare (not safe))
                                (cons __tmp97840 __tmp97839))))
                         (declare (not safe))
                         (cons __tmp97838 '()))))
                  (declare (not safe))
                  (cons _L97512_ __tmp97837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9776897769_
                                                      (lambda (_L97462_
                                                               _L97464_
                                                               _L97465_)
                                                        (let ((__tmp97841
                                                               (let ((__tmp97842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97843
                                     (let ((__tmp97845
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97844
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97462_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97845 __tmp97844))))
                                (declare (not safe))
                                (cons __tmp97843 '()))))
                         (declare (not safe))
                         (cons _L97464_ __tmp97842))))
                  (declare (not safe))
                  (cons _L97465_ __tmp97841)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9776397764_))
                                                     (let ((_e9740497490_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9776397764_))))
                                                       (let ((_tl9740297497_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9740497490_)))
                     (_hd9740397494_
                      (let () (declare (not safe)) (##car _e9740497490_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9740297497_))
                     (let ((_e9740797500_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9740297497_))))
                       (let ((_tl9740597507_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9740797500_)))
                             (_hd9740697504_
                              (let ()
                                (declare (not safe))
                                (##car _e9740797500_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9740597507_))
                             (___kont9776697767_ _hd9740697504_ _hd9740397494_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9740597507_))
                                 (let ((_e9741997452_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9740597507_))))
                                   (let ((_tl9741797459_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9741997452_)))
                                         (_hd9741897456_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9741997452_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9741797459_))
                                         (___kont9776897769_
                                          _hd9741897456_
                                          _hd9740697504_
                                          _hd9740397494_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9739897425_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9739897425_))))))
                     (let () (declare (not safe)) (_g9739897425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9739897425_)))))))
                                          (__tmp97834
                                           (let ((__tmp97835
                                                  (lambda (_g9752897531_
                                                           _g9752997534_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9752897531_
                                                            _g9752997534_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97835
                                                     '()
                                                     _L97291_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97836 __tmp97834))))
                                 (_g9721097234_ _g9721197238_)))
                           _clause9722897287_
                           _hd9721897255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9722397267_
                                                   _target9722097261_
                                                   '()))
                                                (_g9721097234_
                                                 _g9721197238_)))))
                                      (_g9721097234_ _g9721197238_))))
                              (_g9721097234_ _g9721197238_))))
                      (_g9721097234_ _g9721197238_)))))
          (_g9720997537_ _stx97207_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97806
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$MOP-2#class-type-info::t
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
           __obj97806
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           'symbol-table
           '2
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           '(gensyms bindings)
           '4
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           '()
           '3
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           '#t
           '5
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           '#f
           '6
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           '#f
           '7
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           ':init!
           '8
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97846 |gxc[1]#_g97847_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97846
           '9
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97848 |gxc[1]#_g97849_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97848
           '10
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97850 |gxc[1]#_g97851_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97850
           '11
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97852
               (let ((__tmp97857
                      (let ((__tmp97858 |gxc[1]#_g97859_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97858)))
                     (__tmp97853
                      (let ((__tmp97854
                             (let ((__tmp97855 |gxc[1]#_g97856_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97855))))
                        (declare (not safe))
                        (cons __tmp97854 '()))))
                 (declare (not safe))
                 (cons __tmp97857 __tmp97853))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97852
           '12
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97860
               (let ((__tmp97865
                      (let ((__tmp97866 |gxc[1]#_g97867_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97866)))
                     (__tmp97861
                      (let ((__tmp97862
                             (let ((__tmp97863 |gxc[1]#_g97864_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97863))))
                        (declare (not safe))
                        (cons __tmp97862 '()))))
                 (declare (not safe))
                 (cons __tmp97865 __tmp97861))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97860
           '13
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97868
               (let ((__tmp97873
                      (let ((__tmp97874 |gxc[1]#_g97875_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97874)))
                     (__tmp97869
                      (let ((__tmp97870
                             (let ((__tmp97871 |gxc[1]#_g97872_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97871))))
                        (declare (not safe))
                        (cons __tmp97870 '()))))
                 (declare (not safe))
                 (cons __tmp97873 __tmp97869))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97868
           '14
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        (let ((__tmp97876
               (let ((__tmp97881
                      (let ((__tmp97882 |gxc[1]#_g97883_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97882)))
                     (__tmp97877
                      (let ((__tmp97878
                             (let ((__tmp97879 |gxc[1]#_g97880_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97879))))
                        (declare (not safe))
                        (cons __tmp97878 '()))))
                 (declare (not safe))
                 (cons __tmp97881 __tmp97877))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97806
           __tmp97876
           '15
           gerbil/core/mop$MOP-2#class-type-info::t
           '#f))
        __obj97806))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97543_)
        (let* ((_g9754797561_
                (lambda (_g9754897557_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9754897557_))))
               (_g9754697602_
                (lambda (_g9754897565_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9754897565_))
                      (let ((_e9755297568_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9754897565_))))
                        (let ((_hd9755197572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9755297568_)))
                              (_tl9755097575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9755297568_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9755097575_))
                              (let ((_e9755597578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9755097575_))))
                                (let ((_hd9755497582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9755597578_)))
                                      (_tl9755397585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9755597578_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9755397585_))
                                      ((lambda (_L97588_)
                                         (let ((__tmp97891
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97884
                                                (let ((__tmp97890
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97885
                                                       (let ((__tmp97886
                                                              (let ((__tmp97889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97887
                             (let ((__tmp97888
                                    (let ()
                                      (declare (not safe))
                                      (cons _L97588_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97888))))
                        (declare (not safe))
                        (cons __tmp97889 __tmp97887))))
                 (declare (not safe))
                 (cons __tmp97886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97890
                                                        __tmp97885))))
                                           (declare (not safe))
                                           (cons __tmp97891 __tmp97884)))
                                       _hd9755497582_)
                                      (_g9754797561_ _g9754897565_))))
                              (_g9754797561_ _g9754897565_))))
                      (_g9754797561_ _g9754897565_)))))
          (_g9754697602_ _$stx97543_))))))
