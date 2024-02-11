(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192834_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192836_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192838_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192843_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192846_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192851_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192854_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192859_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192862_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192867_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192870_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187725_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187725_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187728_)
        (let* ((_g187731187755_
                (lambda (_g187732187751_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187732187751_))))
               (_g187730188058_
                (lambda (_g187732187759_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187732187759_))
                      (let ((_e187737187762_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187732187759_))))
                        (let ((_hd187736187766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187737187762_)))
                              (_tl187735187769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187737187762_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187735187769_))
                              (let ((_e187740187772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187735187769_))))
                                (let ((_hd187739187776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187740187772_)))
                                      (_tl187738187779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187740187772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187738187779_))
                                      (let ((_g192805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187738187779_
                                                '0))))
                                        (begin
                                          (let ((_g192806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192805_)
                                                       (##vector-length
                                                        _g192805_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192806_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192806_)))
                                          (let ((_target187741187782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192805_ 0)))
                                                (_tl187743187785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192805_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187743187785_))
                                                (letrec ((_loop187744187788_
                                                          (lambda (_hd187742187792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187748187795_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187742187792_))
                        (let ((_e187745187798_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187742187792_))))
                          (let ((_lp-hd187746187802_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187745187798_)))
                                (_lp-tl187747187805_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187745187798_))))
                            (_loop187744187788_
                             _lp-tl187747187805_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187746187802_
                                     _clause187748187795_)))))
                        (let ((_clause187749187808_
                               (reverse _clause187748187795_)))
                          ((lambda (_L187812_ _L187814_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187814_))
                                 (let* ((_g187833187850_
                                         (lambda (_g187834187846_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187834187846_))))
                                        (_g187832187911_
                                         (lambda (_g187834187854_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187834187854_))
                                               (let ((_g192807_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187834187854_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192808_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192807_)
                        (##vector-length _g192807_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192808_ 2)))
                 (error "Context expects 2 values" _g192808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187836187857_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192807_
                                                             0)))
                                                         (_tl187838187860_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192807_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187838187860_))
                                                         (letrec ((_loop187839187863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187837187867_ _clause187843187870_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187837187867_))
                                 (let ((_e187840187873_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187837187867_))))
                                   (let ((_lp-hd187841187877_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187840187873_)))
                                         (_lp-tl187842187880_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187840187873_))))
                                     (_loop187839187863_
                                      _lp-tl187842187880_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187841187877_
                                              _clause187843187870_)))))
                                 (let ((_clause187844187883_
                                        (reverse _clause187843187870_)))
                                   ((lambda (_L187887_)
                                      (let ()
                                        (let ((__tmp192820
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192809
                                               (let ((__tmp192818
                                                      (let ((__tmp192819
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192819 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192810
                                                      (let ((__tmp192811
                                                             (let ((__tmp192817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192812
                            (let ((__tmp192816
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192813
                                   (let ((__tmp192814
                                          (let ((__tmp192815
                                                 (lambda (_g187902187905_
                                                          _g187903187908_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187902187905_
                                                           _g187903187908_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192815
                                                    '()
                                                    _L187887_))))
                                     (declare (not safe))
                                     (cons _L187814_ __tmp192814))))
                              (declare (not safe))
                              (cons __tmp192816 __tmp192813))))
                       (declare (not safe))
                       (cons __tmp192817 __tmp192812))))
                (declare (not safe))
                (cons __tmp192811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192818
                                                       __tmp192810))))
                                          (declare (not safe))
                                          (cons __tmp192820 __tmp192809))))
                                    _clause187844187883_))))))
                   (_loop187839187863_ _target187836187857_ '()))
                 (_g187833187850_ _g187834187854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187833187850_
                                                _g187834187854_)))))
                                   (_g187832187911_
                                    (let ((__tmp192823
                                           (lambda (_clause187915_)
                                             (let* ((___stx192752192753_
                                                     _clause187915_)
                                                    (_g187919187946_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192752192753_)))))
                                               (let ((___kont192755192756_
                                                      (lambda (_L188031_
                                                               _L188033_)
                                                        (let ((__tmp192824
                                                               (let ((__tmp192825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192827
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192826
                                     (let ()
                                       (declare (not safe))
                                       (cons _L188031_ '()))))
                                (declare (not safe))
                                (cons __tmp192827 __tmp192826))))
                         (declare (not safe))
                         (cons __tmp192825 '()))))
                  (declare (not safe))
                  (cons _L188033_ __tmp192824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192757192758_
                                                      (lambda (_L187983_
                                                               _L187985_
                                                               _L187986_)
                                                        (let ((__tmp192828
                                                               (let ((__tmp192829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192830
                                     (let ((__tmp192832
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192831
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187983_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192832 __tmp192831))))
                                (declare (not safe))
                                (cons __tmp192830 '()))))
                         (declare (not safe))
                         (cons _L187985_ __tmp192829))))
                  (declare (not safe))
                  (cons _L187986_ __tmp192828)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192752192753_))
                                                     (let ((_e187925188011_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192752192753_))))
                                                       (let ((_tl187923188018_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187925188011_)))
                     (_hd187924188015_
                      (let () (declare (not safe)) (##car _e187925188011_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187923188018_))
                     (let ((_e187928188021_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187923188018_))))
                       (let ((_tl187926188028_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187928188021_)))
                             (_hd187927188025_
                              (let ()
                                (declare (not safe))
                                (##car _e187928188021_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187926188028_))
                             (___kont192755192756_
                              _hd187927188025_
                              _hd187924188015_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187926188028_))
                                 (let ((_e187940187973_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187926188028_))))
                                   (let ((_tl187938187980_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187940187973_)))
                                         (_hd187939187977_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187940187973_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187938187980_))
                                         (___kont192757192758_
                                          _hd187939187977_
                                          _hd187927188025_
                                          _hd187924188015_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187919187946_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187919187946_))))))
                     (let () (declare (not safe)) (_g187919187946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187919187946_)))))))
                                          (__tmp192821
                                           (let ((__tmp192822
                                                  (lambda (_g188049188052_
                                                           _g188050188055_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g188049188052_
                                                            _g188050188055_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192822
                                                     '()
                                                     _L187812_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192823 __tmp192821))))
                                 (_g187731187755_ _g187732187759_)))
                           _clause187749187808_
                           _hd187739187776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187744187788_
                                                   _target187741187782_
                                                   '()))
                                                (_g187731187755_
                                                 _g187732187759_)))))
                                      (_g187731187755_ _g187732187759_))))
                              (_g187731187755_ _g187732187759_))))
                      (_g187731187755_ _g187732187759_)))))
          (_g187730188058_ _stx187728_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192795
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
           __obj192795
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192833 |gxc[1]#_g192834_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192833
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192835 |gxc[1]#_g192836_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192835
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192837 |gxc[1]#_g192838_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192837
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192839
               (let ((__tmp192844
                      (let ((__tmp192845 |gxc[1]#_g192846_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192845)))
                     (__tmp192840
                      (let ((__tmp192841
                             (let ((__tmp192842 |gxc[1]#_g192843_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192842))))
                        (declare (not safe))
                        (cons __tmp192841 '()))))
                 (declare (not safe))
                 (cons __tmp192844 __tmp192840))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192839
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192847
               (let ((__tmp192852
                      (let ((__tmp192853 |gxc[1]#_g192854_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192853)))
                     (__tmp192848
                      (let ((__tmp192849
                             (let ((__tmp192850 |gxc[1]#_g192851_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192850))))
                        (declare (not safe))
                        (cons __tmp192849 '()))))
                 (declare (not safe))
                 (cons __tmp192852 __tmp192848))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192847
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192855
               (let ((__tmp192860
                      (let ((__tmp192861 |gxc[1]#_g192862_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192861)))
                     (__tmp192856
                      (let ((__tmp192857
                             (let ((__tmp192858 |gxc[1]#_g192859_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192858))))
                        (declare (not safe))
                        (cons __tmp192857 '()))))
                 (declare (not safe))
                 (cons __tmp192860 __tmp192856))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192855
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192863
               (let ((__tmp192868
                      (let ((__tmp192869 |gxc[1]#_g192870_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192869)))
                     (__tmp192864
                      (let ((__tmp192865
                             (let ((__tmp192866 |gxc[1]#_g192867_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192866))))
                        (declare (not safe))
                        (cons __tmp192865 '()))))
                 (declare (not safe))
                 (cons __tmp192868 __tmp192864))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192795
           __tmp192863
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192795))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx188064_)
        (let* ((_g188068188082_
                (lambda (_g188069188078_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g188069188078_))))
               (_g188067188123_
                (lambda (_g188069188086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g188069188086_))
                      (let ((_e188073188089_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g188069188086_))))
                        (let ((_hd188072188093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e188073188089_)))
                              (_tl188071188096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e188073188089_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl188071188096_))
                              (let ((_e188076188099_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl188071188096_))))
                                (let ((_hd188075188103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e188076188099_)))
                                      (_tl188074188106_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e188076188099_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl188074188106_))
                                      ((lambda (_L188109_)
                                         (let ((__tmp192878
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192871
                                                (let ((__tmp192877
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192872
                                                       (let ((__tmp192873
                                                              (let ((__tmp192876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192874
                             (let ((__tmp192875
                                    (let ()
                                      (declare (not safe))
                                      (cons _L188109_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192875))))
                        (declare (not safe))
                        (cons __tmp192876 __tmp192874))))
                 (declare (not safe))
                 (cons __tmp192873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192877
                                                        __tmp192872))))
                                           (declare (not safe))
                                           (cons __tmp192878 __tmp192871)))
                                       _hd188075188103_)
                                      (_g188068188082_ _g188069188086_))))
                              (_g188068188082_ _g188069188086_))))
                      (_g188068188082_ _g188069188086_)))))
          (_g188067188123_ _$stx188064_))))))
