(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97803_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97805_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97807_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97812_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97815_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97820_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97823_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97828_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97831_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97836_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97839_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97160_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97160_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97163_)
        (let* ((_g9716697190_
                (lambda (_g9716797186_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9716797186_))))
               (_g9716597493_
                (lambda (_g9716797194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9716797194_))
                      (let ((_e9717297197_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9716797194_))))
                        (let ((_hd9717197201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9717297197_)))
                              (_tl9717097204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9717297197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9717097204_))
                              (let ((_e9717597207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9717097204_))))
                                (let ((_hd9717497211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9717597207_)))
                                      (_tl9717397214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9717597207_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9717397214_))
                                      (let ((_g97774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9717397214_
                                                '0))))
                                        (begin
                                          (let ((_g97775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97774_)
                                                       (##vector-length
                                                        _g97774_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97775_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97775_)))
                                          (let ((_target9717697217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97774_ 0)))
                                                (_tl9717897220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97774_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9717897220_))
                                                (letrec ((_loop9717997223_
                                                          (lambda (_hd9717797227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9718397230_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9717797227_))
                        (let ((_e9718097233_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9717797227_))))
                          (let ((_lp-hd9718197237_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9718097233_)))
                                (_lp-tl9718297240_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9718097233_))))
                            (_loop9717997223_
                             _lp-tl9718297240_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9718197237_ _clause9718397230_)))))
                        (let ((_clause9718497243_
                               (reverse _clause9718397230_)))
                          ((lambda (_L97247_ _L97249_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97249_))
                                 (let* ((_g9726897285_
                                         (lambda (_g9726997281_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9726997281_))))
                                        (_g9726797346_
                                         (lambda (_g9726997289_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9726997289_))
                                               (let ((_g97776_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9726997289_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97776_)
                        (##vector-length _g97776_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97777_ 2)))
                 (error "Context expects 2 values" _g97777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9727197292_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97776_
                                                             0)))
                                                         (_tl9727397295_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97776_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9727397295_))
                                                         (letrec ((_loop9727497298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9727297302_ _clause9727897305_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9727297302_))
                                 (let ((_e9727597308_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9727297302_))))
                                   (let ((_lp-hd9727697312_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9727597308_)))
                                         (_lp-tl9727797315_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9727597308_))))
                                     (_loop9727497298_
                                      _lp-tl9727797315_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9727697312_
                                              _clause9727897305_)))))
                                 (let ((_clause9727997318_
                                        (reverse _clause9727897305_)))
                                   ((lambda (_L97322_)
                                      (let ()
                                        (let ((__tmp97789
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97778
                                               (let ((__tmp97787
                                                      (let ((__tmp97788
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97788 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97779
                                                      (let ((__tmp97780
                                                             (let ((__tmp97786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97781
                            (let ((__tmp97785
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97782
                                   (let ((__tmp97783
                                          (let ((__tmp97784
                                                 (lambda (_g9733797340_
                                                          _g9733897343_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9733797340_
                                                           _g9733897343_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97784 '() _L97322_))))
                                     (declare (not safe))
                                     (cons _L97249_ __tmp97783))))
                              (declare (not safe))
                              (cons __tmp97785 __tmp97782))))
                       (declare (not safe))
                       (cons __tmp97786 __tmp97781))))
                (declare (not safe))
                (cons __tmp97780 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97787
                                                       __tmp97779))))
                                          (declare (not safe))
                                          (cons __tmp97789 __tmp97778))))
                                    _clause9727997318_))))))
                   (_loop9727497298_ _target9727197292_ '()))
                 (_g9726897285_ _g9726997289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9726897285_
                                                _g9726997289_)))))
                                   (_g9726797346_
                                    (let ((__tmp97792
                                           (lambda (_clause97350_)
                                             (let* ((___stx9771997720_
                                                     _clause97350_)
                                                    (_g9735497381_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9771997720_)))))
                                               (let ((___kont9772297723_
                                                      (lambda (_L97466_
                                                               _L97468_)
                                                        (let ((__tmp97793
                                                               (let ((__tmp97794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97796
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97795
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97466_ '()))))
                                (declare (not safe))
                                (cons __tmp97796 __tmp97795))))
                         (declare (not safe))
                         (cons __tmp97794 '()))))
                  (declare (not safe))
                  (cons _L97468_ __tmp97793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9772497725_
                                                      (lambda (_L97418_
                                                               _L97420_
                                                               _L97421_)
                                                        (let ((__tmp97797
                                                               (let ((__tmp97798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97799
                                     (let ((__tmp97801
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97800
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97418_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97801 __tmp97800))))
                                (declare (not safe))
                                (cons __tmp97799 '()))))
                         (declare (not safe))
                         (cons _L97420_ __tmp97798))))
                  (declare (not safe))
                  (cons _L97421_ __tmp97797)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9771997720_))
                                                     (let ((_e9736097446_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9771997720_))))
                                                       (let ((_tl9735897453_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9736097446_)))
                     (_hd9735997450_
                      (let () (declare (not safe)) (##car _e9736097446_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9735897453_))
                     (let ((_e9736397456_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9735897453_))))
                       (let ((_tl9736197463_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9736397456_)))
                             (_hd9736297460_
                              (let ()
                                (declare (not safe))
                                (##car _e9736397456_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9736197463_))
                             (___kont9772297723_ _hd9736297460_ _hd9735997450_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9736197463_))
                                 (let ((_e9737597408_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9736197463_))))
                                   (let ((_tl9737397415_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9737597408_)))
                                         (_hd9737497412_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9737597408_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9737397415_))
                                         (___kont9772497725_
                                          _hd9737497412_
                                          _hd9736297460_
                                          _hd9735997450_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9735497381_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9735497381_))))))
                     (let () (declare (not safe)) (_g9735497381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9735497381_)))))))
                                          (__tmp97790
                                           (let ((__tmp97791
                                                  (lambda (_g9748497487_
                                                           _g9748597490_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9748497487_
                                                            _g9748597490_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97791
                                                     '()
                                                     _L97247_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97792 __tmp97790))))
                                 (_g9716697190_ _g9716797194_)))
                           _clause9718497243_
                           _hd9717497211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9717997223_
                                                   _target9717697217_
                                                   '()))
                                                (_g9716697190_
                                                 _g9716797194_)))))
                                      (_g9716697190_ _g9716797194_))))
                              (_g9716697190_ _g9716797194_))))
                      (_g9716697190_ _g9716797194_)))))
          (_g9716597493_ _stx97163_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97762
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj97762
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           'symbol-table
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           '(gensyms bindings)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           ':init!
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97802 |gxc[1]#_g97803_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97802
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97804 |gxc[1]#_g97805_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97804
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97806 |gxc[1]#_g97807_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97806
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97808
               (let ((__tmp97813
                      (let ((__tmp97814 |gxc[1]#_g97815_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97814)))
                     (__tmp97809
                      (let ((__tmp97810
                             (let ((__tmp97811 |gxc[1]#_g97812_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97811))))
                        (declare (not safe))
                        (cons __tmp97810 '()))))
                 (declare (not safe))
                 (cons __tmp97813 __tmp97809))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97808
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97816
               (let ((__tmp97821
                      (let ((__tmp97822 |gxc[1]#_g97823_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97822)))
                     (__tmp97817
                      (let ((__tmp97818
                             (let ((__tmp97819 |gxc[1]#_g97820_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97819))))
                        (declare (not safe))
                        (cons __tmp97818 '()))))
                 (declare (not safe))
                 (cons __tmp97821 __tmp97817))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97816
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97824
               (let ((__tmp97829
                      (let ((__tmp97830 |gxc[1]#_g97831_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97830)))
                     (__tmp97825
                      (let ((__tmp97826
                             (let ((__tmp97827 |gxc[1]#_g97828_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97827))))
                        (declare (not safe))
                        (cons __tmp97826 '()))))
                 (declare (not safe))
                 (cons __tmp97829 __tmp97825))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97824
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97832
               (let ((__tmp97837
                      (let ((__tmp97838 |gxc[1]#_g97839_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97838)))
                     (__tmp97833
                      (let ((__tmp97834
                             (let ((__tmp97835 |gxc[1]#_g97836_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97835))))
                        (declare (not safe))
                        (cons __tmp97834 '()))))
                 (declare (not safe))
                 (cons __tmp97837 __tmp97833))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97762
           __tmp97832
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj97762))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97499_)
        (let* ((_g9750397517_
                (lambda (_g9750497513_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9750497513_))))
               (_g9750297558_
                (lambda (_g9750497521_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9750497521_))
                      (let ((_e9750897524_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9750497521_))))
                        (let ((_hd9750797528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9750897524_)))
                              (_tl9750697531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9750897524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9750697531_))
                              (let ((_e9751197534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9750697531_))))
                                (let ((_hd9751097538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9751197534_)))
                                      (_tl9750997541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9751197534_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9750997541_))
                                      ((lambda (_L97544_)
                                         (let ((__tmp97847
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97840
                                                (let ((__tmp97846
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97841
                                                       (let ((__tmp97842
                                                              (let ((__tmp97845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97843
                             (let ((__tmp97844
                                    (let ()
                                      (declare (not safe))
                                      (cons _L97544_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97844))))
                        (declare (not safe))
                        (cons __tmp97845 __tmp97843))))
                 (declare (not safe))
                 (cons __tmp97842 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97846
                                                        __tmp97841))))
                                           (declare (not safe))
                                           (cons __tmp97847 __tmp97840)))
                                       _hd9751097538_)
                                      (_g9750397517_ _g9750497521_))))
                              (_g9750397517_ _g9750497521_))))
                      (_g9750397517_ _g9750497521_)))))
          (_g9750297558_ _$stx97499_))))))
