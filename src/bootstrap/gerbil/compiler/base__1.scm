(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192798_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192800_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192802_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192807_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192810_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192815_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192818_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192823_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192826_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192831_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192834_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx187689_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187689_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx187692_)
        (let* ((_g187695187719_
                (lambda (_g187696187715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g187696187715_))))
               (_g187694188022_
                (lambda (_g187696187723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g187696187723_))
                      (let ((_e187701187726_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g187696187723_))))
                        (let ((_hd187700187730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187701187726_)))
                              (_tl187699187733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187701187726_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl187699187733_))
                              (let ((_e187704187736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl187699187733_))))
                                (let ((_hd187703187740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e187704187736_)))
                                      (_tl187702187743_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e187704187736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl187702187743_))
                                      (let ((_g192769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl187702187743_
                                                '0))))
                                        (begin
                                          (let ((_g192770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192769_)
                                                       (##vector-length
                                                        _g192769_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192770_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192770_)))
                                          (let ((_target187705187746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192769_ 0)))
                                                (_tl187707187749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192769_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl187707187749_))
                                                (letrec ((_loop187708187752_
                                                          (lambda (_hd187706187756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause187712187759_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd187706187756_))
                        (let ((_e187709187762_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd187706187756_))))
                          (let ((_lp-hd187710187766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187709187762_)))
                                (_lp-tl187711187769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187709187762_))))
                            (_loop187708187752_
                             _lp-tl187711187769_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd187710187766_
                                     _clause187712187759_)))))
                        (let ((_clause187713187772_
                               (reverse _clause187712187759_)))
                          ((lambda (_L187776_ _L187778_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L187778_))
                                 (let* ((_g187797187814_
                                         (lambda (_g187798187810_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g187798187810_))))
                                        (_g187796187875_
                                         (lambda (_g187798187818_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g187798187818_))
                                               (let ((_g192771_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g187798187818_
                                                         '0))))
                                                 (begin
                                                   (let ((_g192772_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g192771_)
                        (##vector-length _g192771_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g192772_ 2)))
                 (error "Context expects 2 values" _g192772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target187800187821_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192771_
                                                             0)))
                                                         (_tl187802187824_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g192771_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl187802187824_))
                                                         (letrec ((_loop187803187827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd187801187831_ _clause187807187834_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd187801187831_))
                                 (let ((_e187804187837_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd187801187831_))))
                                   (let ((_lp-hd187805187841_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187804187837_)))
                                         (_lp-tl187806187844_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187804187837_))))
                                     (_loop187803187827_
                                      _lp-tl187806187844_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd187805187841_
                                              _clause187807187834_)))))
                                 (let ((_clause187808187847_
                                        (reverse _clause187807187834_)))
                                   ((lambda (_L187851_)
                                      (let ()
                                        (let ((__tmp192784
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp192773
                                               (let ((__tmp192782
                                                      (let ((__tmp192783
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp192783 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp192774
                                                      (let ((__tmp192775
                                                             (let ((__tmp192781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp192776
                            (let ((__tmp192780
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp192777
                                   (let ((__tmp192778
                                          (let ((__tmp192779
                                                 (lambda (_g187866187869_
                                                          _g187867187872_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g187866187869_
                                                           _g187867187872_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp192779
                                                    '()
                                                    _L187851_))))
                                     (declare (not safe))
                                     (cons _L187778_ __tmp192778))))
                              (declare (not safe))
                              (cons __tmp192780 __tmp192777))))
                       (declare (not safe))
                       (cons __tmp192781 __tmp192776))))
                (declare (not safe))
                (cons __tmp192775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp192782
                                                       __tmp192774))))
                                          (declare (not safe))
                                          (cons __tmp192784 __tmp192773))))
                                    _clause187808187847_))))))
                   (_loop187803187827_ _target187800187821_ '()))
                 (_g187797187814_ _g187798187818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g187797187814_
                                                _g187798187818_)))))
                                   (_g187796187875_
                                    (let ((__tmp192787
                                           (lambda (_clause187879_)
                                             (let* ((___stx192716192717_
                                                     _clause187879_)
                                                    (_g187883187910_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx192716192717_)))))
                                               (let ((___kont192719192720_
                                                      (lambda (_L187995_
                                                               _L187997_)
                                                        (let ((__tmp192788
                                                               (let ((__tmp192789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192791
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp192790
                                     (let ()
                                       (declare (not safe))
                                       (cons _L187995_ '()))))
                                (declare (not safe))
                                (cons __tmp192791 __tmp192790))))
                         (declare (not safe))
                         (cons __tmp192789 '()))))
                  (declare (not safe))
                  (cons _L187997_ __tmp192788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont192721192722_
                                                      (lambda (_L187947_
                                                               _L187949_
                                                               _L187950_)
                                                        (let ((__tmp192792
                                                               (let ((__tmp192793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp192794
                                     (let ((__tmp192796
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp192795
                                            (let ()
                                              (declare (not safe))
                                              (cons _L187947_ '()))))
                                       (declare (not safe))
                                       (cons __tmp192796 __tmp192795))))
                                (declare (not safe))
                                (cons __tmp192794 '()))))
                         (declare (not safe))
                         (cons _L187949_ __tmp192793))))
                  (declare (not safe))
                  (cons _L187950_ __tmp192792)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx192716192717_))
                                                     (let ((_e187889187975_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx192716192717_))))
                                                       (let ((_tl187887187982_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e187889187975_)))
                     (_hd187888187979_
                      (let () (declare (not safe)) (##car _e187889187975_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl187887187982_))
                     (let ((_e187892187985_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl187887187982_))))
                       (let ((_tl187890187992_
                              (let ()
                                (declare (not safe))
                                (##cdr _e187892187985_)))
                             (_hd187891187989_
                              (let ()
                                (declare (not safe))
                                (##car _e187892187985_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl187890187992_))
                             (___kont192719192720_
                              _hd187891187989_
                              _hd187888187979_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl187890187992_))
                                 (let ((_e187904187937_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl187890187992_))))
                                   (let ((_tl187902187944_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e187904187937_)))
                                         (_hd187903187941_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e187904187937_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl187902187944_))
                                         (___kont192721192722_
                                          _hd187903187941_
                                          _hd187891187989_
                                          _hd187888187979_)
                                         (let ()
                                           (declare (not safe))
                                           (_g187883187910_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g187883187910_))))))
                     (let () (declare (not safe)) (_g187883187910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g187883187910_)))))))
                                          (__tmp192785
                                           (let ((__tmp192786
                                                  (lambda (_g188013188016_
                                                           _g188014188019_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g188013188016_
                                                            _g188014188019_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp192786
                                                     '()
                                                     _L187776_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp192787 __tmp192785))))
                                 (_g187695187719_ _g187696187723_)))
                           _clause187713187772_
                           _hd187703187740_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop187708187752_
                                                   _target187705187746_
                                                   '()))
                                                (_g187695187719_
                                                 _g187696187723_)))))
                                      (_g187695187719_ _g187696187723_))))
                              (_g187695187719_ _g187696187723_))))
                      (_g187695187719_ _g187696187723_)))))
          (_g187694188022_ _stx187692_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192759
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
           __obj192759
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192797 |gxc[1]#_g192798_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192797
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192799 |gxc[1]#_g192800_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192799
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192801 |gxc[1]#_g192802_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192801
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192803
               (let ((__tmp192808
                      (let ((__tmp192809 |gxc[1]#_g192810_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192809)))
                     (__tmp192804
                      (let ((__tmp192805
                             (let ((__tmp192806 |gxc[1]#_g192807_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192806))))
                        (declare (not safe))
                        (cons __tmp192805 '()))))
                 (declare (not safe))
                 (cons __tmp192808 __tmp192804))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192803
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192811
               (let ((__tmp192816
                      (let ((__tmp192817 |gxc[1]#_g192818_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192817)))
                     (__tmp192812
                      (let ((__tmp192813
                             (let ((__tmp192814 |gxc[1]#_g192815_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192814))))
                        (declare (not safe))
                        (cons __tmp192813 '()))))
                 (declare (not safe))
                 (cons __tmp192816 __tmp192812))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192811
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192819
               (let ((__tmp192824
                      (let ((__tmp192825 |gxc[1]#_g192826_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192825)))
                     (__tmp192820
                      (let ((__tmp192821
                             (let ((__tmp192822 |gxc[1]#_g192823_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192822))))
                        (declare (not safe))
                        (cons __tmp192821 '()))))
                 (declare (not safe))
                 (cons __tmp192824 __tmp192820))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192819
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp192827
               (let ((__tmp192832
                      (let ((__tmp192833 |gxc[1]#_g192834_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp192833)))
                     (__tmp192828
                      (let ((__tmp192829
                             (let ((__tmp192830 |gxc[1]#_g192831_|))
                               (declare (not safe))
                               (cons 'bindings __tmp192830))))
                        (declare (not safe))
                        (cons __tmp192829 '()))))
                 (declare (not safe))
                 (cons __tmp192832 __tmp192828))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192759
           __tmp192827
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj192759))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx188028_)
        (let* ((_g188032188046_
                (lambda (_g188033188042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g188033188042_))))
               (_g188031188087_
                (lambda (_g188033188050_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g188033188050_))
                      (let ((_e188037188053_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g188033188050_))))
                        (let ((_hd188036188057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e188037188053_)))
                              (_tl188035188060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e188037188053_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl188035188060_))
                              (let ((_e188040188063_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl188035188060_))))
                                (let ((_hd188039188067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e188040188063_)))
                                      (_tl188038188070_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e188040188063_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl188038188070_))
                                      ((lambda (_L188073_)
                                         (let ((__tmp192842
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp192835
                                                (let ((__tmp192841
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp192836
                                                       (let ((__tmp192837
                                                              (let ((__tmp192840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp192838
                             (let ((__tmp192839
                                    (let ()
                                      (declare (not safe))
                                      (cons _L188073_ '()))))
                               (declare (not safe))
                               (cons '() __tmp192839))))
                        (declare (not safe))
                        (cons __tmp192840 __tmp192838))))
                 (declare (not safe))
                 (cons __tmp192837 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192841
                                                        __tmp192836))))
                                           (declare (not safe))
                                           (cons __tmp192842 __tmp192835)))
                                       _hd188039188067_)
                                      (_g188032188046_ _g188033188050_))))
                              (_g188032188046_ _g188033188050_))))
                      (_g188032188046_ _g188033188050_)))))
          (_g188031188087_ _$stx188028_))))))
