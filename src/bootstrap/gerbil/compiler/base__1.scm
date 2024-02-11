(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192830_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192832_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192834_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192839_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192842_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192847_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192850_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192855_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192858_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192863_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192866_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187721_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187721_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187724_)
        (let* ((_g187727187751_
                (lambda (_g187728187747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187728187747_))))
               (_g187726188054_
                (lambda (_g187728187755_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187728187755_))
                      (let ((_e187733187758_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187728187755_))))
                        (let ((_hd187732187762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187733187758_)))
                              (_tl187731187765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187733187758_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187731187765_))
                              (let ((_e187736187768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187731187765_))))
                                (let ((_hd187735187772_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187736187768_)))
                                      (_tl187734187775_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187736187768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187734187775_))
                                      (let ((_g192801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187734187775_
                                                '0))))
                                        (begin
                                          (let ((_g192802_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192801_)
                                                       (##vector-length
                                                        _g192801_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192802_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192802_)))
                                          (let ((_target187737187778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192801_ 0)))
                                                (_tl187739187781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192801_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187739187781_))
                                                (letrec ((_loop187740187784_
                                                          (lambda (_hd187738187788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187744187791_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187738187788_))
                        (let ((_e187741187794_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187738187788_))))
                          (let ((_lp-hd187742187798_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187741187794_)))
                                (_lp-tl187743187801_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187741187794_))))
                            (_loop187740187784_
                             _lp-tl187743187801_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187742187798_
                                     _clause187744187791_)))))
                        (let ((_clause187745187804_
                               (reverse _clause187744187791_)))
                          ((lambda (_L187808_ _L187810_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187810_))
                                 (let* ((_g187829187846_
                                         (lambda (_g187830187842_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187830187842_))))
                                        (_g187828187907_
                                         (lambda (_g187830187850_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187830187850_))
                                               (let ((_g192803_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187830187850_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192804_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192803_)
                        (##vector-length _g192803_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192804_ 2)))
                 (error "Context expects 2 values" _g192804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187832187853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192803_
                                                             0)))
                                                         (_tl187834187856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192803_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187834187856_))
                                                         (letrec ((_loop187835187859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187833187863_ _clause187839187866_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187833187863_))
                                 (let ((_e187836187869_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187833187863_))))
                                   (let ((_lp-hd187837187873_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187836187869_)))
                                         (_lp-tl187838187876_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187836187869_))))
                                     (_loop187835187859_
                                      _lp-tl187838187876_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187837187873_
                                              _clause187839187866_)))))
                                 (let ((_clause187840187879_
                                        (reverse _clause187839187866_)))
                                   ((lambda (_L187883_)
                                      (let ()
                                        (let ((__tmp192816
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192805
                                               (let ((__tmp192814
                                                      (let ((__tmp192815
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192815 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192806
                                                      (let ((__tmp192807
                                                             (let ((__tmp192813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192808
                            (let ((__tmp192812
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192809
                                   (let ((__tmp192810
                                          (let ((__tmp192811
                                                 (lambda (_g187898187901_
                                                          _g187899187904_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187898187901_
                                                           _g187899187904_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192811
                                                    '()
                                                    _L187883_))))
                                     (declare (not safe))
                                     (cons _L187810_ __tmp192810))))
                              (declare (not safe))
                              (cons __tmp192812 __tmp192809))))
                       (declare (not safe))
                       (cons __tmp192813 __tmp192808))))
                (declare (not safe))
                (cons __tmp192807 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192814
                                                       __tmp192806))))
                                          (declare (not safe))
                                          (cons __tmp192816 __tmp192805))))
                                    _clause187840187879_))))))
                   (_loop187835187859_ _target187832187853_ '()))
                 (_g187829187846_ _g187830187850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187829187846_
                                                _g187830187850_)))))
                                   (_g187828187907_
                                    (let ((__tmp192819
                                           (lambda (_clause187911_)
                                             (let* ((___stx192748192749_
                                                     _clause187911_)
                                                    (_g187915187942_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192748192749_)))))
                                               (let ((___kont192751192752_
                                                      (lambda (_L188027_
                                                               _L188029_)
                                                        (let ((__tmp192820
                                                               (let ((__tmp192821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192823
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192822
                                     (let ()
                                       (declare (not safe))
                                       (cons _L188027_ '()))))
                                (declare (not safe))
                                (cons __tmp192823 __tmp192822))))
                         (declare (not safe))
                         (cons __tmp192821 '()))))
                  (declare (not safe))
                  (cons _L188029_ __tmp192820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192753192754_
                                                      (lambda (_L187979_
                                                               _L187981_
                                                               _L187982_)
                                                        (let ((__tmp192824
                                                               (let ((__tmp192825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192826
                                     (let ((__tmp192828
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192827
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187979_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192828 __tmp192827))))
                                (declare (not safe))
                                (cons __tmp192826 '()))))
                         (declare (not safe))
                         (cons _L187981_ __tmp192825))))
                  (declare (not safe))
                  (cons _L187982_ __tmp192824)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192748192749_))
                                                     (let ((_e187921188007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192748192749_))))
                                                       (let ((_tl187919188014_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187921188007_)))
                     (_hd187920188011_
                      (let () (declare (not safe)) (##car _e187921188007_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187919188014_))
                     (let ((_e187924188017_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187919188014_))))
                       (let ((_tl187922188024_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187924188017_)))
                             (_hd187923188021_
                              (let ()
                                (declare (not safe))
                                (##car _e187924188017_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187922188024_))
                             (___kont192751192752_
                              _hd187923188021_
                              _hd187920188011_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187922188024_))
                                 (let ((_e187936187969_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187922188024_))))
                                   (let ((_tl187934187976_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187936187969_)))
                                         (_hd187935187973_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187936187969_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187934187976_))
                                         (___kont192753192754_
                                          _hd187935187973_
                                          _hd187923188021_
                                          _hd187920188011_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187915187942_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187915187942_))))))
                     (let () (declare (not safe)) (_g187915187942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187915187942_)))))))
                                          (__tmp192817
                                           (let ((__tmp192818
                                                  (lambda (_g188045188048_
                                                           _g188046188051_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g188045188048_
                                                            _g188046188051_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192818
                                                     '()
                                                     _L187808_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192819 __tmp192817))))
                                 (_g187727187751_ _g187728187755_)))
                           _clause187745187804_
                           _hd187735187772_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187740187784_
                                                   _target187737187778_
                                                   '()))
                                                (_g187727187751_
                                                 _g187728187755_)))))
                                      (_g187727187751_ _g187728187755_))))
                              (_g187727187751_ _g187728187755_))))
                      (_g187727187751_ _g187728187755_)))))
          (_g187726188054_ _stx187724_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192791
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
           __obj192791
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192829 |gxc[1]#_g192830_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192829
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192831 |gxc[1]#_g192832_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192831
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192833 |gxc[1]#_g192834_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192833
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192835
               (let ((__tmp192840
                      (let ((__tmp192841 |gxc[1]#_g192842_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192841)))
                     (__tmp192836
                      (let ((__tmp192837
                             (let ((__tmp192838 |gxc[1]#_g192839_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192838))))
                        (declare (not safe))
                        (cons __tmp192837 '()))))
                 (declare (not safe))
                 (cons __tmp192840 __tmp192836))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192835
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192843
               (let ((__tmp192848
                      (let ((__tmp192849 |gxc[1]#_g192850_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192849)))
                     (__tmp192844
                      (let ((__tmp192845
                             (let ((__tmp192846 |gxc[1]#_g192847_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192846))))
                        (declare (not safe))
                        (cons __tmp192845 '()))))
                 (declare (not safe))
                 (cons __tmp192848 __tmp192844))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192843
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192851
               (let ((__tmp192856
                      (let ((__tmp192857 |gxc[1]#_g192858_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192857)))
                     (__tmp192852
                      (let ((__tmp192853
                             (let ((__tmp192854 |gxc[1]#_g192855_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192854))))
                        (declare (not safe))
                        (cons __tmp192853 '()))))
                 (declare (not safe))
                 (cons __tmp192856 __tmp192852))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192851
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192859
               (let ((__tmp192864
                      (let ((__tmp192865 |gxc[1]#_g192866_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192865)))
                     (__tmp192860
                      (let ((__tmp192861
                             (let ((__tmp192862 |gxc[1]#_g192863_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192862))))
                        (declare (not safe))
                        (cons __tmp192861 '()))))
                 (declare (not safe))
                 (cons __tmp192864 __tmp192860))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192791
           __tmp192859
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192791))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx188060_)
        (let* ((_g188064188078_
                (lambda (_g188065188074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g188065188074_))))
               (_g188063188119_
                (lambda (_g188065188082_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g188065188082_))
                      (let ((_e188069188085_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g188065188082_))))
                        (let ((_hd188068188089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e188069188085_)))
                              (_tl188067188092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e188069188085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl188067188092_))
                              (let ((_e188072188095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl188067188092_))))
                                (let ((_hd188071188099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e188072188095_)))
                                      (_tl188070188102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e188072188095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl188070188102_))
                                      ((lambda (_L188105_)
                                         (let ((__tmp192874
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192867
                                                (let ((__tmp192873
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192868
                                                       (let ((__tmp192869
                                                              (let ((__tmp192872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192870
                             (let ((__tmp192871
                                    (let ()
                                      (declare (not safe))
                                      (cons _L188105_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192871))))
                        (declare (not safe))
                        (cons __tmp192872 __tmp192870))))
                 (declare (not safe))
                 (cons __tmp192869 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192873
                                                        __tmp192868))))
                                           (declare (not safe))
                                           (cons __tmp192874 __tmp192867)))
                                       _hd188071188099_)
                                      (_g188064188078_ _g188065188082_))))
                              (_g188064188078_ _g188065188082_))))
                      (_g188064188078_ _g188065188082_)))))
          (_g188063188119_ _$stx188060_))))))
