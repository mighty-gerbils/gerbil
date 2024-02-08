(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g185833_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185835_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185837_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185842_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185845_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185850_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185853_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185858_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185861_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185866_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185869_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx180998_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180998_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx181001_)
        (let* ((_g181004181028_
                (lambda (_g181005181024_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g181005181024_))))
               (_g181003181331_
                (lambda (_g181005181032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g181005181032_))
                      (let ((_e181010181035_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g181005181032_))))
                        (let ((_hd181009181039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181010181035_)))
                              (_tl181008181042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181010181035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl181008181042_))
                              (let ((_e181013181045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl181008181042_))))
                                (let ((_hd181012181049_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e181013181045_)))
                                      (_tl181011181052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e181013181045_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl181011181052_))
                                      (let ((_g185804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl181011181052_
                                                '0))))
                                        (begin
                                          (let ((_g185805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185804_)
                                                       (##vector-length
                                                        _g185804_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185805_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185805_)))
                                          (let ((_target181014181055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185804_ 0)))
                                                (_tl181016181058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185804_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl181016181058_))
                                                (letrec ((_loop181017181061_
                                                          (lambda (_hd181015181065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause181021181068_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd181015181065_))
                        (let ((_e181018181071_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd181015181065_))))
                          (let ((_lp-hd181019181075_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181018181071_)))
                                (_lp-tl181020181078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181018181071_))))
                            (_loop181017181061_
                             _lp-tl181020181078_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd181019181075_
                                     _clause181021181068_)))))
                        (let ((_clause181022181081_
                               (reverse _clause181021181068_)))
                          ((lambda (_L181085_ _L181087_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L181087_))
                                 (let* ((_g181106181123_
                                         (lambda (_g181107181119_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g181107181119_))))
                                        (_g181105181184_
                                         (lambda (_g181107181127_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g181107181127_))
                                               (let ((_g185806_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g181107181127_
                                                         '0))))
                                                 (begin
                                                   (let ((_g185807_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g185806_)
                        (##vector-length _g185806_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g185807_ 2)))
                 (error "Context expects 2 values" _g185807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target181109181130_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185806_
                                                             0)))
                                                         (_tl181111181133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185806_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl181111181133_))
                                                         (letrec ((_loop181112181136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd181110181140_ _clause181116181143_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd181110181140_))
                                 (let ((_e181113181146_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd181110181140_))))
                                   (let ((_lp-hd181114181150_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181113181146_)))
                                         (_lp-tl181115181153_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181113181146_))))
                                     (_loop181112181136_
                                      _lp-tl181115181153_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd181114181150_
                                              _clause181116181143_)))))
                                 (let ((_clause181117181156_
                                        (reverse _clause181116181143_)))
                                   ((lambda (_L181160_)
                                      (let ()
                                        (let ((__tmp185819
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp185808
                                               (let ((__tmp185817
                                                      (let ((__tmp185818
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp185818 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp185809
                                                      (let ((__tmp185810
                                                             (let ((__tmp185816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp185811
                            (let ((__tmp185815
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp185812
                                   (let ((__tmp185813
                                          (let ((__tmp185814
                                                 (lambda (_g181175181178_
                                                          _g181176181181_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g181175181178_
                                                           _g181176181181_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp185814
                                                    '()
                                                    _L181160_))))
                                     (declare (not safe))
                                     (cons _L181087_ __tmp185813))))
                              (declare (not safe))
                              (cons __tmp185815 __tmp185812))))
                       (declare (not safe))
                       (cons __tmp185816 __tmp185811))))
                (declare (not safe))
                (cons __tmp185810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp185817
                                                       __tmp185809))))
                                          (declare (not safe))
                                          (cons __tmp185819 __tmp185808))))
                                    _clause181117181156_))))))
                   (_loop181112181136_ _target181109181130_ '()))
                 (_g181106181123_ _g181107181127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g181106181123_
                                                _g181107181127_)))))
                                   (_g181105181184_
                                    (let ((__tmp185822
                                           (lambda (_clause181188_)
                                             (let* ((___stx185751185752_
                                                     _clause181188_)
                                                    (_g181192181219_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx185751185752_)))))
                                               (let ((___kont185754185755_
                                                      (lambda (_L181304_
                                                               _L181306_)
                                                        (let ((__tmp185823
                                                               (let ((__tmp185824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185826
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp185825
                                     (let ()
                                       (declare (not safe))
                                       (cons _L181304_ '()))))
                                (declare (not safe))
                                (cons __tmp185826 __tmp185825))))
                         (declare (not safe))
                         (cons __tmp185824 '()))))
                  (declare (not safe))
                  (cons _L181306_ __tmp185823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont185756185757_
                                                      (lambda (_L181256_
                                                               _L181258_
                                                               _L181259_)
                                                        (let ((__tmp185827
                                                               (let ((__tmp185828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185829
                                     (let ((__tmp185831
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp185830
                                            (let ()
                                              (declare (not safe))
                                              (cons _L181256_ '()))))
                                       (declare (not safe))
                                       (cons __tmp185831 __tmp185830))))
                                (declare (not safe))
                                (cons __tmp185829 '()))))
                         (declare (not safe))
                         (cons _L181258_ __tmp185828))))
                  (declare (not safe))
                  (cons _L181259_ __tmp185827)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx185751185752_))
                                                     (let ((_e181198181284_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx185751185752_))))
                                                       (let ((_tl181196181291_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e181198181284_)))
                     (_hd181197181288_
                      (let () (declare (not safe)) (##car _e181198181284_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl181196181291_))
                     (let ((_e181201181294_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl181196181291_))))
                       (let ((_tl181199181301_
                              (let ()
                                (declare (not safe))
                                (##cdr _e181201181294_)))
                             (_hd181200181298_
                              (let ()
                                (declare (not safe))
                                (##car _e181201181294_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl181199181301_))
                             (___kont185754185755_
                              _hd181200181298_
                              _hd181197181288_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl181199181301_))
                                 (let ((_e181213181246_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl181199181301_))))
                                   (let ((_tl181211181253_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181213181246_)))
                                         (_hd181212181250_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181213181246_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl181211181253_))
                                         (___kont185756185757_
                                          _hd181212181250_
                                          _hd181200181298_
                                          _hd181197181288_)
                                         (let ()
                                           (declare (not safe))
                                           (_g181192181219_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g181192181219_))))))
                     (let () (declare (not safe)) (_g181192181219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g181192181219_)))))))
                                          (__tmp185820
                                           (let ((__tmp185821
                                                  (lambda (_g181322181325_
                                                           _g181323181328_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g181322181325_
                                                            _g181323181328_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp185821
                                                     '()
                                                     _L181085_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp185822 __tmp185820))))
                                 (_g181004181028_ _g181005181032_)))
                           _clause181022181081_
                           _hd181012181049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop181017181061_
                                                   _target181014181055_
                                                   '()))
                                                (_g181004181028_
                                                 _g181005181032_)))))
                                      (_g181004181028_ _g181005181032_))))
                              (_g181004181028_ _g181005181032_))))
                      (_g181004181028_ _g181005181032_)))))
          (_g181003181331_ _stx181001_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj185794
             (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185832 |gxc[1]#_g185833_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185832
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185834 |gxc[1]#_g185835_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185834
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185836 |gxc[1]#_g185837_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185836
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185838
               (let ((__tmp185843
                      (let ((__tmp185844 |gxc[1]#_g185845_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185844)))
                     (__tmp185839
                      (let ((__tmp185840
                             (let ((__tmp185841 |gxc[1]#_g185842_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185841))))
                        (declare (not safe))
                        (cons __tmp185840 '()))))
                 (declare (not safe))
                 (cons __tmp185843 __tmp185839))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185838
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185846
               (let ((__tmp185851
                      (let ((__tmp185852 |gxc[1]#_g185853_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185852)))
                     (__tmp185847
                      (let ((__tmp185848
                             (let ((__tmp185849 |gxc[1]#_g185850_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185849))))
                        (declare (not safe))
                        (cons __tmp185848 '()))))
                 (declare (not safe))
                 (cons __tmp185851 __tmp185847))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185846
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185854
               (let ((__tmp185859
                      (let ((__tmp185860 |gxc[1]#_g185861_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185860)))
                     (__tmp185855
                      (let ((__tmp185856
                             (let ((__tmp185857 |gxc[1]#_g185858_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185857))))
                        (declare (not safe))
                        (cons __tmp185856 '()))))
                 (declare (not safe))
                 (cons __tmp185859 __tmp185855))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185854
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185862
               (let ((__tmp185867
                      (let ((__tmp185868 |gxc[1]#_g185869_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185868)))
                     (__tmp185863
                      (let ((__tmp185864
                             (let ((__tmp185865 |gxc[1]#_g185866_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185865))))
                        (declare (not safe))
                        (cons __tmp185864 '()))))
                 (declare (not safe))
                 (cons __tmp185867 __tmp185863))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185794
           __tmp185862
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj185794))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx181337_)
        (let* ((_g181341181355_
                (lambda (_g181342181351_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g181342181351_))))
               (_g181340181396_
                (lambda (_g181342181359_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g181342181359_))
                      (let ((_e181346181362_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g181342181359_))))
                        (let ((_hd181345181366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181346181362_)))
                              (_tl181344181369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181346181362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl181344181369_))
                              (let ((_e181349181372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl181344181369_))))
                                (let ((_hd181348181376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e181349181372_)))
                                      (_tl181347181379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e181349181372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl181347181379_))
                                      ((lambda (_L181382_)
                                         (let ((__tmp185877
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp185870
                                                (let ((__tmp185876
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp185871
                                                       (let ((__tmp185872
                                                              (let ((__tmp185875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp185873
                             (let ((__tmp185874
                                    (let ()
                                      (declare (not safe))
                                      (cons _L181382_ '()))))
                               (declare (not safe))
                               (cons '() __tmp185874))))
                        (declare (not safe))
                        (cons __tmp185875 __tmp185873))))
                 (declare (not safe))
                 (cons __tmp185872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp185876
                                                        __tmp185871))))
                                           (declare (not safe))
                                           (cons __tmp185877 __tmp185870)))
                                       _hd181348181376_)
                                      (_g181341181355_ _g181342181359_))))
                              (_g181341181355_ _g181342181359_))))
                      (_g181341181355_ _g181342181359_)))))
          (_g181340181396_ _$stx181337_))))))
